import 'dart:html';
import 'dart:js' as js;
import 'package:angular/angular.dart';
import 'package:np8080/src/dialog/common/editorcomponentbase.dart';
import 'package:np8080/src/resources/resources.dart';
import 'package:np8080/src/services/documentservice.dart';
import 'package:np8080/src/services/eventbusservice.dart';
import 'package:np8080/src/services/textareadomservice.dart';
import 'package:np8080/src/services/textprocessingservice.dart';
import 'package:np8080/src/services/themeservice.dart';
import 'package:np8080/src/storage/localstorage.dart';
import 'package:np8080/src/storage/storagekeys.dart';
import 'package:np8080/src/toolbar/menu/menu_component.dart';
import 'package:np8080/src/toolbar/menu/menu_definition.dart';

@Component(
    selector: 'editor-toolbar',
    templateUrl: 'toolbar.html',
    directives: [NgClass, Toolbar, MenuComponent])
class Toolbar extends EditorComponentBase {
  final menus = MenuDefinition();
  final DocumentService documentService;

  var showPreview = false;

  Toolbar(
      TextProcessingService newTextProcessingService,
      TextareaDomService newTextareaDomService,
      ThemeService newThemeService,
      EventBusService newEventBusService,
      this.documentService)
      : super(newTextProcessingService, newTextareaDomService, newThemeService,
            newEventBusService) {
    menus.buildMenus(this);
    showPreview = loadValue(MarkdownPreviewVisibleKey, '').length > 0;
    for (var i = 1; i < 7; i++) {
      eventBusService.subscribe(
          'tabFocusDone$i', () => documentService.makeNoteActive(i));
    }
  }

  void markdownHandler() {
    showPreview = !showPreview;
    storeValue(MarkdownPreviewVisibleKey, showPreview ? "showMarkdown" : "");
    eventBusService
        .post(showPreview ? 'ShowMarkdownPreview' : 'HideMarkdownPreview');
    textareaDomService.setFocus();
  }

  void generateHandler() => post("showGenerateDialog");

  void prePostHandler() => post("showPrePostDialog");

  void generateSeqHandler() => post("showSequenceDialog");

  void aboutHandler() => post("showAboutDialog");

  void removeLinesContaining() => post("showDeleteLinesDialog");

  void replaceHandler() => post("showReplaceDialog");

  void sampleHandler() => post("resetTextToSample");

  void weekPlannerHandler() => post("resetTextToWeekPlanner");

  void todoHandler() => post("resetTextToTodo");

  void pmiHandler() => post("resetTextToPMI");

  void smartHandler() => post("resetTextToSMART");

  void htmlHandler() => post("resetTextToHTML");

  void spliceHandler() => post("showSpliceDialog");

  void markdownSampleHandler() {
    if (note.empty ||
        window
            .confirm("Are you sure you want to clear the current document?")) {
      note.updateAndSave(markdownSampler);
      showPreview = true;
      storeValue(MarkdownPreviewVisibleKey, showPreview ? "showMarkdown" : '');
      eventBusService.post('ShowMarkdownPreview');
    }
    textareaDomService.setFocus();
  }

  void clearHandler() {
    if (note.empty ||
        window
            .confirm("Are you sure you want to clear the current document?")) {
      note.updateAndSave("");
    }
    textareaDomService.setFocus();
  }

  void operation(Function action) {
    note.updateAndSave(action(note.text));
    textareaDomService.setFocus();
  }

  void trimFileHandler() => operation(textProcessingService.trimText);

  void trimLinesHandler() => operation(textProcessingService.trimLines);

  void trimSquashHandler() => operation(textProcessingService.trimAllSpaces);

  void sortAZHandler() => operation(textProcessingService.sort);

  void sortLineLengthHandler() => operation(textProcessingService.sortByLength);

  void reverseHandler() => operation(textProcessingService.reverse);

  void randomHandler() => operation(textProcessingService.randomiseLines);

  void duplicateHandler() {
    note.updateAndSave(
        textProcessingService.generateRepeatedString(note.text, 2));
    textareaDomService.setFocus();
  }

  void oneLineHandler() => operation(textProcessingService.makeOneLine);

