// **************************************************************************
// Generator: AngularDart Compiler
// **************************************************************************

import 'splitdialog.dart';
import 'package:ngdart/src/core/linker/views/component_view.dart' as import0;
import 'splitdialog.dart' as import1;
import 'package:ngdart/src/common/directives/ng_class.dart' as import2;
import 'package:ngforms/src/directives/default_value_accessor.dart' as import3;
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
import '../../services/textprocessingservice.dart' as import20;
import '../../services/textareadomservice.dart' as import21;
import '../../services/themeservice.dart' as import22;
import '../../services/eventbusservice.dart' as import23;

final List<Object> styles$SplitDialog = const [];

class ViewSplitDialog0 extends import0.ComponentView<import1.SplitDialog> {
  late final import2.NgClass _NgClass_2_5;
  late final import2.NgClass _NgClass_7_5;
  late final import2.NgClass _NgClass_10_5;
  late final import3.DefaultValueAccessor _DefaultValueAccessor_17_5;
  late final List<import4.ControlValueAccessor<dynamic>> _NgValueAccessor_17_6;
  late final import5.NgModel _NgModel_17_7;
  Object? _expr_0;
  Object? _expr_2;
  Object? _expr_4;
  Object? _expr_5;
  Object? _expr_6;
  late final import6.DivElement _el_0;
  static import7.ComponentStyles? _componentStyles;
  ViewSplitDialog0(import8.View parentView, int parentIndex) : super(parentView, parentIndex, import9.ChangeDetectionCheckedState.checkAlways) {
    this.initComponentStyles();
    this.rootElement = import10.unsafeCast(import6.document.createElement('split-dialog'));
  }
  static String? get _debugComponentUrl {
    return (import10.isDevMode ? 'asset:np8080/lib/src/dialog/split/splitdialog.dart' : null);
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
    this.updateChildClass(_el_2, 'dialogPanel');
    import11.setAttribute(_el_2, 'style', 'width: 275px');
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
    this.updateChildClass(_el_7, 'replaceDialogHeader');
    this._NgClass_7_5 = import2.NgClass(_el_7);
    if (import12.isDevToolsEnabled) {
      import12.Inspector.instance.registerDirective(_el_7, this._NgClass_7_5);
    }
    final _text_8 = import11.appendText(_el_7, 'Split');
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
    final _el_14 = import11.appendElement<import6.HtmlElement>(doc, _el_12, 'label');
    final _text_15 = import11.appendText(_el_14, 'Delimiter');
    final _text_16 = import11.appendText(_el_12, '\r\n                ');
    final _el_17 = import11.appendElement<import6.InputElement>(doc, _el_12, 'input');
    import11.setAttribute(_el_17, 'id', 'delimiterTextbox');
    import11.setAttribute(_el_17, 'placeholder', 'Type text here...');
    _el_17.tabIndex = 221;
    import11.setAttribute(_el_17, 'type', 'text');
    this._DefaultValueAccessor_17_5 = import3.DefaultValueAccessor(_el_17);
    this._NgValueAccessor_17_6 = [this._DefaultValueAccessor_17_5];
    this._NgModel_17_7 = import5.NgModel(null, this._NgValueAccessor_17_6);
    if (import12.isDevToolsEnabled) {
      import12.Inspector.instance.registerDirective(_el_17, this._DefaultValueAccessor_17_5);
      import12.Inspector.instance.registerDirective(_el_17, this._NgModel_17_7);
    }
    final _text_18 = import11.appendText(_el_12, '\r\n                ');
    final _el_19 = import11.appendElement<import6.HtmlElement>(doc, _el_12, 'br');
    final _text_20 = import11.appendText(_el_12, '\r\n                ');
    final _el_21 = import11.appendElement<import6.HtmlElement>(doc, _el_12, 'br');
    final _text_22 = import11.appendText(_el_12, '\r\n            ');
    final _text_23 = import11.appendText(_el_10, '\r\n            ');
    final _el_24 = import11.appendDiv(doc, _el_10);
    this.updateChildClass(_el_24, 'footer');
    final _text_25 = import11.appendText(_el_24, '\r\n                ');
    final _el_26 = import11.appendElement<import6.ButtonElement>(doc, _el_24, 'button');
    this.updateChildClass(_el_26, 'actionButton');
    final _text_27 = import11.appendText(_el_26, 'Split');
    final _text_28 = import11.appendText(_el_24, '\r\n                ');
    final _el_29 = import11.appendElement<import6.ButtonElement>(doc, _el_24, 'button');
    this.updateChildClass(_el_29, 'closeButton light-primary-color');
    final _text_30 = import11.appendText(_el_29, 'Close');
    final _text_31 = import11.appendText(_el_24, '\r\n            ');
    final _text_32 = import11.appendText(_el_10, '\r\n        ');
    final _text_33 = import11.appendText(_el_2, '\r\n    ');
    final _text_34 = import11.appendText(this._el_0, '\r\n');
    _el_4.addEventListener('click', this.eventHandler0(_ctx.close));
    _el_17.addEventListener('blur', this.eventHandler0(this._DefaultValueAccessor_17_5.touchHandler));
    _el_17.addEventListener('input', this.eventHandler1(this._handleEvent_0));
    final subscription_0 = this._NgModel_17_7.update.listen(this.eventHandler1(this._handleEvent_1));
    _el_26.addEventListener('click', this.eventHandler0(_ctx.performSplit));
    _el_29.addEventListener('click', this.eventHandler0(_ctx.closeTheDialog));
    this.initSubscriptions([subscription_0]);
  }

