// **************************************************************************
// Generator: AngularDart Compiler
// **************************************************************************

import 'splicedialog.dart';
import 'package:ngdart/src/core/linker/views/component_view.dart' as import0;
import 'splicedialog.dart' as import1;
import 'package:ngdart/src/common/directives/ng_class.dart' as import2;
import 'package:ngforms/src/directives/default_value_accessor.dart' as import3;
import 'package:ngforms/src/directives/number_value_accessor.dart' as import4;
import 'package:ngforms/src/directives/control_value_accessor.dart' as import5;
import 'package:ngforms/src/directives/ng_model.dart' as import6;
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

final List<Object> styles$SpliceDialog = const [];

class ViewSpliceDialog0 extends import0.ComponentView<import1.SpliceDialog> {
  late final import2.NgClass _NgClass_2_5;
  late final import2.NgClass _NgClass_7_5;
  late final import2.NgClass _NgClass_10_5;
  late final import3.DefaultValueAccessor _DefaultValueAccessor_20_5;
  late final import4.NumberValueAccessor _NumberValueAccessor_20_6;
  late final List<import5.ControlValueAccessor<dynamic>> _NgValueAccessor_20_7;
  late final import6.NgModel _NgModel_20_8;
  late final import3.DefaultValueAccessor _DefaultValueAccessor_27_5;
  late final import4.NumberValueAccessor _NumberValueAccessor_27_6;
  late final List<import5.ControlValueAccessor<dynamic>> _NgValueAccessor_27_7;
  late final import6.NgModel _NgModel_27_8;
  Object? _expr_0;
  Object? _expr_2;
  Object? _expr_4;
  Object? _expr_5;
  Object? _expr_6;
  Object? _expr_7;
  late final import7.DivElement _el_0;
  static import8.ComponentStyles? _componentStyles;
  ViewSpliceDialog0(import9.View parentView, int parentIndex) : super(parentView, parentIndex, import10.ChangeDetectionCheckedState.checkAlways) {
    this.initComponentStyles();
    this.rootElement = import11.unsafeCast(import7.document.createElement('splice-dialog'));
  }
  static String? get _debugComponentUrl {
    return (import11.isDevMode ? 'asset:np8080/lib/src/dialog/splice/splicedialog.dart' : null);
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
    this.updateChildClass(_el_2, 'spliceDialogPanel');
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
    final _text_8 = import12.appendText(_el_7, 'Splice');
    final _text_9 = import12.appendText(_el_2, '\r\n        ');
    final _el_10 = import12.appendDiv(doc, _el_2);
    import12.setAttribute(_el_10, 'style', 'text-align: center;padding: 10px');
    this._NgClass_10_5 = import2.NgClass(_el_10);
    if (import13.isDevToolsEnabled) {
      import13.Inspector.instance.registerDirective(_el_10, this._NgClass_10_5);
    }
    final _text_11 = import12.appendText(_el_10, '\r\n            ');
    final _el_12 = import12.appendDiv(doc, _el_10);
    import12.setAttribute(_el_12, 'style', 'margin-left: 20px;text-align: left');
    final _text_13 = import12.appendText(_el_12, '\r\n                ');
    final _el_14 = import12.appendDiv(doc, _el_12);
    final _text_15 = import12.appendText(_el_14, 'Number of Characters To Remove');
    final _text_16 = import12.appendText(_el_12, '\r\n                ');
    final _el_17 = import12.appendElement<import7.HtmlElement>(doc, _el_12, 'label');
    import12.setAttribute(_el_17, 'style', 'display:inline-block;width: 130px');
    final _text_18 = import12.appendText(_el_17, 'From Start');
    final _text_19 = import12.appendText(_el_12, '\r\n                ');
    final _el_20 = import12.appendElement<import7.InputElement>(doc, _el_12, 'input');
    import12.setAttribute(_el_20, 'id', 'preTextbox');
    import12.setAttribute(_el_20, 'min', '0');
    import12.setAttribute(_el_20, 'placeholder', 'Type text here...');
    import12.setAttribute(_el_20, 'type', 'number');
    this._DefaultValueAccessor_20_5 = import3.DefaultValueAccessor(_el_20);
    this._NumberValueAccessor_20_6 = import4.NumberValueAccessor(_el_20);
    this._NgValueAccessor_20_7 = [this._DefaultValueAccessor_20_5, this._NumberValueAccessor_20_6];
    this._NgModel_20_8 = import6.NgModel(null, this._NgValueAccessor_20_7);
    if (import13.isDevToolsEnabled) {
      import13.Inspector.instance.registerDirective(_el_20, this._DefaultValueAccessor_20_5);
      import13.Inspector.instance.registerDirective(_el_20, this._NumberValueAccessor_20_6);
      import13.Inspector.instance.registerDirective(_el_20, this._NgModel_20_8);
    }
    final _text_21 = import12.appendText(_el_12, '\r\n                ');
    final _el_22 = import12.appendElement<import7.HtmlElement>(doc, _el_12, 'br');
    final _text_23 = import12.appendText(_el_12, '\r\n                ');
    final _el_24 = import12.appendElement<import7.HtmlElement>(doc, _el_12, 'label');
    import12.setAttribute(_el_24, 'style', 'display:inline-block;width: 130px');
    final _text_25 = import12.appendText(_el_24, 'From End');
    final _text_26 = import12.appendText(_el_12, '\r\n                ');
    final _el_27 = import12.appendElement<import7.InputElement>(doc, _el_12, 'input');
    import12.setAttribute(_el_27, 'min', '0');
    import12.setAttribute(_el_27, 'placeholder', 'Type text here...');
    import12.setAttribute(_el_27, 'type', 'number');
    this._DefaultValueAccessor_27_5 = import3.DefaultValueAccessor(_el_27);
    this._NumberValueAccessor_27_6 = import4.NumberValueAccessor(_el_27);
    this._NgValueAccessor_27_7 = [this._DefaultValueAccessor_27_5, this._NumberValueAccessor_27_6];
    this._NgModel_27_8 = import6.NgModel(null, this._NgValueAccessor_27_7);
    if (import13.isDevToolsEnabled) {
      import13.Inspector.instance.registerDirective(_el_27, this._DefaultValueAccessor_27_5);
      import13.Inspector.instance.registerDirective(_el_27, this._NumberValueAccessor_27_6);
      import13.Inspector.instance.registerDirective(_el_27, this._NgModel_27_8);
    }
    final _text_28 = import12.appendText(_el_12, '\r\n\r\n                ');
    final _el_29 = import12.appendDiv(doc, _el_12);
    this.updateChildClass(_el_29, 'footer');
    final _text_30 = import12.appendText(_el_29, '\r\n                    ');
    final _el_31 = import12.appendElement<import7.ButtonElement>(doc, _el_29, 'button');
    this.updateChildClass(_el_31, 'actionButton');
    final _text_32 = import12.appendText(_el_31, 'Splice');
    final _text_33 = import12.appendText(_el_29, '\r\n                    ');
    final _el_34 = import12.appendElement<import7.ButtonElement>(doc, _el_29, 'button');
    this.updateChildClass(_el_34, 'closeButton light-primary-color');
    final _text_35 = import12.appendText(_el_34, 'Close');
    final _text_36 = import12.appendText(_el_29, '\r\n                ');
    final _text_37 = import12.appendText(_el_12, '\r\n            ');
    final _text_38 = import12.appendText(_el_10, '\r\n        ');
    final _text_39 = import12.appendText(_el_2, '\r\n    ');
    final _text_40 = import12.appendText(this._el_0, '\r\n');
    _el_4.addEventListener('click', this.eventHandler0(_ctx.close));
    _el_20.addEventListener('blur', this.eventHandler1(this._handleEvent_0));
    _el_20.addEventListener('input', this.eventHandler1(this._handleEvent_1));
    _el_20.addEventListener('change', this.eventHandler1(this._handleEvent_2));
    final subscription_0 = this._NgModel_20_8.update.listen(this.eventHandler1(this._handleEvent_3));
    _el_27.addEventListener('blur', this.eventHandler1(this._handleEvent_4));
    _el_27.addEventListener('input', this.eventHandler1(this._handleEvent_5));
    _el_27.addEventListener('change', this.eventHandler1(this._handleEvent_6));
    final subscription_1 = this._NgModel_27_8.update.listen(this.eventHandler1(this._handleEvent_7));
    _el_31.addEventListener('click', this.eventHandler0(_ctx.performSplice));
    _el_34.addEventListener('click', this.eventHandler0(_ctx.closeTheDialog));
    this.initSubscriptions([subscription_0, subscription_1]);
  }