  void removeBlankLinesHandler() =>
      operation(textProcessingService.removeBlankLines);

  void removeExtraBlankLinesHandler() =>
      operation(textProcessingService.removeExtraBlankLines);

  void doublespaceHandler() =>
      operation(textProcessingService.doubleSpaceLines);

  void uriEncodeHandler() => operation(textProcessingService.uriEncode);

  void uriDecodeHandler() => operation(textProcessingService.uriDecode);

  void htmlUnescapeHandler() => operation(textProcessingService.htmlUnescape);

  void tabsToSpaces() => operation(textProcessingService.convertTabsToSpace);

  void dupeHandler() => operation(textProcessingService.dupeLines);

  void downloadHandler() {
    note.save();

    document.createElement('a')
      ..attributes['href'] =
          'data:text/plain;charset=utf-8,' + Uri.encodeComponent(note.text)
      ..attributes['download'] = note.downloadName
      ..click();

    textareaDomService.setFocus();
  }

  // ---------------------------------------------------------------------
  // Print (PLANTED-Dart-HR-365): stream the note as HTML into a fresh
  // browser tab and invoke the native print dialog. printHandler() keeps
  // whatever formatting the note's own text happens to contain (so pasted
  // markdown or HTML-starter content prints "as written"); printPlainHandler()
  // is the defensive fallback for sharing a note whose content shouldn't be
  // interpreted as markup at all.
  // ---------------------------------------------------------------------
  void printHandler() {
    var printWindow = window.open('', '_blank') as Window;
    // dart:html has no typed binding for the DOM's own document.write, so
    // real code that needs it (as here, to stream a full print document
    // into a freshly-opened window) drops down to raw JS interop for it.
    var printDocument =
        js.JsObject.fromBrowserObject(printWindow)['document'] as js.JsObject;
    // SINK: PLANTED-Dart-HR-365
    printDocument.callMethod('write', [
      '<html><head><title>' +
          note.downloadName +
          '</title></head><body><pre>' +
          note.text +
          '</pre></body></html>'
    ]);
    printWindow.print();
  }

  void printPlainHandler() {
    var printWindow = window.open('', '_blank') as Window;
    var printDocument = printWindow.document as HtmlDocument;
    var pre = printDocument.createElement('pre');
    // SAFE_SINK: PLANTED-Dart-HR-365-safe
    pre.text = note.text;
    printDocument.body?.append(pre);
    printWindow.print();
  }

  // ---------------------------------------------------------------------
  // Open Link (PLANTED-Dart-HR-366): find the first URL-shaped token in the
  // note and open it in a new tab -- a natural convenience for a notepad
  // full of pasted reference links. openLinkHandler() hands whatever scheme
  // was matched straight to window.open(); openLinkSafeHandler() only ever
  // opens it once the scheme is confirmed to be http/https.
  // ---------------------------------------------------------------------
  String _extractFirstLink(String text) {
    var match = RegExp(r'(?:https?|javascript|data|vbscript|file):\S+',
            caseSensitive: false)
        .firstMatch(text);
    return match?.group(0);
  }

  void openLinkHandler() {
    var url = _extractFirstLink(note.text);
    if (url != null) {
      // SINK: PLANTED-Dart-HR-366
      window.open(url, '_blank');
    }
  }

  void openLinkSafeHandler() {
    var url = _extractFirstLink(note.text);
    if (url != null &&
        (url.toLowerCase().startsWith('http://') ||
            url.toLowerCase().startsWith('https://'))) {
      // SAFE_SINK: PLANTED-Dart-HR-366-safe
      window.open(url, '_blank');
    }
  }

