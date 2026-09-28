// **************************************************************************
// Generator: AngularDart Compiler
// **************************************************************************

import 'deletelinesdialog.dart';
import 'package:ngdart/src/core/linker/views/component_view.dart' as import0;
import 'deletelinesdialog.dart' as import1;
import 'package:ngdart/src/common/directives/ng_class.dart' as import2;
import 'package:ngforms/src/directives/select_control_value_accessor.dart' as import3;
import 'package:ngforms/src/directives/control_value_accessor.dart' as import4;
import 'package:ngforms/src/directives/ng_model.dart' as import5;
import 'package:ngforms/src/directives/default_value_accessor.dart' as import6;
import 'dart:html' as import7;
import 'package:ngdart/src/core/linker/style_encapsulation.dart' as import8;
import 'package:ngdart/src/core/linker/views/view.dart' as import9;
import 'package:ngdart/src/meta/change_detection_constants.dart' as import10;
import 'package:ngdart/src/utilities.dart' as import11;
import 'package:ngdart/src/runtime/dom_helpers.dart' as import12;
import 'package:ngdart/src/devtools.dart' as import13;
import 'package:ngdart/src/meta/di_tokens.dart' as import14;
import 'package:ngforms/src/directives/control_value_accessor.dart' as import15;
import 'package:ngforms/src/directives/ng_control.dart' as import16;
import 'package:ngdart/src/runtime/check_binding.dart' as import17;
import 'package:ngdart/angular.dart';
import 'package:ngdart/src/core/linker/views/host_view.dart' as import19;
import 'package:ngdart/src/di/errors.dart' as import20;
import '../../services/textprocessingservice.dart' as import21;
import '../../services/textareadomservice.dart' as import22;
import '../../services/themeservice.dart' as import23;
import '../../services/eventbusservice.dart' as import24;

final List<Object> styles$DeleteLinesDialog = const [];

class ViewDeleteLinesDialog0 extends import0.ComponentView<import1.DeleteLinesDialog> {
  late final import2.NgClass _NgClass_2_5;
  late final import2.NgClass _NgClass_7_5;
  late final import2.NgClass _NgClass_10_5;
  late final import3.SelectControlValueAccessor _SelectControlValueAccessor_14_5;
  late final List<import4.ControlValueAccessor<dynamic>> _NgValueAccessor_14_6;
  late final import5.NgModel _NgModel_14_7;
  late final import3.NgSelectOption _NgSelectOption_15_5;
  late final import3.NgSelectOption _NgSelectOption_17_5;
  late final import6.DefaultValueAccessor _DefaultValueAccessor_21_5;
  late final List<import4.ControlValueAccessor<dynamic>> _NgValueAccessor_21_6;
  late final import5.NgModel _NgModel_21_7;
  Object? _expr_0;
  Object? _expr_2;
  Object? _expr_4;
  Object? _expr_5;
  Object? _expr_6;
  Object? _expr_7;
  late final import7.DivElement _el_0;
  static import8.ComponentStyles? _componentStyles;
  ViewDeleteLinesDialog0(import9.View parentView, int parentIndex) : super(parentView, parentIndex, import10.ChangeDetectionCheckedState.checkAlways) {
    this.initComponentStyles();
    this.rootElement = import11.unsafeCast(import7.document.createElement('delete-lines-dialog'));
  }
  static String? get _debugComponentUrl {
    return (import11.isDevMode ? 'asset:np8080/lib/src/dialog/deletelines/deletelinesdialog.dart' : null);
  }

