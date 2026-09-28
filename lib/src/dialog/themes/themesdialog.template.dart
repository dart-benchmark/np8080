// **************************************************************************
// Generator: AngularDart Compiler
// **************************************************************************

import 'themesdialog.dart';
import 'package:ngdart/src/core/linker/views/component_view.dart' as import0;
import 'themesdialog.dart' as import1;
import 'package:ngdart/src/common/directives/ng_class.dart' as import2;
import 'package:ngforms/src/directives/select_control_value_accessor.dart' as import3;
import 'package:ngforms/src/directives/control_value_accessor.dart' as import4;
import 'package:ngforms/src/directives/ng_model.dart' as import5;
import 'dart:html' as import6;
import 'package:ngdart/src/core/linker/style_encapsulation.dart' as import7;
import 'package:ngdart/src/core/linker/views/view.dart' as import8;
import 'package:ngdart/src/meta/change_detection_constants.dart' as import9;
import 'package:ngdart/src/utilities.dart' as import10;
import 'package:ngdart/src/runtime/dom_helpers.dart' as import11;
import 'package:ngdart/src/devtools.dart' as import12;
import 'package:ngdart/src/meta/di_tokens.dart' as import13;
import 'package:ngforms/src/directives/control_value_accessor.dart' as import14;
import 'package:ngforms/src/directives/ng_control.dart' as import15;
import 'package:ngdart/src/runtime/check_binding.dart' as import16;
import 'package:ngdart/angular.dart';
import 'package:ngdart/src/core/linker/views/host_view.dart' as import18;
import 'package:ngdart/src/di/errors.dart' as import19;
import '../../services/themeservice.dart' as import20;
import '../../services/eventbusservice.dart' as import21;

final List<Object> styles$ThemesDialog = const [];

class ViewThemesDialog0 extends import0.ComponentView<import1.ThemesDialog> {
  late final import2.NgClass _NgClass_2_5;
  late final import2.NgClass _NgClass_7_5;
  late final import2.NgClass _NgClass_10_5;
  late final import3.SelectControlValueAccessor _SelectControlValueAccessor_16_5;
  late final List<import4.ControlValueAccessor<dynamic>> _NgValueAccessor_16_6;
  late final import5.NgModel _NgModel_16_7;
  late final import3.NgSelectOption _NgSelectOption_18_5;
  late final import3.NgSelectOption _NgSelectOption_21_5;
  late final import3.NgSelectOption _NgSelectOption_24_5;
  late final import3.NgSelectOption _NgSelectOption_27_5;
  late final import3.NgSelectOption _NgSelectOption_30_5;
  Object? _expr_0;
  Object? _expr_2;
  Object? _expr_4;
  Object? _expr_5;
  Object? _expr_6;
  late final import6.DivElement _el_0;
  static import7.ComponentStyles? _componentStyles;
  ViewThemesDialog0(import8.View parentView, int parentIndex) : super(parentView, parentIndex, import9.ChangeDetectionCheckedState.checkAlways) {
    this.initComponentStyles();
    this.rootElement = import10.unsafeCast(import6.document.createElement('themes-dialog'));
  }
  static String? get _debugComponentUrl {
    return (import10.isDevMode ? 'asset:np8080/lib/src/dialog/themes/themesdialog.dart' : null);
  }

