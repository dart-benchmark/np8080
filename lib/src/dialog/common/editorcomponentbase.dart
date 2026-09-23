import 'dart:html';

import 'package:angular/angular.dart';
import 'package:angular_forms/angular_forms.dart';
import 'package:np8080/src/document/textdocument.dart';
import 'package:np8080/src/services/eventbusservice.dart';
import 'package:np8080/src/services/textareadomservice.dart';
import 'package:np8080/src/services/textprocessingservice.dart';
import 'package:np8080/src/services/themeservice.dart';
import 'componentbase.dart';

@Component(
    selector: 'base_dialog',
    template: '',
    directives: [NgClass, NgModel, NgStyle, formDirectives])
class EditorComponentBase extends ComponentBase {
  final TextProcessingService textProcessingService;
  final TextareaDomService textareaDomService;

  bool get showDialog => showComponent;

  @Input()
  TextDocument note;

  var insertPos = -1;
  String generatedText;

  bool newLineAfter = false;
  bool newLineBefore = false;

  EditorComponentBase(this.textProcessingService, this.textareaDomService,
      ThemeService newthemeService, EventBusService newEventBusService)
      : super(newthemeService, newEventBusService) {}

  void closeTheDialog() {
    close();
    textareaDomService.setFocus();
    if (insertPos > 0) {
      textareaDomService.setCursorPosition(insertPos);
    }
  }

  String getGeneratedText() => '';

  String getUpdatedText() => '';

  String getPreview() => getGeneratedText();

  void amendText() => note.updateAndSave(getUpdatedText());

  void appendText() {
    var newText = note.text + getGeneratedText();
    saveAndUpdateState(newText, note.text.length);
  }

  void prependText() {
    var newText = getGeneratedText() + '\n' + note.text;
    saveAndUpdateState(newText, note.text.length);
  }

  void saveOnly(String newNoteText) {
    note.updateAndSave(newNoteText);
  }

  void saveAndUpdateState(String newNoteText, int cursorPos) {
    note.updateAndSave(newNoteText);
    insertPos = cursorPos;
    if (generatedText != null) {
      insertPos += generatedText.length;
    }
    closeTheDialog();
  }

  void insertCurrentPosition() {
    var selInfo = textareaDomService.getCurrentSelectionInfo();

    var newText = note.text.substring(0, selInfo.start) +
        getGeneratedText() +
        note.text.substring(selInfo.start);

    saveAndUpdateState(newText, selInfo.start);
  }

  // PLANTED-Dart-HR-369: render "what will be inserted" as a formatted
  // rich preview card, shared by every dialog that extends this base
  // class. getGeneratedText() is a virtual method -- whether this shared
  // method is actually dangerous for a given call depends entirely on
  // which concrete subclass's override supplied the value (GenerateDialog's
  // override returns the user's own typed text essentially unchanged;
  // TimestampDialog/SequenceDialog's overrides return algorithmically
  // formatted text with no free-text user input in it at all).
  // previewGeneratedSnippet() trusts the generated value outright;
  // previewGeneratedSnippetSafe() renders the exact same value as plain
  // text instead.
  void previewGeneratedSnippet(String cardId) {
    var previewCard = querySelector('#$cardId');
    // SINK: PLANTED-Dart-HR-369
    previewCard?.setInnerHtml(getGeneratedText(),
        treeSanitizer: NodeTreeSanitizer.trusted);
  }

  void previewGeneratedSnippetSafe(String cardId) {
    var previewCard = querySelector('#$cardId');
    previewCard?.children.clear();
    // SAFE_SINK: PLANTED-Dart-HR-369-safe
    previewCard?.append(Text(getGeneratedText()));
  }

  // ---------------------------------------------------------------------
  // Open Reference Link (PLANTED-Dart-HR-563): open whatever this
  // dialog's own getGeneratedText() override currently produces as a
  // link in a new tab -- "check the link is right before I insert N
  // copies of it" -- shared by every dialog that extends this base
  // class. Same polymorphic-dispatch shape as PLANTED-Dart-HR-369 above
  // (a virtual method whose override decides whether real free-text user
  // input reaches the call), applied here to window.open() instead of
  // setInnerHtml() -- this is a CWE-1022 (reverse tabnabbing) instance,
  // not an HTML-injection one: GenerateDialog's override
  // (generatedialog.dart) returns the user's own typed textToRepeat field
  // essentially unchanged, so wiring it to openGeneratedTextAsLink() is
  // dangerous; SequenceDialog's override (sequencedialog.dart) returns an
  // algorithmically generated numeric sequence with no free-text user
  // input in it at all, so wiring it to openGeneratedTextAsLinkSafe() is
  // safe by construction -- not merely because of a different
  // window-feature string, though that differs too.
  // ---------------------------------------------------------------------
  void openGeneratedTextAsLink() {
    var value = getGeneratedText();
    if (value != null && value.isNotEmpty) {
      // SINK: PLANTED-Dart-HR-563
      window.open(value, '_blank');
    }
  }

  void openGeneratedTextAsLinkSafe() {
    var value = getGeneratedText();
    if (value != null && value.isNotEmpty) {
      // SAFE_SINK: PLANTED-Dart-HR-563-safe
      window.open(value, '_blank', 'noopener,noreferrer');
    }
  }
}
