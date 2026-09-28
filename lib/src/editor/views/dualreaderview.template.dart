// **************************************************************************
// Generator: AngularDart Compiler
// **************************************************************************

import 'dualreaderview.dart';
import 'package:ngdart/src/core/linker/views/component_view.dart' as import0;
import 'dualreaderview.dart' as import1;
import 'package:ngdart/src/runtime/text_binding.dart' as import2;
import 'package:ngdart/src/common/directives/ng_class.dart' as import3;
import 'package:ngforms/src/directives/checkbox_value_accessor.dart' as import4;
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
import 'package:ngdart/src/runtime/interpolate.dart' as import18;
import 'package:ngdart/angular.dart';
import 'package:ngdart/src/core/linker/views/host_view.dart' as import20;
import 'package:ngdart/src/di/errors.dart' as import21;
import '../../services/themeservice.dart' as import22;
import '../../services/eventbusservice.dart' as import23;

final List<Object> styles$DualReaderView = const [];

class ViewDualReaderView0 extends import0.ComponentView<import1.DualReaderView> {
  final import2.TextBinding _textBinding_9 = import2.TextBinding();
  final import2.TextBinding _textBinding_12 = import2.TextBinding();
  late final import3.NgClass _NgClass_0_5;
  late final import4.CheckboxControlValueAccessor _CheckboxControlValueAccessor_5_5;
  late final List<import5.ControlValueAccessor<dynamic>> _NgValueAccessor_5_6;
  late final import6.NgModel _NgModel_5_7;
  late final import3.NgClass _NgClass_8_5;
  late final import3.NgClass _NgClass_11_5;
  Object? _expr_0;
  Object? _expr_2;
  Object? _expr_3;
  Object? _expr_4;
  Object? _expr_5;
  late final import7.DivElement _el_0;
  static import8.ComponentStyles? _componentStyles;
  ViewDualReaderView0(import9.View parentView, int parentIndex) : super(parentView, parentIndex, import10.ChangeDetectionCheckedState.checkAlways) {
    this.initComponentStyles();
    this.rootElement = import11.unsafeCast(import7.document.createElement('dualreader-view'));
  }
  static String? get _debugComponentUrl {
    return (import11.isDevMode ? 'asset:np8080/lib/src/editor/views/dualreaderview.dart' : null);
  }

  @override
  void build() {
    final _ctx = this.ctx;
    final parentRenderNode = this.initViewRoot();
    final doc = import7.document;
    this._el_0 = import12.appendDiv(doc, parentRenderNode);
    this.updateChildClass(this._el_0, 'fullScreenViewPanel');
    this._NgClass_0_5 = import3.NgClass(this._el_0);
    if (import13.isDevToolsEnabled) {
      import13.Inspector.instance.registerDirective(this._el_0, this._NgClass_0_5);
    }
    final _el_1 = import12.appendDiv(doc, this._el_0);
    import12.setAttribute(_el_1, 'style', 'text-align: left;padding: 5px;padding-left:30px;font-size: small');
    final _el_2 = import12.appendElement<import7.ButtonElement>(doc, _el_1, 'button');
    this.updateChildClass(_el_2, 'closeTextButton');
    final _text_3 = import12.appendText(_el_2, 'Close');
    final _el_4 = import12.appendDiv(doc, _el_1);
    import12.setAttribute(_el_4, 'style', 'padding-top: 4px;');
    final _el_5 = import12.appendElement<import7.InputElement>(doc, _el_4, 'input');
    import12.setAttribute(_el_5, 'type', 'checkbox');
    this._CheckboxControlValueAccessor_5_5 = import4.CheckboxControlValueAccessor(_el_5);
    this._NgValueAccessor_5_6 = [this._CheckboxControlValueAccessor_5_5];
    this._NgModel_5_7 = import6.NgModel(null, this._NgValueAccessor_5_6);
    if (import13.isDevToolsEnabled) {
      import13.Inspector.instance.registerDirective(_el_5, this._CheckboxControlValueAccessor_5_5);
      import13.Inspector.instance.registerDirective(_el_5, this._NgModel_5_7);
    }
    final _text_6 = import12.appendText(_el_4, ' Lock scrolling');
    final _el_7 = import12.appendDiv(doc, this._el_0);
    import12.setAttribute(_el_7, 'style', 'padding-top: 5px;height:100%;');
    final _el_8 = import12.appendElement<import7.TextAreaElement>(doc, _el_7, 'textarea');
    import12.setAttribute(_el_8, 'id', 'leftText');
    import12.setAttribute(_el_8, 'readonly', '');
    import12.setAttribute(_el_8, 'style', 'width:calc(47%);height:calc(100% - 50px);display: inline-block');
    this._NgClass_8_5 = import3.NgClass(_el_8);
    if (import13.isDevToolsEnabled) {
      import13.Inspector.instance.registerDirective(_el_8, this._NgClass_8_5);
    }
    _el_8.append(this._textBinding_9.element);
    final _text_10 = import12.appendText(_el_7, ' ');
    final _el_11 = import12.appendElement<import7.TextAreaElement>(doc, _el_7, 'textarea');
    import12.setAttribute(_el_11, 'id', 'rightText');
    import12.setAttribute(_el_11, 'readonly', '');
    import12.setAttribute(_el_11, 'style', 'width:calc(47%);height:calc(100% - 50px);display: inline-block');
    this._NgClass_11_5 = import3.NgClass(_el_11);
    if (import13.isDevToolsEnabled) {
      import13.Inspector.instance.registerDirective(_el_11, this._NgClass_11_5);
    }
    _el_11.append(this._textBinding_12.element);
    _el_2.addEventListener('click', this.eventHandler0(_ctx.close));
    _el_5.addEventListener('blur', this.eventHandler0(this._CheckboxControlValueAccessor_5_5.touchHandler));
    _el_5.addEventListener('change', this.eventHandler1(this._handleEvent_0));
    final subscription_0 = this._NgModel_5_7.update.listen(this.eventHandler1(this._handleEvent_1));
    _el_8.addEventListener('scroll', this.eventHandler1(_ctx.scrollLeft));
    _el_11.addEventListener('scroll', this.eventHandler1(_ctx.scrollRight));
    this.initSubscriptions([subscription_0]);
  }