  @override
  void build() {
    final _ctx = this.ctx;
    final parentRenderNode = this.initViewRoot();
    final doc = import6.document;
    this._el_0 = import11.appendDiv(doc, parentRenderNode);
    import11.setAttribute(this._el_0, 'id', 'overlay');
    final _text_1 = import11.appendText(this._el_0, '\r\n    ');
    final _el_2 = import11.appendDiv(doc, this._el_0);
    this.updateChildClass(_el_2, 'themesDialogPanel');
    this._NgClass_2_5 = import2.NgClass(_el_2);
    if (import12.isDevToolsEnabled) {
      import12.Inspector.instance.registerDirective(_el_2, this._NgClass_2_5);
    }
    final _text_3 = import11.appendText(_el_2, '\r\n        ');
    final _el_4 = import11.appendDiv(doc, _el_2);
    this.updateChildClass(_el_4, 'closeCross');
    final _text_5 = import11.appendText(_el_4, 'X');
    final _text_6 = import11.appendText(_el_2, '\r\n        ');
    final _el_7 = import11.appendDiv(doc, _el_2);
    this.updateChildClass(_el_7, 'header');
    this._NgClass_7_5 = import2.NgClass(_el_7);
    if (import12.isDevToolsEnabled) {
      import12.Inspector.instance.registerDirective(_el_7, this._NgClass_7_5);
    }
    final _text_8 = import11.appendText(_el_7, 'Themes');
    final _text_9 = import11.appendText(_el_2, '\r\n\r\n        ');
    final _el_10 = import11.appendDiv(doc, _el_2);
    import11.setAttribute(_el_10, 'style', 'text-align: center;padding: 10px');
    this._NgClass_10_5 = import2.NgClass(_el_10);
    if (import12.isDevToolsEnabled) {
      import12.Inspector.instance.registerDirective(_el_10, this._NgClass_10_5);
    }
    final _text_11 = import11.appendText(_el_10, '\r\n            ');
    final _el_12 = import11.appendDiv(doc, _el_10);
    import11.setAttribute(_el_12, 'style', 'margin-left: 60px;text-align: left');
    final _text_13 = import11.appendText(_el_12, '\r\n                ');
    final _el_14 = import11.appendElement<import6.HtmlElement>(doc, _el_12, 'br');
    final _text_15 = import11.appendText(_el_12, '\r\n                ');
    final _el_16 = import11.appendElement<import6.SelectElement>(doc, _el_12, 'select');
    import11.setAttribute(_el_16, 'id', 'themeselect');
    import11.setAttribute(_el_16, 'multiple', 'yes');
    import11.setAttribute(_el_16, 'size', '6');
    import11.setAttribute(_el_16, 'style', 'width: 150px');
    this._SelectControlValueAccessor_16_5 = import3.SelectControlValueAccessor(_el_16);
    this._NgValueAccessor_16_6 = [this._SelectControlValueAccessor_16_5];
    this._NgModel_16_7 = import5.NgModel(null, this._NgValueAccessor_16_6);
    if (import12.isDevToolsEnabled) {
      import12.Inspector.instance.registerDirective(_el_16, this._SelectControlValueAccessor_16_5);
      import12.Inspector.instance.registerDirective(_el_16, this._NgModel_16_7);
    }
    final _text_17 = import11.appendText(_el_16, '\r\n                    ');
    final _el_18 = import11.appendElement<import6.OptionElement>(doc, _el_16, 'option');
    import11.setAttribute(_el_18, 'value', 'default');
    this._NgSelectOption_18_5 = import3.NgSelectOption(_el_18, this._SelectControlValueAccessor_16_5);
    if (import12.isDevToolsEnabled) {
      import12.Inspector.instance.registerDirective(_el_18, this._NgSelectOption_18_5);
    }
    final _text_19 = import11.appendText(_el_18, 'Default');
    final _text_20 = import11.appendText(_el_16, '\r\n                    ');
    final _el_21 = import11.appendElement<import6.OptionElement>(doc, _el_16, 'option');
    import11.setAttribute(_el_21, 'value', 'dark');
    this._NgSelectOption_21_5 = import3.NgSelectOption(_el_21, this._SelectControlValueAccessor_16_5);
    if (import12.isDevToolsEnabled) {
      import12.Inspector.instance.registerDirective(_el_21, this._NgSelectOption_21_5);
    }
    final _text_22 = import11.appendText(_el_21, 'Dark');
    final _text_23 = import11.appendText(_el_16, '\r\n                    ');
    final _el_24 = import11.appendElement<import6.OptionElement>(doc, _el_16, 'option');
    import11.setAttribute(_el_24, 'value', 'umate');
    this._NgSelectOption_24_5 = import3.NgSelectOption(_el_24, this._SelectControlValueAccessor_16_5);
    if (import12.isDevToolsEnabled) {
      import12.Inspector.instance.registerDirective(_el_24, this._NgSelectOption_24_5);
    }
    final _text_25 = import11.appendText(_el_24, 'MATE');
    final _text_26 = import11.appendText(_el_16, '\r\n                    ');
    final _el_27 = import11.appendElement<import6.OptionElement>(doc, _el_16, 'option');
    import11.setAttribute(_el_27, 'value', 'amber');
    this._NgSelectOption_27_5 = import3.NgSelectOption(_el_27, this._SelectControlValueAccessor_16_5);
    if (import12.isDevToolsEnabled) {
      import12.Inspector.instance.registerDirective(_el_27, this._NgSelectOption_27_5);
    }
    final _text_28 = import11.appendText(_el_27, 'Amber');
    final _text_29 = import11.appendText(_el_16, '\r\n                    ');
    final _el_30 = import11.appendElement<import6.OptionElement>(doc, _el_16, 'option');
    import11.setAttribute(_el_30, 'value', 'silverblue');
    this._NgSelectOption_30_5 = import3.NgSelectOption(_el_30, this._SelectControlValueAccessor_16_5);
    if (import12.isDevToolsEnabled) {
      import12.Inspector.instance.registerDirective(_el_30, this._NgSelectOption_30_5);
    }
    final _text_31 = import11.appendText(_el_30, '64 Blue');
    final _text_32 = import11.appendText(_el_16, '\r\n                ');
    final _text_33 = import11.appendText(_el_12, '\r\n                ');
    final _el_34 = import11.appendElement<import6.HtmlElement>(doc, _el_12, 'br');
    final _text_35 = import11.appendText(_el_12, '\r\n            ');
    final _text_36 = import11.appendText(_el_10, '\r\n            ');
    final _el_37 = import11.appendDiv(doc, _el_10);
    this.updateChildClass(_el_37, 'footer');
    final _text_38 = import11.appendText(_el_37, '\r\n                ');
    final _el_39 = import11.appendElement<import6.ButtonElement>(doc, _el_37, 'button');
    this.updateChildClass(_el_39, 'actionButton');
    final _text_40 = import11.appendText(_el_39, 'Change');
    final _text_41 = import11.appendText(_el_37, '\r\n                ');
    final _el_42 = import11.appendElement<import6.ButtonElement>(doc, _el_37, 'button');
    this.updateChildClass(_el_42, 'closeButton light-primary-color');
    final _text_43 = import11.appendText(_el_42, 'Close');
    final _text_44 = import11.appendText(_el_37, '\r\n            ');
    final _text_45 = import11.appendText(_el_10, '\r\n        ');
    final _text_46 = import11.appendText(_el_2, '\r\n    ');
    final _text_47 = import11.appendText(this._el_0, '\r\n');
    _el_4.addEventListener('click', this.eventHandler0(_ctx.close));
    _el_16.addEventListener('blur', this.eventHandler0(this._SelectControlValueAccessor_16_5.touchHandler));
    _el_16.addEventListener('change', this.eventHandler1(this._handleEvent_0));
    final subscription_0 = this._NgModel_16_7.update.listen(this.eventHandler1(this._handleEvent_1));
    _el_39.addEventListener('click', this.eventHandler0(_ctx.change));
    _el_42.addEventListener('click', this.eventHandler0(_ctx.close));
    this.initSubscriptions([subscription_0]);
  }