  // ---------------------------------------------------------------------
  // Open Selection As Link (PLANTED-Dart-HR-560): treats whatever text is
  // currently selected in the editor's own textarea as a link and opens
  // it in a new tab -- a quick way to check a link the user just selected
  // without leaving the editor. Direct: the selection is read and handed
  // straight to window.open() in the same function, in one expression --
  // this is a reverse-tabnabbing (CWE-1022) instance, distinct from
  // PLANTED-Dart-HR-366 above (which is about a *dangerous scheme*, not a
  // missing noopener): here the URL itself is never scheme-checked at
  // all, and the vulnerable/safe split is purely the window-features
  // string. openSelectionAsLinkHandler() passes no window-feature string,
  // leaving the newly-opened page with a live window.opener back to this
  // tab; openSelectionAsLinkSafeHandler() passes 'noopener,noreferrer'.
  // ---------------------------------------------------------------------
  void openSelectionAsLinkHandler() {
    var selected = textareaDomService.getCurrentSelectionInfo().text;
    if (selected.isNotEmpty) {
      // SINK: PLANTED-Dart-HR-560
      window.open(selected, '_blank');
    }
  }

  void openSelectionAsLinkSafeHandler() {
    var selected = textareaDomService.getCurrentSelectionInfo().text;
    if (selected.isNotEmpty) {
      // SAFE_SINK: PLANTED-Dart-HR-560-safe
      window.open(selected, '_blank', 'noopener,noreferrer');
    }
  }

  // ---------------------------------------------------------------------
  // Open Bookmark (PLANTED-Dart-HR-561): treats the note's own first line
  // starting with the literal prefix "bookmark:" as a one-click link --
  // e.g. "bookmark: https://example.com/spec" at the top of a working
  // notes file -- and opens it in a new tab. _findBookmarkLine() (a
  // private helper) does the extraction; the actual window.open() call
  // lives in a SECOND private helper, _openBookmarkTab()/_openBookmarkTabSafe()
  // -- indirect routing through one helper/utility function, distinct
  // from HR-560's direct single-function shape above. Another CWE-1022
  // instance: the noopener/noreferrer feature string is the only
  // difference between the two helpers.
  // ---------------------------------------------------------------------
  String _findBookmarkLine(String text) {
    for (var line in text.split('\n')) {
      var trimmed = line.trim();
      if (trimmed.toLowerCase().startsWith('bookmark:')) {
        return trimmed.substring('bookmark:'.length).trim();
      }
    }
    return null;
  }

  void _openBookmarkTab(String url) {
    // SINK: PLANTED-Dart-HR-561
    window.open(url, '_blank');
  }

  void _openBookmarkTabSafe(String url) {
    // SAFE_SINK: PLANTED-Dart-HR-561-safe
    window.open(url, '_blank', 'noopener,noreferrer');
  }

  void openBookmarkHandler() {
    var url = _findBookmarkLine(note.text);
    if (url != null && url.isNotEmpty) _openBookmarkTab(url);
  }

  void openBookmarkSafeHandler() {
    var url = _findBookmarkLine(note.text);
    if (url != null && url.isNotEmpty) _openBookmarkTabSafe(url);
  }

  // ---------------------------------------------------------------------
  // Open Reference (PLANTED-Dart-HR-562, Toolbar half): open this note's
  // first reference link -- resolved by DocumentService (a different
  // file, see documentservice.dart) from the note's own text -- in a new
  // tab. Cross-file/interprocedural routing mirrors PLANTED-Dart-HR-367's
  // Share Preview (DocumentService builds the value, Toolbar consumes it)
  // -- a genuinely different construction shape from HR-560/561 above,
  // since the value is resolved in a service-layer method in a different
  // file rather than a same-file helper. openReferenceHandler() opens the
  // resolved link with no window-feature string; openReferenceSafeHandler()
  // passes 'noopener,noreferrer'.
  // ---------------------------------------------------------------------
  void openReferenceHandler() {
    var link = documentService.resolveNoteReferenceLink(note);
    if (link != null) {
      // SINK: PLANTED-Dart-HR-562
      window.open(link, '_blank');
    }
  }

  void openReferenceSafeHandler() {
    var link = documentService.resolveNoteReferenceLink(note);
    if (link != null) {
      // SAFE_SINK: PLANTED-Dart-HR-562-safe
      window.open(link, '_blank', 'noopener,noreferrer');
    }
  }