  @override
  dynamic injectorGetInternal(dynamic token, int nodeIndex, dynamic notFoundResult) {
    if ((5 == nodeIndex)) {
      if (identical(token, const import14.MultiToken<import15.ControlValueAccessor<dynamic>>('NgValueAccessor'))) {
        return this._NgValueAccessor_5_6;
      }
      if ((identical(token, import6.NgModel) || identical(token, import16.NgControl))) {
        return this._NgModel_5_7;
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
        import13.Inspector.instance.recordInput(this._NgClass_0_5, 'class', 'fullScreenViewPanel');
      }
      this._NgClass_0_5.initialClasses = 'fullScreenViewPanel' /* REF:package:np8080/src/editor/views/dualreaderview.html:5:32 */;
    }
    final currVal_2 = _ctx.getClass();
    if (import17.checkBinding(this._expr_2, currVal_2, 'getClass()', 'package:np8080/src/editor/views/dualreaderview.html')) {
      if (import13.isDevToolsEnabled) {
        import13.Inspector.instance.recordInput(this._NgClass_0_5, 'ngClass', currVal_2);
      }
      this._NgClass_0_5.rawClass = currVal_2 /* REF:package:np8080/src/editor/views/dualreaderview.html:59:81 */;
      this._expr_2 = currVal_2;
    }
    if ((!import17.debugThrowIfChanged)) {
      this._NgClass_0_5.ngDoCheck();
    }
    changed = false;
    final currVal_3 = _ctx.lockScrolling;
    if (import17.checkBinding(this._expr_3, currVal_3, 'lockScrolling', 'package:np8080/src/editor/views/dualreaderview.html')) {
      if (import13.isDevToolsEnabled) {
        import13.Inspector.instance.recordInput(this._NgModel_5_7, 'ngModel', currVal_3);
      }
      this._NgModel_5_7.model = currVal_3 /* REF:package:np8080/src/editor/views/dualreaderview.html:304:331 */;
      changed = true;
      this._expr_3 = currVal_3;
    }
    if (changed) {
      this._NgModel_5_7.ngAfterChanges();
    }
    if (((!import17.debugThrowIfChanged) && firstCheck)) {
      this._NgModel_5_7.ngOnInit();
    }
    final currVal_4 = ((_ctx.getDocumentClass() + ' ') + _ctx.getBorderClass());
    if (import17.checkBinding(this._expr_4, currVal_4, 'getDocumentClass()+\' \'+getBorderClass()', 'package:np8080/src/editor/views/dualreaderview.html')) {
      if (import13.isDevToolsEnabled) {
        import13.Inspector.instance.recordInput(this._NgClass_8_5, 'ngClass', currVal_4);
      }
      this._NgClass_8_5.rawClass = currVal_4 /* REF:package:np8080/src/editor/views/dualreaderview.html:444:495 */;
      this._expr_4 = currVal_4;
    }
    if ((!import17.debugThrowIfChanged)) {
      this._NgClass_8_5.ngDoCheck();
    }
    final currVal_5 = ((_ctx.getDocumentClass() + ' ') + _ctx.getBorderClass());
    if (import17.checkBinding(this._expr_5, currVal_5, 'getDocumentClass()+ \' \'+getBorderClass()', 'package:np8080/src/editor/views/dualreaderview.html')) {
      if (import13.isDevToolsEnabled) {
        import13.Inspector.instance.recordInput(this._NgClass_11_5, 'ngClass', currVal_5);
      }
      this._NgClass_11_5.rawClass = currVal_5 /* REF:package:np8080/src/editor/views/dualreaderview.html:696:748 */;
      this._expr_5 = currVal_5;
    }
    if ((!import17.debugThrowIfChanged)) {
      this._NgClass_11_5.ngDoCheck();
    }
    final currVal_0 = (!_ctx.showComponent);
    if (import17.checkBinding(this._expr_0, currVal_0, '!showComponent', 'package:np8080/src/editor/views/dualreaderview.html')) {
      import12.setProperty(this._el_0, 'hidden', currVal_0) /* REF:package:np8080/src/editor/views/dualreaderview.html:33:58 */;
      this._expr_0 = currVal_0;
    }
    this._textBinding_9.updateText(import18.interpolateString0(_ctx.note1.text)) /* REF:package:np8080/src/editor/views/dualreaderview.html:636:650 */;
    this._textBinding_12.updateText(import18.interpolateString0(_ctx.note2.text)) /* REF:package:np8080/src/editor/views/dualreaderview.html:917:931 */;
  }

