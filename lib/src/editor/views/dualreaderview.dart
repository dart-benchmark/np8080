import 'package:ngdart/angular.dart';
import 'package:ngforms/ngforms.dart';
import 'package:np8080/src/dialog/common/componentbase.dart';
import 'package:np8080/src/document/textdocument.dart';
import 'package:np8080/src/services/eventbusservice.dart';
import 'package:np8080/src/services/themeservice.dart';
import 'dart:html';

@Component(
    selector: 'dualreader-view',
    templateUrl: 'dualreaderview.html',
    directives: [NgModel, NgStyle, NgClass, formDirectives])
class DualReaderView extends ComponentBase implements AfterContentInit {
  DualReaderView(
      ThemeService newthemeService, EventBusService newEventBusService)
      : super(newthemeService, newEventBusService) {
    eventBusService.subscribe("showDualReaderView", showReader);
  }

  @Input()
  late TextDocument note1;

  @Input()
  late TextDocument note2;

  var lockScrolling = true;
  TextAreaElement? rightText;
  TextAreaElement? leftText;

  void showReader() => show();

  scrollLeft(var e) {
    if (lockScrolling) rightText!.scrollTop = leftText!.scrollTop;
  }

  scrollRight(var e) {
    if (lockScrolling) leftText!.scrollTop = rightText!.scrollTop;
  }

  void ngAfterContentInit() {
    rightText = querySelector('#rightText') as TextAreaElement?;
    leftText = querySelector('#leftText') as TextAreaElement?;
  }
}