  @override
  dynamic injectorGetInternal(dynamic token, int nodeIndex, dynamic notFoundResult) {
    if ((20 == nodeIndex)) {
      if (identical(token, const import14.MultiToken<import15.ControlValueAccessor<dynamic>>('NgValueAccessor'))) {
        return this._NgValueAccessor_20_7;
      }
      if ((identical(token, import6.NgModel) || identical(token, import16.NgControl))) {
        return this._NgModel_20_8;
      }
    }
    if ((27 == nodeIndex)) {
      if (identical(token, const import14.MultiToken<import15.ControlValueAccessor<dynamic>>('NgValueAccessor'))) {
        return this._NgValueAccessor_27_7;
      }
      if ((identical(token, import6.NgModel) || identical(token, import16.NgControl))) {
        return this._NgModel_27_8;
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
        import13.Inspector.instance.recordInput(this._NgClass_2_5, 'class', 'spliceDialogPanel');
      }
      this._NgClass_2_5.initialClasses = 'spliceDialogPanel' /* REF:package:np8080/src/dialog/splice/splicedialog.html:52:77 */;
    }
    final currVal_2 = ((_ctx.getClass() + ' ') + _ctx.getBorderClass());
    if (import17.checkBinding(this._expr_2, currVal_2, 'getClass()+\' \'+getBorderClass()', 'package:np8080/src/dialog/splice/splicedialog.html')) {
      if (import13.isDevToolsEnabled) {
        import13.Inspector.instance.recordInput(this._NgClass_2_5, 'ngClass', currVal_2);
      }
      this._NgClass_2_5.rawClass = currVal_2 /* REF:package:np8080/src/dialog/splice/splicedialog.html:78:121 */;
      this._expr_2 = currVal_2;
    }
    if ((!import17.debugThrowIfChanged)) {
      this._NgClass_2_5.ngDoCheck();
    }
    if (firstCheck) {
      if (import13.isDevToolsEnabled) {
        import13.Inspector.instance.recordInput(this._NgClass_7_5, 'class', 'header');
      }
      this._NgClass_7_5.initialClasses = 'header' /* REF:package:np8080/src/dialog/splice/splicedialog.html:196:210 */;
    }
    final currVal_4 = _ctx.getHeaderClass();
    if (import17.checkBinding(this._expr_4, currVal_4, 'getHeaderClass()', 'package:np8080/src/dialog/splice/splicedialog.html')) {
      if (import13.isDevToolsEnabled) {
        import13.Inspector.instance.recordInput(this._NgClass_7_5, 'ngClass', currVal_4);
      }
      this._NgClass_7_5.rawClass = currVal_4 /* REF:package:np8080/src/dialog/splice/splicedialog.html:211:239 */;
      this._expr_4 = currVal_4;
    }
    if ((!import17.debugThrowIfChanged)) {
      this._NgClass_7_5.ngDoCheck();
    }
    final currVal_5 = _ctx.getClass();
    if (import17.checkBinding(this._expr_5, currVal_5, 'getClass()', 'package:np8080/src/dialog/splice/splicedialog.html')) {
      if (import13.isDevToolsEnabled) {
        import13.Inspector.instance.recordInput(this._NgClass_10_5, 'ngClass', currVal_5);
      }
      this._NgClass_10_5.rawClass = currVal_5 /* REF:package:np8080/src/dialog/splice/splicedialog.html:308:330 */;
      this._expr_5 = currVal_5;
    }
    if ((!import17.debugThrowIfChanged)) {
      this._NgClass_10_5.ngDoCheck();
    }
    changed = false;
    final currVal_6 = _ctx.startSplice;
    if (import17.checkBinding(this._expr_6, currVal_6, 'startSplice', 'package:np8080/src/dialog/splice/splicedialog.html')) {
      if (import13.isDevToolsEnabled) {
        import13.Inspector.instance.recordInput(this._NgModel_20_8, 'ngModel', currVal_6);
      }
      this._NgModel_20_8.model = currVal_6 /* REF:package:np8080/src/dialog/splice/splicedialog.html:608:633 */;
      changed = true;
      this._expr_6 = currVal_6;
    }
    if (changed) {
      this._NgModel_20_8.ngAfterChanges();
    }
    if (((!import17.debugThrowIfChanged) && firstCheck)) {
      this._NgModel_20_8.ngOnInit();
    }
    changed = false;
    final currVal_7 = _ctx.endSplice;
    if (import17.checkBinding(this._expr_7, currVal_7, 'endSplice', 'package:np8080/src/dialog/splice/splicedialog.html')) {
      if (import13.isDevToolsEnabled) {
        import13.Inspector.instance.recordInput(this._NgModel_27_8, 'ngModel', currVal_7);
      }
      this._NgModel_27_8.model = currVal_7 /* REF:package:np8080/src/dialog/splice/splicedialog.html:836:859 */;
      changed = true;
      this._expr_7 = currVal_7;
    }
    if (changed) {
      this._NgModel_27_8.ngAfterChanges();
    }
    if (((!import17.debugThrowIfChanged) && firstCheck)) {
      this._NgModel_27_8.ngOnInit();
    }
    final currVal_0 = (!_ctx.showDialog);
    if (import17.checkBinding(this._expr_0, currVal_0, '!showDialog', 'package:np8080/src/dialog/splice/splicedialog.html')) {
      import12.setProperty(this._el_0, 'hidden', currVal_0) /* REF:package:np8080/src/dialog/splice/splicedialog.html:18:40 */;
      this._expr_0 = currVal_0;
    }
  }