  @override
  dynamic injectorGetInternal(dynamic token, int nodeIndex, dynamic notFoundResult) {
    if (((16 <= nodeIndex) && (nodeIndex <= 32))) {
      if (identical(token, import3.SelectControlValueAccessor)) {
        return this._SelectControlValueAccessor_16_5;
      }
      if (identical(token, const import13.MultiToken<import14.ControlValueAccessor<dynamic>>('NgValueAccessor'))) {
        return this._NgValueAccessor_16_6;
      }
      if ((identical(token, import5.NgModel) || identical(token, import15.NgControl))) {
        return this._NgModel_16_7;
      }
    }
    return notFoundResult;
  }

  @override
  void detectChangesInternal() {
    final _ctx = this.ctx;
    bool changed = false;
    bool firstCheck = this.firstCheck;
    if (firstCheck) {
      if (import12.isDevToolsEnabled) {
        import12.Inspector.instance.recordInput(this._NgClass_2_5, 'class', 'themesDialogPanel');
      }
      this._NgClass_2_5.initialClasses = 'themesDialogPanel' /* REF:package:np8080/src/dialog/themes/themesdialog.tpl.html:55:80 */;
    }
    final currVal_2 = ((_ctx.getClass() + ' ') + _ctx.getBorderClass());
    if (import16.checkBinding(this._expr_2, currVal_2, 'getClass()+\' \'+getBorderClass()', 'package:np8080/src/dialog/themes/themesdialog.tpl.html')) {
      if (import12.isDevToolsEnabled) {
        import12.Inspector.instance.recordInput(this._NgClass_2_5, 'ngClass', currVal_2);
      }
      this._NgClass_2_5.rawClass = currVal_2 /* REF:package:np8080/src/dialog/themes/themesdialog.tpl.html:81:124 */;
      this._expr_2 = currVal_2;
    }
    if ((!import16.debugThrowIfChanged)) {
      this._NgClass_2_5.ngDoCheck();
    }
    if (firstCheck) {
      if (import12.isDevToolsEnabled) {
        import12.Inspector.instance.recordInput(this._NgClass_7_5, 'class', 'header');
      }
      this._NgClass_7_5.initialClasses = 'header' /* REF:package:np8080/src/dialog/themes/themesdialog.tpl.html:199:213 */;
    }
    final currVal_4 = _ctx.getHeaderClass();
    if (import16.checkBinding(this._expr_4, currVal_4, 'getHeaderClass()', 'package:np8080/src/dialog/themes/themesdialog.tpl.html')) {
      if (import12.isDevToolsEnabled) {
        import12.Inspector.instance.recordInput(this._NgClass_7_5, 'ngClass', currVal_4);
      }
      this._NgClass_7_5.rawClass = currVal_4 /* REF:package:np8080/src/dialog/themes/themesdialog.tpl.html:214:242 */;
      this._expr_4 = currVal_4;
    }
    if ((!import16.debugThrowIfChanged)) {
      this._NgClass_7_5.ngDoCheck();
    }
    final currVal_5 = _ctx.getClass();
    if (import16.checkBinding(this._expr_5, currVal_5, 'getClass()', 'package:np8080/src/dialog/themes/themesdialog.tpl.html')) {
      if (import12.isDevToolsEnabled) {
        import12.Inspector.instance.recordInput(this._NgClass_10_5, 'ngClass', currVal_5);
      }
      this._NgClass_10_5.rawClass = currVal_5 /* REF:package:np8080/src/dialog/themes/themesdialog.tpl.html:313:335 */;
      this._expr_5 = currVal_5;
    }
    if ((!import16.debugThrowIfChanged)) {
      this._NgClass_10_5.ngDoCheck();
    }
    changed = false;
    final currVal_6 = _ctx.theme;
    if (import16.checkBinding(this._expr_6, currVal_6, 'theme', 'package:np8080/src/dialog/themes/themesdialog.tpl.html')) {
      if (import12.isDevToolsEnabled) {
        import12.Inspector.instance.recordInput(this._NgModel_16_7, 'ngModel', currVal_6);
      }
      this._NgModel_16_7.model = currVal_6 /* REF:package:np8080/src/dialog/themes/themesdialog.tpl.html:485:504 */;
      changed = true;
      this._expr_6 = currVal_6;
    }
    if (changed) {
      this._NgModel_16_7.ngAfterChanges();
    }
    if (((!import16.debugThrowIfChanged) && firstCheck)) {
      this._NgModel_16_7.ngOnInit();
    }
    if (firstCheck) {
      if (import12.isDevToolsEnabled) {
        import12.Inspector.instance.recordInput(this._NgSelectOption_18_5, 'value', 'default');
      }
      this._NgSelectOption_18_5.value = 'default' /* REF:package:np8080/src/dialog/themes/themesdialog.tpl.html:559:574 */;
      if (import12.isDevToolsEnabled) {
        import12.Inspector.instance.recordInput(this._NgSelectOption_21_5, 'value', 'dark');
      }
      this._NgSelectOption_21_5.value = 'dark' /* REF:package:np8080/src/dialog/themes/themesdialog.tpl.html:621:633 */;
      if (import12.isDevToolsEnabled) {
        import12.Inspector.instance.recordInput(this._NgSelectOption_24_5, 'value', 'umate');
      }
      this._NgSelectOption_24_5.value = 'umate' /* REF:package:np8080/src/dialog/themes/themesdialog.tpl.html:677:690 */;
      if (import12.isDevToolsEnabled) {
        import12.Inspector.instance.recordInput(this._NgSelectOption_27_5, 'value', 'amber');
      }
      this._NgSelectOption_27_5.value = 'amber' /* REF:package:np8080/src/dialog/themes/themesdialog.tpl.html:734:747 */;
      if (import12.isDevToolsEnabled) {
        import12.Inspector.instance.recordInput(this._NgSelectOption_30_5, 'value', 'silverblue');
      }
      this._NgSelectOption_30_5.value = 'silverblue' /* REF:package:np8080/src/dialog/themes/themesdialog.tpl.html:792:810 */;
    }
    final currVal_0 = (!_ctx.showComponent);
    if (import16.checkBinding(this._expr_0, currVal_0, '!showComponent', 'package:np8080/src/dialog/themes/themesdialog.tpl.html')) {
      import11.setProperty(this._el_0, 'hidden', currVal_0) /* REF:package:np8080/src/dialog/themes/themesdialog.tpl.html:18:43 */;
      this._expr_0 = currVal_0;
    }
  }