  @override
  void build() {
    final _ctx = this.ctx;
    final parentRenderNode = this.initViewRoot();
    final doc = import7.document;
    this._el_0 = import12.appendDiv(doc, parentRenderNode);
    import12.setAttribute(this._el_0, 'id', 'overlay');
    final _text_1 = import12.appendText(this._el_0, '\r\n    ');
    final _el_2 = import12.appendDiv(doc, this._el_0);
    this.updateChildClass(_el_2, 'dialogPanel');
    this._NgClass_2_5 = import2.NgClass(_el_2);
    if (import13.isDevToolsEnabled) {
      import13.Inspector.instance.registerDirective(_el_2, this._NgClass_2_5);
    }
    final _text_3 = import12.appendText(_el_2, '\r\n        ');
    final _el_4 = import12.appendDiv(doc, _el_2);
    this.updateChildClass(_el_4, 'closeCross');
    final _text_5 = import12.appendText(_el_4, 'X');
    final _text_6 = import12.appendText(_el_2, '\r\n        ');
    final _el_7 = import12.appendDiv(doc, _el_2);
    this.updateChildClass(_el_7, 'header');
    this._NgClass_7_5 = import2.NgClass(_el_7);
    if (import13.isDevToolsEnabled) {
      import13.Inspector.instance.registerDirective(_el_7, this._NgClass_7_5);
    }
    final _text_8 = import12.appendText(_el_7, 'Delete Lines');
    final _text_9 = import12.appendText(_el_2, '\r\n\r\n        ');
    final _el_10 = import12.appendDiv(doc, _el_2);
    import12.setAttribute(_el_10, 'style', 'padding-top: 10px');
    this._NgClass_10_5 = import2.NgClass(_el_10);
    if (import13.isDevToolsEnabled) {
      import13.Inspector.instance.registerDirective(_el_10, this._NgClass_10_5);
    }
    final _text_11 = import12.appendText(_el_10, '\r\n\r\n            ');
    final _el_12 = import12.appendElement<import7.HtmlElement>(doc, _el_10, 'label');
    final _text_13 = import12.appendText(_el_12, 'Delete lines ');
    final _el_14 = import12.appendElement<import7.SelectElement>(doc, _el_12, 'select');
    this._SelectControlValueAccessor_14_5 = import3.SelectControlValueAccessor(_el_14);
    this._NgValueAccessor_14_6 = [this._SelectControlValueAccessor_14_5];
    this._NgModel_14_7 = import5.NgModel(null, this._NgValueAccessor_14_6);
    if (import13.isDevToolsEnabled) {
      import13.Inspector.instance.registerDirective(_el_14, this._SelectControlValueAccessor_14_5);
      import13.Inspector.instance.registerDirective(_el_14, this._NgModel_14_7);
    }
    final _el_15 = import12.appendElement<import7.OptionElement>(doc, _el_14, 'option');
    this._NgSelectOption_15_5 = import3.NgSelectOption(_el_15, this._SelectControlValueAccessor_14_5);
    if (import13.isDevToolsEnabled) {
      import13.Inspector.instance.registerDirective(_el_15, this._NgSelectOption_15_5);
    }
    final _text_16 = import12.appendText(_el_15, 'containing');
    final _el_17 = import12.appendElement<import7.OptionElement>(doc, _el_14, 'option');
    this._NgSelectOption_17_5 = import3.NgSelectOption(_el_17, this._SelectControlValueAccessor_14_5);
    if (import13.isDevToolsEnabled) {
      import13.Inspector.instance.registerDirective(_el_17, this._NgSelectOption_17_5);
    }
    final _text_18 = import12.appendText(_el_17, 'NOT containing');
    final _text_19 = import12.appendText(_el_12, ' :');
    final _text_20 = import12.appendText(_el_10, '\r\n            ');
    final _el_21 = import12.appendElement<import7.InputElement>(doc, _el_10, 'input');
    import12.setAttribute(_el_21, 'id', 'markerTextbox');
    import12.setAttribute(_el_21, 'placeholder', 'Type text here...');
    import12.setAttribute(_el_21, 'type', 'text');
    this._DefaultValueAccessor_21_5 = import6.DefaultValueAccessor(_el_21);
    this._NgValueAccessor_21_6 = [this._DefaultValueAccessor_21_5];
    this._NgModel_21_7 = import5.NgModel(null, this._NgValueAccessor_21_6);
    if (import13.isDevToolsEnabled) {
      import13.Inspector.instance.registerDirective(_el_21, this._DefaultValueAccessor_21_5);
      import13.Inspector.instance.registerDirective(_el_21, this._NgModel_21_7);
    }
    final _text_22 = import12.appendText(_el_10, '\r\n\r\n            ');
    final _el_23 = import12.appendDiv(doc, _el_10);
    this.updateChildClass(_el_23, 'footer');
    final _text_24 = import12.appendText(_el_23, '\r\n                ');
    final _el_25 = import12.appendElement<import7.ButtonElement>(doc, _el_23, 'button');
    this.updateChildClass(_el_25, 'actionButton');
    final _text_26 = import12.appendText(_el_25, 'Delete');
    final _text_27 = import12.appendText(_el_23, '\r\n                ');
    final _el_28 = import12.appendElement<import7.ButtonElement>(doc, _el_23, 'button');
    this.updateChildClass(_el_28, 'closeButton light-primary-color');
    final _text_29 = import12.appendText(_el_28, 'Close');
    final _text_30 = import12.appendText(_el_23, '\r\n            ');
    final _text_31 = import12.appendText(_el_10, '\r\n        ');
    final _text_32 = import12.appendText(_el_2, '\r\n    ');
    final _text_33 = import12.appendText(this._el_0, '\r\n');
    _el_4.addEventListener('click', this.eventHandler0(_ctx.close));
    _el_14.addEventListener('blur', this.eventHandler0(this._SelectControlValueAccessor_14_5.touchHandler));
    _el_14.addEventListener('change', this.eventHandler1(this._handleEvent_0));
    final subscription_0 = this._NgModel_14_7.update.listen(this.eventHandler1(this._handleEvent_1));
    _el_21.addEventListener('blur', this.eventHandler0(this._DefaultValueAccessor_21_5.touchHandler));
    _el_21.addEventListener('input', this.eventHandler1(this._handleEvent_2));
    final subscription_1 = this._NgModel_21_7.update.listen(this.eventHandler1(this._handleEvent_3));
    _el_25.addEventListener('click', this.eventHandler0(_ctx.performDelete));
    _el_28.addEventListener('click', this.eventHandler0(_ctx.closeTheDialog));
    this.initSubscriptions([subscription_0, subscription_1]);
  }

