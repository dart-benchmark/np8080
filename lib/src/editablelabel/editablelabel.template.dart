// **************************************************************************
// Generator: AngularDart Compiler
// **************************************************************************

import 'editablelabel.dart';
import 'package:ngdart/src/core/linker/views/component_view.dart' as import0;
import 'editablelabel.dart' as import1;
import 'package:ngdart/src/runtime/text_binding.dart' as import2;
import 'package:ngforms/src/directives/default_value_accessor.dart' as import3;
import 'package:ngforms/src/directives/control_value_accessor.dart' as import4;
import 'package:ngforms/src/directives/ng_model.dart' as import5;
import 'package:ngdart/src/common/directives/ng_class.dart' as import6;
import 'dart:html' as import7;
import 'package:ngdart/src/core/linker/style_encapsulation.dart' as import8;
import 'package:ngdart/src/core/linker/views/view.dart' as import9;
import 'package:ngdart/src/meta/change_detection_constants.dart' as import10;
import 'package:ngdart/src/utilities.dart' as import11;
import 'package:ngdart/src/runtime/dom_helpers.dart' as import12;
import 'package:ngdart/src/devtools.dart' as import13;
import 'package:ngdart/src/core/linker/app_view_utils.dart' as import14;
import 'package:ngdart/src/meta/di_tokens.dart' as import15;
import 'package:ngforms/src/directives/control_value_accessor.dart' as import16;
import 'package:ngforms/src/directives/ng_control.dart' as import17;
import 'package:ngdart/src/runtime/check_binding.dart' as import18;
import 'package:ngdart/src/runtime/interpolate.dart' as import19;
import 'package:ngdart/angular.dart';
import 'package:ngdart/src/core/linker/views/host_view.dart' as import21;
import 'package:ngdart/src/di/errors.dart' as import22;
import '../services/themeservice.dart' as import23;
import '../services/eventbusservice.dart' as import24;

final List<Object> styles$EditableLabel = const [];

class ViewEditableLabel0 extends import0.ComponentView<import1.EditableLabel> {
  final import2.TextBinding _textBinding_6 = import2.TextBinding();
  late final import3.DefaultValueAccessor _DefaultValueAccessor_3_5;
  late final List<import4.ControlValueAccessor<dynamic>> _NgValueAccessor_3_6;
  late final import5.NgModel _NgModel_3_7;
  late final import6.NgClass _NgClass_4_5;
  Object? _expr_0;
  Object? _expr_1;
  Object? _expr_2;
  Object? _expr_3;
  Object? _expr_4;
  Object? _expr_5;
  Object? _expr_6;
  Object? _expr_8;
  late final import7.DivElement _el_0;
  late final import7.DivElement _el_1;
  late final import7.InputElement _el_3;
  late final import7.DivElement _el_4;
  static import8.ComponentStyles? _componentStyles;
  ViewEditableLabel0(import9.View parentView, int parentIndex) : super(parentView, parentIndex, import10.ChangeDetectionCheckedState.checkAlways) {
    this.initComponentStyles();
    this.rootElement = import11.unsafeCast(import7.document.createElement('editable-label'));
  }
  static String? get _debugComponentUrl {
    return (import11.isDevMode ? 'asset:np8080/lib/src/editablelabel/editablelabel.dart' : null);
  }