  @override
  void destroyInternal() {
    this._NgClass_7_5.ngOnDestroy();
    this._NgSelectOption_18_5.ngOnDestroy();
    this._NgSelectOption_21_5.ngOnDestroy();
    this._NgSelectOption_24_5.ngOnDestroy();
    this._NgSelectOption_27_5.ngOnDestroy();
    this._NgSelectOption_30_5.ngOnDestroy();
    this._NgClass_10_5.ngOnDestroy();
    this._NgClass_2_5.ngOnDestroy();
  }

  void _handleEvent_0($event) {
    this._SelectControlValueAccessor_16_5.handleChange($event.target.value);
  }

  void _handleEvent_1($event) {
    final _ctx = this.ctx;
    _ctx.theme = $event;
  }

  static void _debugClearComponentStyles() {
    _componentStyles = null;
  }

  void initComponentStyles() {
    var styles = _componentStyles;
    if ((styles == null)) {
      _componentStyles = (styles = import7.ComponentStyles.unscoped(styles$ThemesDialog, _debugComponentUrl));
      if (import10.isDevMode) {
        import7.ComponentStyles.debugOnClear(_debugClearComponentStyles);
      }
    }
    this.componentStyles = styles;
  }
}

const _ThemesDialogNgFactory = ComponentFactory<import1.ThemesDialog>('themes-dialog', viewFactory_ThemesDialogHost0);
ComponentFactory<import1.ThemesDialog> get ThemesDialogNgFactory {
  return _ThemesDialogNgFactory;
}

ComponentFactory<import1.ThemesDialog> createThemesDialogFactory() {
  return ComponentFactory('themes-dialog', viewFactory_ThemesDialogHost0);
}

final List<Object> styles$ThemesDialogHost = const [];

class _ViewThemesDialogHost0 extends import18.HostView<import1.ThemesDialog> {
  @override
  void build() {
    this.componentView = ViewThemesDialog0(this, 0);
    final _el_0 = this.componentView.rootElement;
    this.component = (import10.isDevMode
        ? import19.debugInjectorWrap(import1.ThemesDialog, () {
            return import1.ThemesDialog(this.injectorGet(import20.ThemeService, this.parentIndex), this.injectorGet(import21.EventBusService, this.parentIndex));
          })
        : import1.ThemesDialog(this.injectorGet(import20.ThemeService, this.parentIndex), this.injectorGet(import21.EventBusService, this.parentIndex)));
    this.initRootNode(_el_0);
  }
}

import18.HostView<import1.ThemesDialog> viewFactory_ThemesDialogHost0() {
  return _ViewThemesDialogHost0();
}