  @override
  void destroyInternal() {
    this._NgClass_8_5.ngOnDestroy();
    this._NgClass_11_5.ngOnDestroy();
    this._NgClass_0_5.ngOnDestroy();
  }

  void _handleEvent_0($event) {
    this._CheckboxControlValueAccessor_5_5.handleChange($event.target.checked);
  }

  void _handleEvent_1($event) {
    final _ctx = this.ctx;
    _ctx.lockScrolling = $event;
  }

  static void _debugClearComponentStyles() {
    _componentStyles = null;
  }

  void initComponentStyles() {
    var styles = _componentStyles;
    if ((styles == null)) {
      _componentStyles = (styles = import8.ComponentStyles.unscoped(styles$DualReaderView, _debugComponentUrl));
      if (import11.isDevMode) {
        import8.ComponentStyles.debugOnClear(_debugClearComponentStyles);
      }
    }
    this.componentStyles = styles;
  }
}

const _DualReaderViewNgFactory = ComponentFactory<import1.DualReaderView>('dualreader-view', viewFactory_DualReaderViewHost0);
ComponentFactory<import1.DualReaderView> get DualReaderViewNgFactory {
  return _DualReaderViewNgFactory;
}

ComponentFactory<import1.DualReaderView> createDualReaderViewFactory() {
  return ComponentFactory('dualreader-view', viewFactory_DualReaderViewHost0);
}

final List<Object> styles$DualReaderViewHost = const [];

class _ViewDualReaderViewHost0 extends import20.HostView<import1.DualReaderView> {
  @override
  void build() {
    this.componentView = ViewDualReaderView0(this, 0);
    final _el_0 = this.componentView.rootElement;
    this.component = (import11.isDevMode
        ? import21.debugInjectorWrap(import1.DualReaderView, () {
            return import1.DualReaderView(this.injectorGet(import22.ThemeService, this.parentIndex), this.injectorGet(import23.EventBusService, this.parentIndex));
          })
        : import1.DualReaderView(this.injectorGet(import22.ThemeService, this.parentIndex), this.injectorGet(import23.EventBusService, this.parentIndex)));
    this.initRootNode(_el_0);
  }

  @override
  void detectChangesInternal() {
    bool firstCheck = this.firstCheck;
    if ((!import17.debugThrowIfChanged)) {
      if (firstCheck) {
        this.component.ngAfterContentInit();
      }
    }
    this.componentView.detectChanges();
  }
}

import20.HostView<import1.DualReaderView> viewFactory_DualReaderViewHost0() {
  return _ViewDualReaderViewHost0();
}
