import 'package:ngdart/angular.dart';
import 'package:ngforms/ngforms.dart';
import 'package:np8080/src/dialog/common/editorcomponentbase.dart';
import 'package:np8080/src/services/eventbusservice.dart';
import 'package:np8080/src/services/textareadomservice.dart';
import 'package:np8080/src/services/textprocessingservice.dart';
import 'package:np8080/src/services/themeservice.dart';

@Component(
    selector: 'generate-dialog',
    preserveWhitespace: true,
    templateUrl: 'generatedialog.html',
    directives: [NgClass, NgModel, NgStyle, NgClass, formDirectives])
class GenerateDialog extends EditorComponentBase {
  String textToRepeat;

  num repeatCount = 10;

  GenerateDialog(
      TextProcessingService newTextProcessingService,
      TextareaDomService newTextareaDomService,
      ThemeService newThemeService,
      EventBusService newEventBusService)
      : textToRepeat = '', super(newTextProcessingService, newTextareaDomService, newThemeService,
            newEventBusService) {
    eventBusService.subscribe("showGenerateDialog", initialiseAndShow);
  }

  void initialiseAndShow() {
    textToRepeat = "";
    setFocus("#repeatTextbox");
    show();
  }

  String getGeneratedText() {
    if (textToRepeat == null) return '';

    generatedText = textProcessingService.generateRepeatedString(
        textToRepeat, repeatCount, newLineAfter);
    return generatedText;
  }

  // Part of PLANTED-Dart-HR-369 -- wires this dialog's own override of
  // getGeneratedText() (which echoes the user's typed textToRepeat field,
  // repeated but otherwise unchanged) into the shared, dangerous preview
  // method on EditorComponentBase.
  void richPreviewHandler() => previewGeneratedSnippet('generatePreviewCard');

  // Part of PLANTED-Dart-HR-563 -- wires the same getGeneratedText()
  // override into the shared, dangerous open-as-link method on
  // EditorComponentBase (CWE-1022, reverse tabnabbing).
  void openReferenceLinkHandler() => openGeneratedTextAsLink();
}