  @override
  void build() {
    final _ctx = this.ctx;
    final parentRenderNode = this.initViewRoot();
    final doc = import7.document;
    this._el_0 = import12.appendDiv(doc, parentRenderNode);
    this.updateChildClass(this._el_0, 'edit-label');
    this._el_1 = import12.appendDiv(doc, this._el_0);
    import12.setAttribute(this._el_1, 'style', 'font-size:2pt');
    final _text_2 = import12.appendText(this._el_1, ' ');
    this._el_3 = import12.appendElement<import7.InputElement>(doc, this._el_0, 'input');
    import12.setAttribute(this._el_3, 'style', 'background-color:beige;width:100%;border:0;padding:0;');
    this._el_3.tabIndex = 2;
    import12.setAttribute(this._el_3, 'type', 'text');
    this._DefaultValueAccessor_3_5 = import3.DefaultValueAccessor(this._el_3);
    this._NgValueAccessor_3_6 = [this._DefaultValueAccessor_3_5];
    this._NgModel_3_7 = import5.NgModel(null, this._NgValueAccessor_3_6);
    if (import13.isDevToolsEnabled) {
      import13.Inspector.instance.registerDirective(this._el_3, this._DefaultValueAccessor_3_5);
      import13.Inspector.instance.registerDirective(this._el_3, this._NgModel_3_7);
    }
    this._el_4 = import12.appendDiv(doc, this._el_0);
    this.updateChildClass(this._el_4, 'labelReadOnly');
    this._NgClass_4_5 = import6.NgClass(this._el_4);
    if (import13.isDevToolsEnabled) {
      import13.Inspector.instance.registerDirective(this._el_4, this._NgClass_4_5);
    }
    final _el_5 = import12.appendDiv(doc, this._el_4);
    import12.setAttribute(_el_5, 'style', 'width:calc(100% - 15px);display: inline-block');
    _el_5.append(this._textBinding_6.element);
    this._el_3.addEventListener('keyup', this.eventHandler0(_ctx.update));
    this._el_3.addEventListener('blur', this.eventHandler1(this._handleEvent_0));
    import14.appViewUtils.eventManager.addEventListener(this._el_3, 'keyup.enter', this.eventHandler0(_ctx.toggle));
    this._el_3.addEventListener('input', this.eventHandler1(this._handleEvent_1));
    final subscription_0 = this._NgModel_3_7.update.listen(this.eventHandler1(this._handleEvent_2));
    this._el_4.addEventListener('click', this.eventHandler0(_ctx.giveTabFocus));
    _el_5.addEventListener('dblclick', this.eventHandler0(_ctx.toggle));
    this.initSubscriptions([subscription_0]);
  }

  @override
  dynamic injectorGetInternal(dynamic token, int nodeIndex, dynamic notFoundResult) {
    if ((3 == nodeIndex)) {
      if (identical(token, const import15.MultiToken<import16.ControlValueAccessor<dynamic>>('NgValueAccessor'))) {
        return this._NgValueAccessor_3_6;
      }
      if ((identical(token, import5.NgModel) || identical(token, import17.NgControl))) {
        return this._NgModel_3_7;
      }
    }
    return notFoundResult;
  }

  @override
  void detectChangesInternal() {
    final _ctx = this.ctx;
    bool changed = false;
    bool firstCheck = this.firstCheck;
    changed = false;
    final currVal_4 = _ctx.text;
    if (import18.checkBinding(this._expr_4, currVal_4, 'text', 'package:np8080/src/editablelabel/editablelabel.html')) {
      if (import13.isDevToolsEnabled) {
        import13.Inspector.instance.recordInput(this._NgModel_3_7, 'ngModel', currVal_4);
      }
      this._NgModel_3_7.model = currVal_4 /* REF:package:np8080/src/editablelabel/editablelabel.html:159:177 */;
      changed = true;
      this._expr_4 = currVal_4;
    }
    if (changed) {
      this._NgModel_3_7.ngAfterChanges();
    }
    if (((!import18.debugThrowIfChanged) && firstCheck)) {
      this._NgModel_3_7.ngOnInit();
    }
    if (firstCheck) {
      if (import13.isDevToolsEnabled) {
        import13.Inspector.instance.recordInput(this._NgClass_4_5, 'class', 'labelReadOnly');
      }
      this._NgClass_4_5.initialClasses = 'labelReadOnly' /* REF:package:np8080/src/editablelabel/editablelabel.html:423:444 */;
    }
    final currVal_8 = _ctx.getTabsClass();
    if (import18.checkBinding(this._expr_8, currVal_8, 'getTabsClass()', 'package:np8080/src/editablelabel/editablelabel.html')) {
      if (import13.isDevToolsEnabled) {
        import13.Inspector.instance.recordInput(this._NgClass_4_5, 'ngClass', currVal_8);
      }
      this._NgClass_4_5.rawClass = currVal_8 /* REF:package:np8080/src/editablelabel/editablelabel.html:445:471 */;
      this._expr_8 = currVal_8;
    }
    if ((!import18.debugThrowIfChanged)) {
      this._NgClass_4_5.ngDoCheck();
    }
    final currVal_0 = (_ctx.tabFocused ? '1' : '0.55');
    if (import18.checkBinding(this._expr_0, currVal_0, 'tabFocused ? \'1\' : \'0.55\'', 'package:np8080/src/editablelabel/editablelabel.html')) {
      this._el_0.style.setProperty('opacity', currVal_0?.toString()) /* REF:package:np8080/src/editablelabel/editablelabel.html:24:67 */;
      this._expr_0 = currVal_0;
    }
    final currVal_1 = (!_ctx.editMode);
    if (import18.checkBinding(this._expr_1, currVal_1, '!editMode', 'package:np8080/src/editablelabel/editablelabel.html')) {
      import12.setProperty(this._el_1, 'hidden', currVal_1) /* REF:package:np8080/src/editablelabel/editablelabel.html:101:121 */;
      this._expr_1 = currVal_1;
    }
    final currVal_2 = (_ctx.editMode ? '20px' : '0');
    if (import18.checkBinding(this._expr_2, currVal_2, 'editMode ? \'20px\':\'0\'', 'package:np8080/src/editablelabel/editablelabel.html')) {
      this._el_3.style.setProperty('height', currVal_2?.toString()) /* REF:package:np8080/src/editablelabel/editablelabel.html:178:216 */;
      this._expr_2 = currVal_2;
    }
    final currVal_3 = _ctx.id;
    if (import18.checkBinding(this._expr_3, currVal_3, 'editbox{{id}}', 'package:np8080/src/editablelabel/editablelabel.html')) {
      import12.setProperty(this._el_3, 'id', import19.interpolate1('editbox', currVal_3, '')) /* REF:package:np8080/src/editablelabel/editablelabel.html:330:348 */;
      this._expr_3 = currVal_3;
    }
    final currVal_5 = _ctx.editMode;
    if (import18.checkBinding(this._expr_5, currVal_5, 'editMode', 'package:np8080/src/editablelabel/editablelabel.html')) {
      import12.setProperty(this._el_4, 'hidden', currVal_5) /* REF:package:np8080/src/editablelabel/editablelabel.html:482:501 */;
      this._expr_5 = currVal_5;
    }
    final currVal_6 = import19.interpolateString0(_ctx.text);
    if (import18.checkBinding(this._expr_6, currVal_6, '{{text}}', 'package:np8080/src/editablelabel/editablelabel.html')) {
      import12.setProperty(this._el_4, 'title', currVal_6) /* REF:package:np8080/src/editablelabel/editablelabel.html:502:518 */;
      this._expr_6 = currVal_6;
    }
    this._textBinding_6.updateText(import19.interpolateString0(_ctx.outputText)) /* REF:package:np8080/src/editablelabel/editablelabel.html:635:649 */;
  }

