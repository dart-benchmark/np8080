import 'dart:html';

import 'package:ngdart/angular.dart';
import 'package:np8080/src/dialog/common/editorcomponentbase.dart';
import 'package:np8080/src/services/eventbusservice.dart';
import 'package:np8080/src/services/textareadomservice.dart';
import 'package:np8080/src/services/textprocessingservice.dart';
import 'package:np8080/src/services/themeservice.dart';

@Component(
    selector: 'text-status',
    templateUrl: 'statuspanel.html',
    directives: [NgIf, NgClass],
    pipes: [UpperCasePipe, DatePipe])
class StatusPanel extends EditorComponentBase {
  StatusPanel(
      TextProcessingService newTextProcessingService,
      TextareaDomService newTextareaDomService,
      ThemeService newThemeService,
      EventBusService newEventBusService)
      : super(newTextProcessingService, newTextareaDomService, newThemeService,
            newEventBusService);

  @Input('text')
  String text = '';

  @Input('modified')
  DateTime? modified;

  String get length => text.length.toString();

  String get wordCount => textProcessingService.getWordCount(text).toString();

  String get lineCount => textProcessingService.getLineCount(text).toString();

  String get sentenceCount => textProcessingService.getSentenceCount(text).toString();

  bool isHttps() {
    return window.location.href.contains('https://') ||
        window.location.href.contains('localhost');
  }

  // ---------------------------------------------------------------------
  // Quick Peek (PLANTED-Dart-HR-370): clicking the "Chars" counter shows a
  // small floating card previewing the first part of the note, with an
  // inline dismiss (x) control -- a real convenience so a user checking
  // the char count doesn't have to scroll back up to see what they're
  // editing. showPeek() streams the note text straight into the card;
  // showPeekSafe() builds the identical card out of DOM text nodes.
  // ---------------------------------------------------------------------
  String _peekSnippet() => text.length > 120 ? text.substring(0, 120) : text;

  void showPeek() {
    var peekDiv =
        querySelector('#notePeek') ?? (DivElement()..id = 'notePeek');
    // SINK: PLANTED-Dart-HR-370
    peekDiv.setInnerHtml(
        '<div class="notePeekCard"><button onclick="this.parentNode.remove()">×</button><span>' +
            _peekSnippet() +
            '</span></div>',
        treeSanitizer: NodeTreeSanitizer.trusted);
    document.body?.append(peekDiv);
  }

  void showPeekSafe() {
    var peekDiv = querySelector('#notePeekSafe') ??
        (DivElement()..id = 'notePeekSafe');
    peekDiv.children.clear();
    var closeBtn = ButtonElement()..text = '×';
    closeBtn.onClick.listen((_) => peekDiv.remove());
    var span = SpanElement();
    // SAFE_SINK: PLANTED-Dart-HR-370-safe
    span.text = _peekSnippet();
    peekDiv..append(closeBtn)..append(span);
    document.body?.append(peekDiv);
  }
}