  @override
  dynamic injectorGetInternal(dynamic token, int nodeIndex, dynamic notFoundResult) {
    if (((14 <= nodeIndex) && (nodeIndex <= 18))) {
      if (identical(token, import3.SelectControlValueAccessor)) {
        return this._SelectControlValueAccessor_14_5;
      }
      if (identical(token, const import14.MultiToken<import15.ControlValueAccessor<dynamic>>('NgValueAccessor'))) {
        return this._NgValueAccessor_14_6;
      }
      if ((identical(token, import5.NgModel) || identical(token, import16.NgControl))) {
        return this._NgModel_14_7;
      }
    }
    if ((21 == nodeIndex)) {
      if (identical(token, const import14.MultiToken<import15.ControlValueAccessor<dynamic>>('NgValueAccessor'))) {
        return this._NgValueAccessor_21_6;
      }
      if ((identical(token, import5.NgModel) || identical(token, import16.NgControl))) {
        return this._NgModel_21_7;
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
      if (import13.isDevToolsEnabled) {
        import13.Inspector.instance.recordInput(this._NgClass_2_5, 'class', 'dialogPanel');
      }
      this._NgClass_2_5.initialClasses = 'dialogPanel' /* REF:package:np8080/src/dialog/deletelines/deletelinesdialog.html:52:71 */;
    }
    final currVal_2 = ((_ctx.getClass() + ' ') + _ctx.getBorderClass());
    if (import17.checkBinding(this._expr_2, currVal_2, 'getClass()+\' \'+getBorderClass()', 'package:np8080/src/dialog/deletelines/deletelinesdialog.html')) {
      if (import13.isDevToolsEnabled) {
        import13.Inspector.instance.recordInput(this._NgClass_2_5, 'ngClass', currVal_2);
      }
      this._NgClass_2_5.rawClass = currVal_2 /* REF:package:np8080/src/dialog/deletelines/deletelinesdialog.html:72:115 */;
      this._expr_2 = currVal_2;
    }
    if ((!import17.debugThrowIfChanged)) {
      this._NgClass_2_5.ngDoCheck();
    }
    if (firstCheck) {
      if (import13.isDevToolsEnabled) {
        import13.Inspector.instance.recordInput(this._NgClass_7_5, 'class', 'header');
      }
      this._NgClass_7_5.initialClasses = 'header' /* REF:package:np8080/src/dialog/deletelines/deletelinesdialog.html:190:204 */;
    }
    final currVal_4 = _ctx.getHeaderClass();
    if (import17.checkBinding(this._expr_4, currVal_4, 'getHeaderClass()', 'package:np8080/src/dialog/deletelines/deletelinesdialog.html')) {
      if (import13.isDevToolsEnabled) {
        import13.Inspector.instance.recordInput(this._NgClass_7_5, 'ngClass', currVal_4);
      }
      this._NgClass_7_5.rawClass = currVal_4 /* REF:package:np8080/src/dialog/deletelines/deletelinesdialog.html:205:233 */;
      this._expr_4 = currVal_4;
    }
    if ((!import17.debugThrowIfChanged)) {
      this._NgClass_7_5.ngDoCheck();
    }
    final currVal_5 = _ctx.getClass();
    if (import17.checkBinding(this._expr_5, currVal_5, 'getClass()', 'package:np8080/src/dialog/deletelines/deletelinesdialog.html')) {
      if (import13.isDevToolsEnabled) {
        import13.Inspector.instance.recordInput(this._NgClass_10_5, 'ngClass', currVal_5);
      }
      this._NgClass_10_5.rawClass = currVal_5 /* REF:package:np8080/src/dialog/deletelines/deletelinesdialog.html:295:317 */;
      this._expr_5 = currVal_5;
    }
    if ((!import17.debugThrowIfChanged)) {
      this._NgClass_10_5.ngDoCheck();
    }
    changed = false;
    final currVal_6 = _ctx.containOption;
    if (import17.checkBinding(this._expr_6, currVal_6, 'containOption', 'package:np8080/src/dialog/deletelines/deletelinesdialog.html')) {
      if (import13.isDevToolsEnabled) {
        import13.Inspector.instance.recordInput(this._NgModel_14_7, 'ngModel', currVal_6);
      }
      this._NgModel_14_7.model = currVal_6 /* REF:package:np8080/src/dialog/deletelines/deletelinesdialog.html:362:389 */;
      changed = true;
      this._expr_6 = currVal_6;
    }
    if (changed) {
      this._NgModel_14_7.ngAfterChanges();
    }
    if (((!import17.debugThrowIfChanged) && firstCheck)) {
      this._NgModel_14_7.ngOnInit();
    }
    changed = false;
    final currVal_7 = _ctx.markerText;
    if (import17.checkBinding(this._expr_7, currVal_7, 'markerText', 'package:np8080/src/dialog/deletelines/deletelinesdialog.html')) {
      if (import13.isDevToolsEnabled) {
        import13.Inspector.instance.recordInput(this._NgModel_21_7, 'ngModel', currVal_7);
      }
      this._NgModel_21_7.model = currVal_7 /* REF:package:np8080/src/dialog/deletelines/deletelinesdialog.html:551:575 */;
      changed = true;
      this._expr_7 = currVal_7;
    }
    if (changed) {
      this._NgModel_21_7.ngAfterChanges();
    }
    if (((!import17.debugThrowIfChanged) && firstCheck)) {
      this._NgModel_21_7.ngOnInit();
    }
    final currVal_0 = (!_ctx.showDialog);
    if (import17.checkBinding(this._expr_0, currVal_0, '!showDialog', 'package:np8080/src/dialog/deletelines/deletelinesdialog.html')) {
      import12.setProperty(this._el_0, 'hidden', currVal_0) /* REF:package:np8080/src/dialog/deletelines/deletelinesdialog.html:18:40 */;
      this._expr_0 = currVal_0;
    }
  }

  @override
  void destroyInternal() {
    this._NgClass_7_5.ngOnDestroy();
    this._NgSelectOption_15_5.ngOnDestroy();
    this._NgSelectOption_17_5.ngOnDestroy();
    this._NgClass_10_5.ngOnDestroy();
    this._NgClass_2_5.ngOnDestroy();
  }

  void _handleEvent_0($event) {
    this._SelectControlValueAccessor_14_5.handleChange($event.target.value);
  }

  void _handleEvent_1($event) {
    final _ctx = this.ctx;
    _ctx.containOption = $event;
  }

  void _handleEvent_2($event) {
    this._DefaultValueAccessor_21_5.handleChange($event.target.value);
  }

  void _handleEvent_3($event) {
    final _ctx = this.ctx;
    _ctx.markerText = $event;
  }

  static void _debugClearComponentStyles() {
    _componentStyles = null;
  }

  void initComponentStyles() {
    var styles = _componentStyles;
    if ((styles == null)) {
      _componentStyles = (styles = import8.ComponentStyles.unscoped(styles$DeleteLinesDialog, _debugComponentUrl));
      if (import11.isDevMode) {
        import8.ComponentStyles.debugOnClear(_debugClearComponentStyles);
      }
    }
    this.componentStyles = styles;
  }
}

const _DeleteLinesDialogNgFactory = ComponentFactory<import1.DeleteLinesDialog>('delete-lines-dialog', viewFactory_DeleteLinesDialogHost0);
ComponentFactory<import1.DeleteLinesDialog> get DeleteLinesDialogNgFactory {
  return _DeleteLinesDialogNgFactory;
}

ComponentFactory<import1.DeleteLinesDialog> createDeleteLinesDialogFactory() {
  return ComponentFactory('delete-lines-dialog', viewFactory_DeleteLinesDialogHost0);
}

final List<Object> styles$DeleteLinesDialogHost = const [];

class _ViewDeleteLinesDialogHost0 extends import19.HostView<import1.DeleteLinesDialog> {
  @override
  void build() {
    this.componentView = ViewDeleteLinesDialog0(this, 0);
    final _el_0 = this.componentView.rootElement;
    this.component = (import11.isDevMode
        ? import20.debugInjectorWrap(import1.DeleteLinesDialog, () {
            return import1.DeleteLinesDialog(this.injectorGet(import21.TextProcessingService, this.parentIndex), this.injectorGet(import22.TextareaDomService, this.parentIndex), this.injectorGet(import23.ThemeService, this.parentIndex), this.injectorGet(import24.EventBusService, this.parentIndex));
          })
        : import1.DeleteLinesDialog(this.injectorGet(import21.TextProcessingService, this.parentIndex), this.injectorGet(import22.TextareaDomService, this.parentIndex), this.injectorGet(import23.ThemeService, this.parentIndex), this.injectorGet(import24.EventBusService, this.parentIndex)));
    this.initRootNode(_el_0);
  }
}

import19.HostView<import1.DeleteLinesDialog> viewFactory_DeleteLinesDialogHost0() {
  return _ViewDeleteLinesDialogHost0();
}