  @override
  void destroyInternal() {
    this._NgClass_4_5.ngOnDestroy();
  }

  void _handleEvent_0($event) {
    final _ctx = this.ctx;
    _ctx.exitEdit();
    this._DefaultValueAccessor_3_5.touchHandler();
  }

  void _handleEvent_1($event) {
    this._DefaultValueAccessor_3_5.handleChange($event.target.value);
  }

  void _handleEvent_2($event) {
    final _ctx = this.ctx;
    _ctx.text = $event;
  }

  static void _debugClearComponentStyles() {
    _componentStyles = null;
  }

  void initComponentStyles() {
    var styles = _componentStyles;
    if ((styles == null)) {
      _componentStyles = (styles = import8.ComponentStyles.unscoped(styles$EditableLabel, _debugComponentUrl));
      if (import11.isDevMode) {
        import8.ComponentStyles.debugOnClear(_debugClearComponentStyles);
      }
    }
    this.componentStyles = styles;
  }
}

const _EditableLabelNgFactory = ComponentFactory<import1.EditableLabel>('editable-label', viewFactory_EditableLabelHost0);
ComponentFactory<import1.EditableLabel> get EditableLabelNgFactory {
  return _EditableLabelNgFactory;
}

ComponentFactory<import1.EditableLabel> createEditableLabelFactory() {
  return ComponentFactory('editable-label', viewFactory_EditableLabelHost0);
}

final List<Object> styles$EditableLabelHost = const [];

class _ViewEditableLabelHost0 extends import21.HostView<import1.EditableLabel> {
  @override
  void build() {
    this.componentView = ViewEditableLabel0(this, 0);
    final _el_0 = this.componentView.rootElement;
    this.component = (import11.isDevMode
        ? import22.debugInjectorWrap(import1.EditableLabel, () {
            return import1.EditableLabel(this.injectorGet(import23.ThemeService, this.parentIndex), this.injectorGet(import24.EventBusService, this.parentIndex));
          })
        : import1.EditableLabel(this.injectorGet(import23.ThemeService, this.parentIndex), this.injectorGet(import24.EventBusService, this.parentIndex)));
    this.initRootNode(_el_0);
  }

  @override
  void detectChangesInternal() {
    bool firstCheck = this.firstCheck;
    if (((!import18.debugThrowIfChanged) && firstCheck)) {
      this.component.ngOnInit();
    }
    this.componentView.detectChanges();
  }
}

import21.HostView<import1.EditableLabel> viewFactory_EditableLabelHost0() {
  return _ViewEditableLabelHost0();
}
