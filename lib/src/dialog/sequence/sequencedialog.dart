import 'package:ngdart/angular.dart';
import 'package:ngforms/ngforms.dart';
import 'package:np8080/src/dialog/common/editorcomponentbase.dart';
import 'package:np8080/src/services/eventbusservice.dart';
import 'package:np8080/src/services/textareadomservice.dart';
import 'package:np8080/src/services/textprocessingservice.dart';
import 'package:np8080/src/services/themeservice.dart';

@Component(
    selector: 'sequence-dialog',
    templateUrl: 'sequencedialog.html',
    preserveWhitespace: true,
    directives: [NgClass, NgModel, NgStyle, formDirectives])
class SequenceDialog extends EditorComponentBase {
  num startIndex = 10;
  num repeatCount = 10;
  num increment = 10;

  SequenceDialog(
      TextProcessingService newTextProcessingService,
      TextareaDomService newTextareaDomService,
      ThemeService newThemeService,
      EventBusService newEventBusService)
      : super(newTextProcessingService, newTextareaDomService, newThemeService,
            newEventBusService) {
    eventBusService.subscribe("showSequenceDialog", initialiseAndShow);
  }

  void initialiseAndShow() {
    setFocus("#startTextbox");
    show();
  }

  String getGeneratedText() {
    generatedText = textProcessingService.generateSequenceString(
        startIndex, repeatCount, increment);
    return generatedText;
  }

  // Safe half of PLANTED-Dart-HR-369 -- this dialog's override of
  // getGeneratedText() only ever returns an algorithmically-formatted
  // numeric sequence (no free-text user input reaches it), so wiring it
  // into the *safe* shared preview method demonstrates the safe side of
  // the same polymorphic dispatch.
  void richPreviewHandler() =>
      previewGeneratedSnippetSafe('sequencePreviewCard');

  // Safe half of PLANTED-Dart-HR-563 -- the same algorithmically-generated
  // sequence, wired into the *safe* shared open-as-link method
  // (CWE-1022, reverse tabnabbing).
  void openReferenceLinkHandlerSafe() => openGeneratedTextAsLinkSafe();
}