  @override
  void destroyInternal() {
    this._NgClass_7_5.ngOnDestroy();
    this._NgClass_10_5.ngOnDestroy();
    this._NgClass_2_5.ngOnDestroy();
  }

  void _handleEvent_0($event) {
    this._DefaultValueAccessor_20_5.touchHandler();
    this._NumberValueAccessor_20_6.touchHandler();
  }

  void _handleEvent_1($event) {
    this._DefaultValueAccessor_20_5.handleChange($event.target.value);
    this._NumberValueAccessor_20_6.handleChange($event.target.value);
  }

  void _handleEvent_2($event) {
    this._NumberValueAccessor_20_6.handleChange($event.target.value);
  }

  void _handleEvent_3($event) {
    final _ctx = this.ctx;
    _ctx.startSplice = $event;
  }

  void _handleEvent_4($event) {
    this._DefaultValueAccessor_27_5.touchHandler();
    this._NumberValueAccessor_27_6.touchHandler();
  }

  void _handleEvent_5($event) {
    this._DefaultValueAccessor_27_5.handleChange($event.target.value);
    this._NumberValueAccessor_27_6.handleChange($event.target.value);
  }

  void _handleEvent_6($event) {
    this._NumberValueAccessor_27_6.handleChange($event.target.value);
  }

