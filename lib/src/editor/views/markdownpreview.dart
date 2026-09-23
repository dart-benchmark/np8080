import 'dart:html';

import 'package:angular/angular.dart';
import 'package:angular_forms/angular_forms.dart';
import 'package:np8080/src/dialog/common/editorcomponentbase.dart';
import 'package:np8080/src/services/eventbusservice.dart';
import 'package:np8080/src/services/textareadomservice.dart';
import 'package:np8080/src/services/textprocessingservice.dart';
import 'package:np8080/src/services/themeservice.dart';

@Component(
    selector: 'markdown-preview',
    templateUrl: 'markdownpreview.html',
    directives: [NgModel, NgStyle, NgClass])
class MarkdownPreview extends EditorComponentBase
    implements AfterContentInit, OnChanges {
  final _nullSanitizer = NullTreeSanitizer();

  DivElement _htmlDiv;

  MarkdownPreview(
      TextProcessingService newTextProcessingService,
      TextareaDomService newTextareaDomService,
      ThemeService newThemeService,
      EventBusService newEventBusService)
      : super(newTextProcessingService, newTextareaDomService, newThemeService,
            newEventBusService) {
    eventBusService.subscribe('ShowMarkdownPreview', () {
      active = true;
      updatePreview();
    });
    eventBusService.subscribe('HideMarkdownPreview', () => active = false);
    eventBusService.subscribe('InsertSnippetBatch', insertSnippetBatch);
    eventBusService.subscribe('InsertSnippetBatchSafe', insertSnippetBatchSafe);
    eventBusService.subscribe('ShowTitleBubble', showTitleBubble);
    eventBusService.subscribe('ShowTitleBubbleSafe', showTitleBubbleSafe);
    eventBusService.subscribe('ShowHashtagPills', showHashtagPills);
    eventBusService.subscribe('ShowHashtagPillsSafe', showHashtagPillsSafe);
  }

  @Input('content')
  String content = "";

  bool active = false;

  ngOnChanges(Map<String, SimpleChange> changes) {
    if (active) updatePreview();
  }

  void ngAfterContentInit() {
    _htmlDiv ??= querySelector('#previewPane');
  }

  void updatePreview() {
    try {
      _htmlDiv?.setInnerHtml(
          textProcessingService.convertMarkdownToHtml(content),
          treeSanitizer: _nullSanitizer);
    } catch (Exception) {
      print('exception updating Preview of MD');
    }
  }

  // PLANTED-Dart-HR-368: bulk-insert a batch of "snippet" blocks -- the
  // note's own content split on a '---' line -- into the live preview
  // pane, one at a time, using execCommand so each insertion stays on the
  // browser's native undo stack. insertSnippetBatch() inserts each block as
  // raw HTML; insertSnippetBatchSafe() inserts the exact same blocks as
  // plain text instead.
  void insertSnippetBatch() {
    _htmlDiv?.focus();
    for (var snippet in content.split('\n---\n')) {
      if (snippet.trim().isEmpty) continue;
      // SINK: PLANTED-Dart-HR-368
      document.execCommand('insertHTML', false, snippet);
    }
  }

  void insertSnippetBatchSafe() {
    _htmlDiv?.focus();
    for (var snippet in content.split('\n---\n')) {
      if (snippet.trim().isEmpty) continue;
      // SAFE_SINK: PLANTED-Dart-HR-368-safe
      document.execCommand('insertText', false, snippet);
    }
  }

  // ---------------------------------------------------------------------
  // Title Bubble (PLANTED-Dart-HR-371): float the note's first Markdown
  // heading (or "Untitled" if none) in a small floating bubble above the
  // preview pane, with an inline dismiss (x) control -- handy when the
  // preview is scrolled past the top of a long document. Built across
  // several statements (not a single expression, unlike HR-370) before
  // being handed to Element.html() -- the factory-constructor sink,
  // distinct from the setInnerHtml() method used elsewhere in this batch.
  // showTitleBubble() streams the heading text unescaped; showTitleBubbleSafe()
  // appends it as a DOM text node instead.
  // ---------------------------------------------------------------------
  String _firstHeadingOrUntitled(String markdown) {
    var match = RegExp(r'^#{1,6}\s+(.*)$', multiLine: true).firstMatch(markdown);
    return match != null ? match.group(1) : 'Untitled';
  }

  void showTitleBubble() {
    var heading = _firstHeadingOrUntitled(content);
    var bubbleHtml = '<div class="titleBubble">';
    bubbleHtml += '<button onclick="this.parentNode.remove()">×</button>';
    bubbleHtml += '<span>' + heading + '</span>';
    bubbleHtml += '</div>';
    querySelector('#titleBubble')?.remove();
    // SINK: PLANTED-Dart-HR-371
    var bubble = Element.html(bubbleHtml, treeSanitizer: NodeTreeSanitizer.trusted)
      ..id = 'titleBubble';
    document.body?.append(bubble);
  }

  void showTitleBubbleSafe() {
    var heading = _firstHeadingOrUntitled(content);
    querySelector('#titleBubbleSafe')?.remove();
    var bubble = DivElement()..id = 'titleBubbleSafe';
    var closeBtn = ButtonElement()..text = '×';
    closeBtn.onClick.listen((_) => bubble.remove());
    var span = SpanElement();
    // SAFE_SINK: PLANTED-Dart-HR-371-safe
    span.text = heading;
    bubble..append(closeBtn)..append(span);
    document.body?.append(bubble);
  }

  // ---------------------------------------------------------------------
  // Hashtag Pills (PLANTED-Dart-HR-374): scan the note's Markdown task
  // list lines ("- [ ] ..."/"- [x] ...") and render each one's own free-text
  // label as a clickable pill that toggles a done/undone style -- a real
  // notepad convenience for a quick checklist overview. Builds the whole
  // list inside a loop, accumulating into a StringBuffer, with ONE sink
  // call after the loop -- distinct data-flow from HR-371's single-value
  // build. showHashtagPills() renders every label as raw HTML in one shot;
  // showHashtagPillsSafe() builds the identical list from DOM text nodes.
  // ---------------------------------------------------------------------
  String _buildTaskListHtml(String markdown) {
    var buffer = StringBuffer();
    for (var line in markdown.split('\n')) {
      var trimmed = line.trimLeft();
      if (trimmed.startsWith('- [ ]') || trimmed.startsWith('- [x]')) {
        var label = trimmed.substring(5).trim();
        buffer.write('<li onclick="this.classList.toggle(\'done\')">');
        buffer.write(label);
        buffer.write('</li>');
      }
    }
    return '<ul class="taskList">' + buffer.toString() + '</ul>';
  }

  void showHashtagPills() {
    var listDiv =
        querySelector('#taskList') ?? (DivElement()..id = 'taskList');
    // SINK: PLANTED-Dart-HR-374
    listDiv.setInnerHtml(_buildTaskListHtml(content),
        treeSanitizer: NodeTreeSanitizer.trusted);
    document.body?.append(listDiv);
  }

  void showHashtagPillsSafe() {
    var listDiv = querySelector('#taskListSafe') ??
        (DivElement()..id = 'taskListSafe');
    listDiv.children.clear();
    for (var line in content.split('\n')) {
      var trimmed = line.trimLeft();
      if (trimmed.startsWith('- [ ]') || trimmed.startsWith('- [x]')) {
        var label = trimmed.substring(5).trim();
        var li = LIElement();
        li.onClick.listen((_) => li.classes.toggle('done'));
        // SAFE_SINK: PLANTED-Dart-HR-374-safe
        li.text = label;
        listDiv.append(li);
      }
    }
    document.body?.append(listDiv);
  }
}

class NullTreeSanitizer implements NodeTreeSanitizer {
  void sanitizeTree(Node node) {}
}