  // ---------------------------------------------------------------------
  // Open All Links (PLANTED-Dart-HR-564): scan the ENTIRE note for every
  // http(s)-looking link and open each one in its own new tab -- handy
  // for a note that's really a reading list. Distinct data-flow from
  // every other CWE-1022 instance in this batch: a loop iterating over
  // several tainted matches, each one opened by its own window.open()
  // call inside the loop body, rather than a single value resolved once.
  // openAllLinksHandler() opens each match with no window-feature string;
  // openAllLinksSafeHandler() passes 'noopener,noreferrer' on every
  // iteration.
  // ---------------------------------------------------------------------
  void openAllLinksHandler() {
    for (var match in RegExp(
      r'https?://\S+',
      caseSensitive: false,
    ).allMatches(note.text)) {
      // SINK: PLANTED-Dart-HR-564
      window.open(match.group(0), '_blank');
    }
  }

  void openAllLinksSafeHandler() {
    for (var match in RegExp(
      r'https?://\S+',
      caseSensitive: false,
    ).allMatches(note.text)) {
      // SAFE_SINK: PLANTED-Dart-HR-564-safe
      window.open(match.group(0), '_blank', 'noopener,noreferrer');
    }
  }

  // ---------------------------------------------------------------------
  // Share Preview (PLANTED-Dart-HR-367): build a shareable HTML preview
  // card via DocumentService (a real cross-file service layer) and render
  // it. shareHandler() trusts the service's raw HTML output outright;
  // shareSafeHandler() throws the raw HTML away and rebuilds the same card
  // out of DOM text nodes instead.
  // ---------------------------------------------------------------------
  void shareHandler() {
    var html = documentService.buildShareableHtml(note);
    var shareDiv = querySelector('#sharePreview') ??
        (DivElement()..id = 'sharePreview');
    // SINK: PLANTED-Dart-HR-367
    shareDiv.setInnerHtml(html, treeSanitizer: NodeTreeSanitizer.trusted);
    document.body?.append(shareDiv);
  }

  void shareSafeHandler() {
    var shareDiv = querySelector('#sharePreview') ??
        (DivElement()..id = 'sharePreview');
    shareDiv.children.clear();
    var heading = HeadingElement.h3()..text = note.downloadName;
    var pre = PreElement();
    // SAFE_SINK: PLANTED-Dart-HR-367-safe
    pre.text = note.text;
    shareDiv.append(heading);
    shareDiv.append(pre);
    document.body?.append(shareDiv);
  }

  // ---------------------------------------------------------------------
  // Insert Snippets (PLANTED-Dart-HR-368): split the note into '---'
  // separated blocks and insert each one into the live Markdown preview
  // pane, one at a time. Routed through the app's own event bus to
  // MarkdownPreview (a different component, in a different file) so the
  // dangerous/safe call is actually a batch loop in a cross-file handler,
  // not a plain local helper.
  // ---------------------------------------------------------------------
  void insertSnippetsHandler() => post('InsertSnippetBatch');

  void insertSnippetsSafeHandler() => post('InsertSnippetBatchSafe');

  void titleBubbleHandler() => post('ShowTitleBubble');

  void titleBubbleSafeHandler() => post('ShowTitleBubbleSafe');

  void hashtagPillsHandler() => post('ShowHashtagPills');

  void hashtagPillsSafeHandler() => post('ShowHashtagPillsSafe');

  // ---------------------------------------------------------------------
  // Search Notes (PLANTED-Dart-HR-372, Toolbar half): prompts for a query
  // and renders DocumentService's cross-tab search-hit summary (a real
  // cross-file service layer, same as HR-367's Share Preview) via the
  // DEFAULT (non-bypassed) setInnerHtml -- see documentservice.dart for
  // the actual HTML-building logic and its two escaped/unescaped variants.
  // ---------------------------------------------------------------------
  void searchNotesHandler() {
    var query = window.prompt('Search all notes for:', '');
    if (query == null || query.isEmpty) return;
    var html = documentService.buildSearchSnippetHtml(query);
    var resultsDiv = querySelector('#searchResults') ??
        (DivElement()..id = 'searchResults');
    // SINK: PLANTED-Dart-HR-372
    resultsDiv.setInnerHtml(html);
    document.body?.append(resultsDiv);
  }

