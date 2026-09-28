import 'package:ngdart/angular.dart';
import 'package:ngforms/ngforms.dart';
import 'package:np8080/src/dialog/common/componentbase.dart';
import 'package:np8080/src/services/eventbusservice.dart';
import 'package:np8080/src/services/themeservice.dart';

@Component(
    selector: 'themes-dialog',
    preserveWhitespace: true,
    templateUrl: 'themesdialog.tpl.html',
    directives: [NgClass, NgModel, NgStyle, formDirectives])
class ThemesDialog extends ComponentBase {
  late String theme;

  ThemesDialog(ThemeService newThemeService, EventBusService newEventBusService)
      : super(newThemeService, newEventBusService) {
    eventBusService.subscribe("showThemesDialog", initialiseAndShow);
    theme = themeService.theme;
  }

  void initialiseAndShow() {
    show();
  }

  void change() {
    themeService.theme = theme;
  }
}