  @override
  dynamic injectorGetInternal(dynamic token, int nodeIndex, dynamic notFoundResult) {
    if ((17 == nodeIndex)) {
      if (identical(token, const import13.MultiToken<import14.ControlValueAccessor<dynamic>>('NgValueAccessor'))) {
        return this._NgValueAccessor_17_6;
      }
      if ((identical(token, import5.NgModel) || identical(token, import15.NgControl))) {
        return this._NgModel_17_7;
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
        import12.Inspector.instance.recordInput(this._NgClass_2_5, 'class', 'dialogPanel');
      }
      this._NgClass_2_5.initialClasses = 'dialogPanel' /* REF:package:np8080/src/dialog/split/splitdialog.tpl.html:52:71 */;
    }
    final currVal_2 = ((_ctx.getClass() + ' ') + _ctx.getBorderClass());
    if (import16.checkBinding(this._expr_2, currVal_2, 'getClass()+\' \'+getBorderClass()', 'package:np8080/src/dialog/split/splitdialog.tpl.html')) {
      if (import12.isDevToolsEnabled) {
        import12.Inspector.instance.recordInput(this._NgClass_2_5, 'ngClass', currVal_2);
      }
      this._NgClass_2_5.rawClass = currVal_2 /* REF:package:np8080/src/dialog/split/splitdialog.tpl.html:93:136 */;
      this._expr_2 = currVal_2;
    }
    if ((!import16.debugThrowIfChanged)) {
      this._NgClass_2_5.ngDoCheck();
    }
    if (firstCheck) {
      if (import12.isDevToolsEnabled) {
        import12.Inspector.instance.recordInput(this._NgClass_7_5, 'class', 'replaceDialogHeader');
      }
      this._NgClass_7_5.initialClasses = 'replaceDialogHeader' /* REF:package:np8080/src/dialog/split/splitdialog.tpl.html:211:238 */;
    }
    final currVal_4 = _ctx.getHeaderClass();
    if (import16.checkBinding(this._expr_4, currVal_4, 'getHeaderClass()', 'package:np8080/src/dialog/split/splitdialog.tpl.html')) {
      if (import12.isDevToolsEnabled) {
        import12.Inspector.instance.recordInput(this._NgClass_7_5, 'ngClass', currVal_4);
      }
      this._NgClass_7_5.rawClass = currVal_4 /* REF:package:np8080/src/dialog/split/splitdialog.tpl.html:239:267 */;
      this._expr_4 = currVal_4;
    }
    if ((!import16.debugThrowIfChanged)) {
      this._NgClass_7_5.ngDoCheck();
    }
    final currVal_5 = _ctx.getClass();
    if (import16.checkBinding(this._expr_5, currVal_5, 'getClass()', 'package:np8080/src/dialog/split/splitdialog.tpl.html')) {
      if (import12.isDevToolsEnabled) {
        import12.Inspector.instance.recordInput(this._NgClass_10_5, 'ngClass', currVal_5);
      }
      this._NgClass_10_5.rawClass = currVal_5 /* REF:package:np8080/src/dialog/split/splitdialog.tpl.html:337:359 */;
      this._expr_5 = currVal_5;
    }
    if ((!import16.debugThrowIfChanged)) {
      this._NgClass_10_5.ngDoCheck();
    }
    changed = false;
    final currVal_6 = _ctx.delimiter;
    if (import16.checkBinding(this._expr_6, currVal_6, 'delimiter', 'package:np8080/src/dialog/split/splitdialog.tpl.html')) {
      if (import12.isDevToolsEnabled) {
        import12.Inspector.instance.recordInput(this._NgModel_17_7, 'ngModel', currVal_6);
      }
      this._NgModel_17_7.model = currVal_6 /* REF:package:np8080/src/dialog/split/splitdialog.tpl.html:596:619 */;
      changed = true;
      this._expr_6 = currVal_6;
    }
    if (changed) {
      this._NgModel_17_7.ngAfterChanges();
    }
    if (((!import16.debugThrowIfChanged) && firstCheck)) {
      this._NgModel_17_7.ngOnInit();
    }
    final currVal_0 = (!_ctx.showDialog);
    if (import16.checkBinding(this._expr_0, currVal_0, '!showDialog', 'package:np8080/src/dialog/split/splitdialog.tpl.html')) {
      import11.setProperty(this._el_0, 'hidden', currVal_0) /* REF:package:np8080/src/dialog/split/splitdialog.tpl.html:18:40 */;
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
    this._DefaultValueAccessor_17_5.handleChange($event.target.value);
  }

  void _handleEvent_1($event) {
    final _ctx = this.ctx;
    _ctx.delimiter = $event;
  }

  static void _debugClearComponentStyles() {
    _componentStyles = null;
  }

  void initComponentStyles() {
    var styles = _componentStyles;
    if ((styles == null)) {
      _componentStyles = (styles = import7.ComponentStyles.unscoped(styles$SplitDialog, _debugComponentUrl));
      if (import10.isDevMode) {
        import7.ComponentStyles.debugOnClear(_debugClearComponentStyles);
      }
    }
    this.componentStyles = styles;
  }
}

const _SplitDialogNgFactory = ComponentFactory<import1.SplitDialog>('split-dialog', viewFactory_SplitDialogHost0);
ComponentFactory<import1.SplitDialog> get SplitDialogNgFactory {
  return _SplitDialogNgFactory;
}

ComponentFactory<import1.SplitDialog> createSplitDialogFactory() {
  return ComponentFactory('split-dialog', viewFactory_SplitDialogHost0);
}

final List<Object> styles$SplitDialogHost = const [];

class _ViewSplitDialogHost0 extends import18.HostView<import1.SplitDialog> {
  @override
  void build() {
    this.componentView = ViewSplitDialog0(this, 0);
    final _el_0 = this.componentView.rootElement;
    this.component = (import10.isDevMode
        ? import19.debugInjectorWrap(import1.SplitDialog, () {
            return import1.SplitDialog(this.injectorGet(import20.TextProcessingService, this.parentIndex), this.injectorGet(import21.TextareaDomService, this.parentIndex), this.injectorGet(import22.ThemeService, this.parentIndex), this.injectorGet(import23.EventBusService, this.parentIndex));
          })
        : import1.SplitDialog(this.injectorGet(import20.TextProcessingService, this.parentIndex), this.injectorGet(import21.TextareaDomService, this.parentIndex), this.injectorGet(import22.ThemeService, this.parentIndex), this.injectorGet(import23.EventBusService, this.parentIndex)));
    this.initRootNode(_el_0);
  }
}

import18.HostView<import1.SplitDialog> viewFactory_SplitDialogHost0() {
  return _ViewSplitDialogHost0();
}