  void _handleEvent_7($event) {
    final _ctx = this.ctx;
    _ctx.endSplice = $event;
  }

  static void _debugClearComponentStyles() {
    _componentStyles = null;
  }

  void initComponentStyles() {
    var styles = _componentStyles;
    if ((styles == null)) {
      _componentStyles = (styles = import8.ComponentStyles.unscoped(styles$SpliceDialog, _debugComponentUrl));
      if (import11.isDevMode) {
        import8.ComponentStyles.debugOnClear(_debugClearComponentStyles);
      }
    }
    this.componentStyles = styles;
  }
}

const _SpliceDialogNgFactory = ComponentFactory<import1.SpliceDialog>('splice-dialog', viewFactory_SpliceDialogHost0);
ComponentFactory<import1.SpliceDialog> get SpliceDialogNgFactory {
  return _SpliceDialogNgFactory;
}

ComponentFactory<import1.SpliceDialog> createSpliceDialogFactory() {
  return ComponentFactory('splice-dialog', viewFactory_SpliceDialogHost0);
}

final List<Object> styles$SpliceDialogHost = const [];

class _ViewSpliceDialogHost0 extends import19.HostView<import1.SpliceDialog> {
  @override
  void build() {
    this.componentView = ViewSpliceDialog0(this, 0);
    final _el_0 = this.componentView.rootElement;
    this.component = (import11.isDevMode
        ? import20.debugInjectorWrap(import1.SpliceDialog, () {
            return import1.SpliceDialog(this.injectorGet(import21.TextProcessingService, this.parentIndex), this.injectorGet(import22.TextareaDomService, this.parentIndex), this.injectorGet(import23.ThemeService, this.parentIndex), this.injectorGet(import24.EventBusService, this.parentIndex));
          })
        : import1.SpliceDialog(this.injectorGet(import21.TextProcessingService, this.parentIndex), this.injectorGet(import22.TextareaDomService, this.parentIndex), this.injectorGet(import23.ThemeService, this.parentIndex), this.injectorGet(import24.EventBusService, this.parentIndex)));
    this.initRootNode(_el_0);
  }
}

import19.HostView<import1.SpliceDialog> viewFactory_SpliceDialogHost0() {
  return _ViewSpliceDialogHost0();
}