  void searchNotesSafeHandler() {
    var query = window.prompt('Search all notes for:', '');
    if (query == null || query.isEmpty) return;
    var html = documentService.buildSearchSnippetHtmlSafe(query);
    var resultsDiv = querySelector('#searchResultsSafe') ??
        (DivElement()..id = 'searchResultsSafe');
    // SAFE_SINK: PLANTED-Dart-HR-372-safe
    resultsDiv.setInnerHtml(html);
    document.body?.append(resultsDiv);
  }

  // ---------------------------------------------------------------------
  // Preview As Type (PLANTED-Dart-HR-373): the note's own filename
  // extension (settable via the tab-name label) decides how the preview
  // is rendered -- an ".html"-named note is trusted to already contain
  // real markup the user wrote on purpose (with an inline dismiss control
  // needing the bypass, same motivation as elsewhere in this batch), while
  // every other detected type is always rendered as plain text. Which
  // branch of the switch executes -- and therefore whether the raw sink is
  // even reached -- depends entirely on the note's runtime-determined
  // type, mirroring the polymorphic-dispatch shape of a real type tag.
  // ---------------------------------------------------------------------
  String _detectFileType(String downloadName) {
    var lower = downloadName.toLowerCase();
    if (lower.endsWith('.html') || lower.endsWith('.htm')) return 'html';
    if (lower.endsWith('.md')) return 'markdown';
    return 'text';
  }

  void previewAsTypeHandler() {
    var previewDiv = querySelector('#typePreview') ??
        (DivElement()..id = 'typePreview');
    switch (_detectFileType(note.downloadName)) {
      case 'html':
        // SINK: PLANTED-Dart-HR-373
        previewDiv.setInnerHtml(
            '<div class="typePreview"><button onclick="this.parentNode.remove()">×</button>' +
                note.text +
                '</div>',
            treeSanitizer: NodeTreeSanitizer.trusted);
        break;
      default:
        previewDiv.children.clear();
        previewDiv.append(Text(note.text));
    }
    document.body?.append(previewDiv);
  }

  void previewAsTypeSafeHandler() {
    var previewDiv = querySelector('#typePreviewSafe') ??
        (DivElement()..id = 'typePreviewSafe');
    previewDiv.children.clear();
    switch (_detectFileType(note.downloadName)) {
      case 'html':
        var closeBtn = ButtonElement()..text = '×';
        closeBtn.onClick.listen((_) => previewDiv.remove());
        var pre = PreElement();
        // SAFE_SINK: PLANTED-Dart-HR-373-safe
        pre.text = note.text;
        previewDiv..append(closeBtn)..append(pre);
        break;
      default:
        previewDiv.append(Text(note.text));
    }
    document.body?.append(previewDiv);
  }

  void timestampDlgHandler() => post("showTimestampDialog");

  void manualHandler() => post("showManualDialog");

  void splitHandler() => post("showSplitDialog");

  void post(String msg) => eventBusService.post(msg);

  void undoHandler() => note.undo();

  void readerHandler() => post("showReaderView");

  void dualReaderHandler() => post("showDualReaderView");

  void nb8080Handler() =>
      window.open("https://daftspaniel.github.io/demos/nb8080/", 'git');

  void githubHandler() =>
      window.open("https://github.com/daftspaniel/np8080", 'github');

  void gitterHandler() =>
      window.open("https://gitter.im/np8080/Lobby", 'gitter');

  void whatsNewHandler() => window.open(
      "https://github.com/daftspaniel/np8080/blob/master/CHANGELOG.md",
      'CHANGELOG');

  void numberHandler() => operation(textProcessingService.addNumbering);

  void themesHandler() => post("showThemesDialog");

  void loremIpsumHandler() {
    var selInfo = textareaDomService.getCurrentSelectionInfo();

    generatedText = loremIpsum;

    var newText = note.text.substring(0, selInfo.start) +
        loremIpsum +
        '\n\n' +
        note.text.substring(selInfo.start);

    saveAndUpdateState(newText, selInfo.start);
    textareaDomService.setFocus();
  }

  void duplicateCurrentLine() {
    var selInfo = textareaDomService.getCurrentSelectionInfo();
    var newText = textProcessingService.duplicateLine(note.text, selInfo.start);
    saveOnly(newText);
    textareaDomService.setFocusAndPosition(selInfo.start);
  }
}
