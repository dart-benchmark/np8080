// **************************************************************************
// Generator: AngularDart Compiler
// **************************************************************************

import 'replacedialog.dart';
import 'package:ngdart/src/core/linker/views/component_view.dart' as import0;
import 'replacedialog.dart' as import1;
import 'package:ngdart/src/common/directives/ng_class.dart' as import2;
import 'package:ngforms/src/directives/default_value_accessor.dart' as import3;
import 'package:ngforms/src/directives/control_value_accessor.dart' as import4;
import 'package:ngforms/src/directives/ng_model.dart' as import5;
import 'package:ngforms/src/directives/checkbox_value_accessor.dart' as import6;
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

final List<Object> styles$ReplaceDialog = const [];

class ViewReplaceDialog0 extends import0.ComponentView<import1.ReplaceDialog> {
  late final import2.NgClass _NgClass_0_5;
  late final import2.NgClass _NgClass_5_5;
  late final import2.NgClass _NgClass_8_5;
  late final import3.DefaultValueAccessor _DefaultValueAccessor_15_5;
  late final List<import4.ControlValueAccessor<dynamic>> _NgValueAccessor_15_6;
  late final import5.NgModel _NgModel_15_7;
  late final import3.DefaultValueAccessor _DefaultValueAccessor_20_5;
  late final List<import4.ControlValueAccessor<dynamic>> _NgValueAccessor_20_6;
  late final import5.NgModel _NgModel_20_7;
  late final import6.CheckboxControlValueAccessor _CheckboxControlValueAccessor_26_5;
  late final List<import4.ControlValueAccessor<dynamic>> _NgValueAccessor_26_6;
  late final import5.NgModel _NgModel_26_7;
  late final import6.CheckboxControlValueAccessor _CheckboxControlValueAccessor_30_5;
  late final List<import4.ControlValueAccessor<dynamic>> _NgValueAccessor_30_6;
  late final import5.NgModel _NgModel_30_7;
  Object? _expr_0;
  Object? _expr_2;
  Object? _expr_4;
  Object? _expr_5;
  Object? _expr_6;
  Object? _expr_7;
  Object? _expr_8;
  Object? _expr_9;
  late final import7.DivElement _el_0;
  static import8.ComponentStyles? _componentStyles;
  ViewReplaceDialog0(import9.View parentView, int parentIndex) : super(parentView, parentIndex, import10.ChangeDetectionCheckedState.checkAlways) {
    this.initComponentStyles();
    this.rootElement = import11.unsafeCast(import7.document.createElement('replace-dialog'));
  }
  static String? get _debugComponentUrl {
    return (import11.isDevMode ? 'asset:np8080/lib/src/dialog/replace/replacedialog.dart' : null);
  }

  @override
  void build() {
    final _ctx = this.ctx;
    final parentRenderNode = this.initViewRoot();
    final doc = import7.document;
    this._el_0 = import12.appendDiv(doc, parentRenderNode);
    this.updateChildClass(this._el_0, 'replaceDialogPanel');
    this._NgClass_0_5 = import2.NgClass(this._el_0);
    if (import13.isDevToolsEnabled) {
      import13.Inspector.instance.registerDirective(this._el_0, this._NgClass_0_5);
    }
    final _text_1 = import12.appendText(this._el_0, '\n    ');
    final _el_2 = import12.appendDiv(doc, this._el_0);
    this.updateChildClass(_el_2, 'closeCross');
    final _text_3 = import12.appendText(_el_2, 'X');
    final _text_4 = import12.appendText(this._el_0, '\n    ');
    final _el_5 = import12.appendDiv(doc, this._el_0);
    this.updateChildClass(_el_5, 'replaceDialogHeader');
    this._NgClass_5_5 = import2.NgClass(_el_5);
    if (import13.isDevToolsEnabled) {
      import13.Inspector.instance.registerDirective(_el_5, this._NgClass_5_5);
    }
    final _text_6 = import12.appendText(_el_5, 'Replace');
    final _text_7 = import12.appendText(this._el_0, '\n\n    ');
    final _el_8 = import12.appendDiv(doc, this._el_0);
    import12.setAttribute(_el_8, 'style', 'text-align: center;padding: 10px');
    this._NgClass_8_5 = import2.NgClass(_el_8);
    if (import13.isDevToolsEnabled) {
      import13.Inspector.instance.registerDirective(_el_8, this._NgClass_8_5);
    }
    final _text_9 = import12.appendText(_el_8, '\n        ');
    final _el_10 = import12.appendDiv(doc, _el_8);
    import12.setAttribute(_el_10, 'style', 'margin-left: 60px;text-align: left');
    final _text_11 = import12.appendText(_el_10, '\n            ');
    final _el_12 = import12.appendElement<import7.HtmlElement>(doc, _el_10, 'label');
    final _text_13 = import12.appendText(_el_12, 'Replace');
    final _text_14 = import12.appendText(_el_10, '\n            ');
    final _el_15 = import12.appendElement<import7.InputElement>(doc, _el_10, 'input');
    import12.setAttribute(_el_15, 'id', 'targetTextbox');
    import12.setAttribute(_el_15, 'placeholder', 'Type text here...');
    _el_15.tabIndex = 221;
    import12.setAttribute(_el_15, 'type', 'text');
    this._DefaultValueAccessor_15_5 = import3.DefaultValueAccessor(_el_15);
    this._NgValueAccessor_15_6 = [this._DefaultValueAccessor_15_5];
    this._NgModel_15_7 = import5.NgModel(null, this._NgValueAccessor_15_6);
    if (import13.isDevToolsEnabled) {
      import13.Inspector.instance.registerDirective(_el_15, this._DefaultValueAccessor_15_5);
      import13.Inspector.instance.registerDirective(_el_15, this._NgModel_15_7);
    }
    final _text_16 = import12.appendText(_el_10, '\n            ');
    final _el_17 = import12.appendElement<import7.HtmlElement>(doc, _el_10, 'label');
    final _text_18 = import12.appendText(_el_17, ' with ');
    final _text_19 = import12.appendText(_el_10, '\n            ');
    final _el_20 = import12.appendElement<import7.InputElement>(doc, _el_10, 'input');
    import12.setAttribute(_el_20, 'id', 'replaceTextbox');
    import12.setAttribute(_el_20, 'placeholder', 'Type text here...');
    _el_20.tabIndex = 222;
    import12.setAttribute(_el_20, 'type', 'text');
    this._DefaultValueAccessor_20_5 = import3.DefaultValueAccessor(_el_20);
    this._NgValueAccessor_20_6 = [this._DefaultValueAccessor_20_5];
    this._NgModel_20_7 = import5.NgModel(null, this._NgValueAccessor_20_6);
    if (import13.isDevToolsEnabled) {
      import13.Inspector.instance.registerDirective(_el_20, this._DefaultValueAccessor_20_5);
      import13.Inspector.instance.registerDirective(_el_20, this._NgModel_20_7);
    }
    final _text_21 = import12.appendText(_el_10, '\n            ');
    final _el_22 = import12.appendElement<import7.HtmlElement>(doc, _el_10, 'br');
    final _text_23 = import12.appendText(_el_10, '\n            ');
    final _el_24 = import12.appendElement<import7.HtmlElement>(doc, _el_10, 'br');
    final _text_25 = import12.appendText(_el_10, '\n            ');
    final _el_26 = import12.appendElement<import7.InputElement>(doc, _el_10, 'input');
    _el_26.tabIndex = 223;
    import12.setAttribute(_el_26, 'type', 'checkbox');
    this._CheckboxControlValueAccessor_26_5 = import6.CheckboxControlValueAccessor(_el_26);
    this._NgValueAccessor_26_6 = [this._CheckboxControlValueAccessor_26_5];
    this._NgModel_26_7 = import5.NgModel(null, this._NgValueAccessor_26_6);
    if (import13.isDevToolsEnabled) {
      import13.Inspector.instance.registerDirective(_el_26, this._CheckboxControlValueAccessor_26_5);
      import13.Inspector.instance.registerDirective(_el_26, this._NgModel_26_7);
    }
    final _text_27 = import12.appendText(_el_10, ' Add a newline after each replacement\n            ');
    final _el_28 = import12.appendElement<import7.HtmlElement>(doc, _el_10, 'br');
    final _text_29 = import12.appendText(_el_10, '\n            ');
    final _el_30 = import12.appendElement<import7.InputElement>(doc, _el_10, 'input');
    _el_30.tabIndex = 224;
    import12.setAttribute(_el_30, 'type', 'checkbox');
    this._CheckboxControlValueAccessor_30_5 = import6.CheckboxControlValueAccessor(_el_30);
    this._NgValueAccessor_30_6 = [this._CheckboxControlValueAccessor_30_5];
    this._NgModel_30_7 = import5.NgModel(null, this._NgValueAccessor_30_6);
    if (import13.isDevToolsEnabled) {
      import13.Inspector.instance.registerDirective(_el_30, this._CheckboxControlValueAccessor_30_5);
      import13.Inspector.instance.registerDirective(_el_30, this._NgModel_30_7);
    }
    final _text_31 = import12.appendText(_el_10, ' Add a newline before each replacement\n            ');
    final _el_32 = import12.appendElement<import7.HtmlElement>(doc, _el_10, 'br');
    final _text_33 = import12.appendText(_el_10, '\n            ');
    final _el_34 = import12.appendElement<import7.HtmlElement>(doc, _el_10, 'br');
    final _text_35 = import12.appendText(_el_10, '\n        ');
    final _text_36 = import12.appendText(_el_8, '\n        ');
    final _el_37 = import12.appendDiv(doc, _el_8);
    this.updateChildClass(_el_37, 'footer');
    final _text_38 = import12.appendText(_el_37, '\n            ');
    final _el_39 = import12.appendElement<import7.ButtonElement>(doc, _el_37, 'button');
    this.updateChildClass(_el_39, 'actionButton');
    final _text_40 = import12.appendText(_el_39, 'Replace');
    final _text_41 = import12.appendText(_el_37, '\n            ');
    final _el_42 = import12.appendElement<import7.ButtonElement>(doc, _el_37, 'button');
    this.updateChildClass(_el_42, 'closeButton light-primary-color');
    final _text_43 = import12.appendText(_el_42, 'Close');
    final _text_44 = import12.appendText(_el_37, '\n        ');
    final _text_45 = import12.appendText(_el_8, '\n    ');
    final _text_46 = import12.appendText(this._el_0, '\n    ');
    final _el_47 = import12.appendDiv(doc, this._el_0);
    import12.setAttribute(_el_47, 'style', 'position: absolute;top:0;left:0;float: right;margin-bottom: 0;padding: 3px;');
    final _text_48 = import12.appendText(_el_47, '\n        ');
    final _el_49 = import12.appendElement<import7.ButtonElement>(doc, _el_47, 'button');
    this.updateChildClass(_el_49, 'miniActionButton');
    final _text_50 = import12.appendText(_el_49, '↖');
    final _text_51 = import12.appendText(_el_47, '\n        ');
    final _el_52 = import12.appendElement<import7.ButtonElement>(doc, _el_47, 'button');
    this.updateChildClass(_el_52, 'miniActionButton');
    final _text_53 = import12.appendText(_el_52, '↘');
    final _text_54 = import12.appendText(_el_47, '\n    ');
    final _text_55 = import12.appendText(this._el_0, '\n');
    _el_2.addEventListener('click', this.eventHandler0(_ctx.close));
    _el_15.addEventListener('blur', this.eventHandler0(this._DefaultValueAccessor_15_5.touchHandler));
    _el_15.addEventListener('input', this.eventHandler1(this._handleEvent_0));
    final subscription_0 = this._NgModel_15_7.update.listen(this.eventHandler1(this._handleEvent_1));
    _el_20.addEventListener('blur', this.eventHandler0(this._DefaultValueAccessor_20_5.touchHandler));
    _el_20.addEventListener('input', this.eventHandler1(this._handleEvent_2));
    final subscription_1 = this._NgModel_20_7.update.listen(this.eventHandler1(this._handleEvent_3));
    _el_26.addEventListener('blur', this.eventHandler0(this._CheckboxControlValueAccessor_26_5.touchHandler));
    _el_26.addEventListener('change', this.eventHandler1(this._handleEvent_4));
    final subscription_2 = this._NgModel_26_7.update.listen(this.eventHandler1(this._handleEvent_5));
    _el_30.addEventListener('blur', this.eventHandler0(this._CheckboxControlValueAccessor_30_5.touchHandler));
    _el_30.addEventListener('change', this.eventHandler1(this._handleEvent_6));
    final subscription_3 = this._NgModel_30_7.update.listen(this.eventHandler1(this._handleEvent_7));
    _el_39.addEventListener('click', this.eventHandler0(_ctx.performReplace));
    _el_42.addEventListener('click', this.eventHandler0(_ctx.closeTheDialog));
    _el_49.addEventListener('click', this.eventHandler1(this._handleEvent_8));
    _el_52.addEventListener('click', this.eventHandler1(this._handleEvent_9));
    this.initSubscriptions([subscription_0, subscription_1, subscription_2, subscription_3]);
  }

  @override
  dynamic injectorGetInternal(dynamic token, int nodeIndex, dynamic notFoundResult) {
    if ((15 == nodeIndex)) {
      if (identical(token, const import14.MultiToken<import15.ControlValueAccessor<dynamic>>('NgValueAccessor'))) {
        return this._NgValueAccessor_15_6;
      }
      if ((identical(token, import5.NgModel) || identical(token, import16.NgControl))) {
        return this._NgModel_15_7;
      }
    }
    if ((20 == nodeIndex)) {
      if (identical(token, const import14.MultiToken<import15.ControlValueAccessor<dynamic>>('NgValueAccessor'))) {
        return this._NgValueAccessor_20_6;
      }
      if ((identical(token, import5.NgModel) || identical(token, import16.NgControl))) {
        return this._NgModel_20_7;
      }
    }
    if ((26 == nodeIndex)) {
      if (identical(token, const import14.MultiToken<import15.ControlValueAccessor<dynamic>>('NgValueAccessor'))) {
        return this._NgValueAccessor_26_6;
      }
      if ((identical(token, import5.NgModel) || identical(token, import16.NgControl))) {
        return this._NgModel_26_7;
      }
    }
    if ((30 == nodeIndex)) {
      if (identical(token, const import14.MultiToken<import15.ControlValueAccessor<dynamic>>('NgValueAccessor'))) {
        return this._NgValueAccessor_30_6;
      }
      if ((identical(token, import5.NgModel) || identical(token, import16.NgControl))) {
        return this._NgModel_30_7;
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
        import13.Inspector.instance.recordInput(this._NgClass_0_5, 'class', 'replaceDialogPanel');
      }
      this._NgClass_0_5.initialClasses = 'replaceDialogPanel' /* REF:package:np8080/src/dialog/replace/replacedialog.html:5:31 */;
    }
    final currVal_2 = ((_ctx.positionClass + ' ') + _ctx.getBorderClass());
    if (import17.checkBinding(this._expr_2, currVal_2, 'positionClass+\' \'+getBorderClass()', 'package:np8080/src/dialog/replace/replacedialog.html')) {
      if (import13.isDevToolsEnabled) {
        import13.Inspector.instance.recordInput(this._NgClass_0_5, 'ngClass', currVal_2);
      }
      this._NgClass_0_5.rawClass = currVal_2 /* REF:package:np8080/src/dialog/replace/replacedialog.html:55:101 */;
      this._expr_2 = currVal_2;
    }
    if ((!import17.debugThrowIfChanged)) {
      this._NgClass_0_5.ngDoCheck();
    }
    if (firstCheck) {
      if (import13.isDevToolsEnabled) {
        import13.Inspector.instance.recordInput(this._NgClass_5_5, 'class', 'replaceDialogHeader');
      }
      this._NgClass_5_5.initialClasses = 'replaceDialogHeader' /* REF:package:np8080/src/dialog/replace/replacedialog.html:166:193 */;
    }
    final currVal_4 = _ctx.getHeaderClass();
    if (import17.checkBinding(this._expr_4, currVal_4, 'getHeaderClass()', 'package:np8080/src/dialog/replace/replacedialog.html')) {
      if (import13.isDevToolsEnabled) {
        import13.Inspector.instance.recordInput(this._NgClass_5_5, 'ngClass', currVal_4);
      }
      this._NgClass_5_5.rawClass = currVal_4 /* REF:package:np8080/src/dialog/replace/replacedialog.html:194:222 */;
      this._expr_4 = currVal_4;
    }
    if ((!import17.debugThrowIfChanged)) {
      this._NgClass_5_5.ngDoCheck();
    }
    final currVal_5 = _ctx.getClass();
    if (import17.checkBinding(this._expr_5, currVal_5, 'getClass()', 'package:np8080/src/dialog/replace/replacedialog.html')) {
      if (import13.isDevToolsEnabled) {
        import13.Inspector.instance.recordInput(this._NgClass_8_5, 'ngClass', currVal_5);
      }
      this._NgClass_8_5.rawClass = currVal_5 /* REF:package:np8080/src/dialog/replace/replacedialog.html:288:310 */;
      this._expr_5 = currVal_5;
    }
    if ((!import17.debugThrowIfChanged)) {
      this._NgClass_8_5.ngDoCheck();
    }
    changed = false;
    final currVal_6 = _ctx.textToReplace;
    if (import17.checkBinding(this._expr_6, currVal_6, 'textToReplace', 'package:np8080/src/dialog/replace/replacedialog.html')) {
      if (import13.isDevToolsEnabled) {
        import13.Inspector.instance.recordInput(this._NgModel_15_7, 'ngModel', currVal_6);
      }
      this._NgModel_15_7.model = currVal_6 /* REF:package:np8080/src/dialog/replace/replacedialog.html:520:547 */;
      changed = true;
      this._expr_6 = currVal_6;
    }
    if (changed) {
      this._NgModel_15_7.ngAfterChanges();
    }
    if (((!import17.debugThrowIfChanged) && firstCheck)) {
      this._NgModel_15_7.ngOnInit();
    }
    changed = false;
    final currVal_7 = _ctx.replacementText;
    if (import17.checkBinding(this._expr_7, currVal_7, 'replacementText', 'package:np8080/src/dialog/replace/replacedialog.html')) {
      if (import13.isDevToolsEnabled) {
        import13.Inspector.instance.recordInput(this._NgModel_20_7, 'ngModel', currVal_7);
      }
      this._NgModel_20_7.model = currVal_7 /* REF:package:np8080/src/dialog/replace/replacedialog.html:719:748 */;
      changed = true;
      this._expr_7 = currVal_7;
    }
    if (changed) {
      this._NgModel_20_7.ngAfterChanges();
    }
    if (((!import17.debugThrowIfChanged) && firstCheck)) {
      this._NgModel_20_7.ngOnInit();
    }
    changed = false;
    final currVal_8 = _ctx.newLineAfter;
    if (import17.checkBinding(this._expr_8, currVal_8, 'newLineAfter', 'package:np8080/src/dialog/replace/replacedialog.html')) {
      if (import13.isDevToolsEnabled) {
        import13.Inspector.instance.recordInput(this._NgModel_26_7, 'ngModel', currVal_8);
      }
      this._NgModel_26_7.model = currVal_8 /* REF:package:np8080/src/dialog/replace/replacedialog.html:857:883 */;
      changed = true;
      this._expr_8 = currVal_8;
    }
    if (changed) {
      this._NgModel_26_7.ngAfterChanges();
    }
    if (((!import17.debugThrowIfChanged) && firstCheck)) {
      this._NgModel_26_7.ngOnInit();
    }
    changed = false;
    final currVal_9 = _ctx.newLineBefore;
    if (import17.checkBinding(this._expr_9, currVal_9, 'newLineBefore', 'package:np8080/src/dialog/replace/replacedialog.html')) {
      if (import13.isDevToolsEnabled) {
        import13.Inspector.instance.recordInput(this._NgModel_30_7, 'ngModel', currVal_9);
      }
      this._NgModel_30_7.model = currVal_9 /* REF:package:np8080/src/dialog/replace/replacedialog.html:990:1017 */;
      changed = true;
      this._expr_9 = currVal_9;
    }
    if (changed) {
      this._NgModel_30_7.ngAfterChanges();
    }
    if (((!import17.debugThrowIfChanged) && firstCheck)) {
      this._NgModel_30_7.ngOnInit();
    }
    final currVal_0 = (!_ctx.showDialog);
    if (import17.checkBinding(this._expr_0, currVal_0, '!showDialog', 'package:np8080/src/dialog/replace/replacedialog.html')) {
      import12.setProperty(this._el_0, 'hidden', currVal_0) /* REF:package:np8080/src/dialog/replace/replacedialog.html:32:54 */;
      this._expr_0 = currVal_0;
    }
  }

  @override
  void destroyInternal() {
    this._NgClass_5_5.ngOnDestroy();
    this._NgClass_8_5.ngOnDestroy();
    this._NgClass_0_5.ngOnDestroy();
  }

  void _handleEvent_0($event) {
    this._DefaultValueAccessor_15_5.handleChange($event.target.value);
  }

  void _handleEvent_1($event) {
    final _ctx = this.ctx;
    _ctx.textToReplace = $event;
  }

  void _handleEvent_2($event) {
    this._DefaultValueAccessor_20_5.handleChange($event.target.value);
  }

  void _handleEvent_3($event) {
    final _ctx = this.ctx;
    _ctx.replacementText = $event;
  }

  void _handleEvent_4($event) {
    this._CheckboxControlValueAccessor_26_5.handleChange($event.target.checked);
  }

  void _handleEvent_5($event) {
    final _ctx = this.ctx;
    _ctx.newLineAfter = $event;
  }

  void _handleEvent_6($event) {
    this._CheckboxControlValueAccessor_30_5.handleChange($event.target.checked);
  }

  void _handleEvent_7($event) {
    final _ctx = this.ctx;
    _ctx.newLineBefore = $event;
  }

  void _handleEvent_8($event) {
    final _ctx = this.ctx;
    _ctx.moveTheDialog(true);
  }

  void _handleEvent_9($event) {
    final _ctx = this.ctx;
    _ctx.moveTheDialog(false);
  }

  static void _debugClearComponentStyles() {
    _componentStyles = null;
  }

  void initComponentStyles() {
    var styles = _componentStyles;
    if ((styles == null)) {
      _componentStyles = (styles = import8.ComponentStyles.unscoped(styles$ReplaceDialog, _debugComponentUrl));
      if (import11.isDevMode) {
        import8.ComponentStyles.debugOnClear(_debugClearComponentStyles);
      }
    }
    this.componentStyles = styles;
  }
}

const _ReplaceDialogNgFactory = ComponentFactory<import1.ReplaceDialog>('replace-dialog', viewFactory_ReplaceDialogHost0);
ComponentFactory<import1.ReplaceDialog> get ReplaceDialogNgFactory {
  return _ReplaceDialogNgFactory;
}

ComponentFactory<import1.ReplaceDialog> createReplaceDialogFactory() {
  return ComponentFactory('replace-dialog', viewFactory_ReplaceDialogHost0);
}

final List<Object> styles$ReplaceDialogHost = const [];

class _ViewReplaceDialogHost0 extends import19.HostView<import1.ReplaceDialog> {
  @override
  void build() {
    this.componentView = ViewReplaceDialog0(this, 0);
    final _el_0 = this.componentView.rootElement;
    this.component = (import11.isDevMode
        ? import20.debugInjectorWrap(import1.ReplaceDialog, () {
            return import1.ReplaceDialog(this.injectorGet(import21.TextProcessingService, this.parentIndex), this.injectorGet(import22.TextareaDomService, this.parentIndex), this.injectorGet(import23.ThemeService, this.parentIndex), this.injectorGet(import24.EventBusService, this.parentIndex));
          })
        : import1.ReplaceDialog(this.injectorGet(import21.TextProcessingService, this.parentIndex), this.injectorGet(import22.TextareaDomService, this.parentIndex), this.injectorGet(import23.ThemeService, this.parentIndex), this.injectorGet(import24.EventBusService, this.parentIndex)));
    this.initRootNode(_el_0);
  }
}

import19.HostView<import1.ReplaceDialog> viewFactory_ReplaceDialogHost0() {
  return _ViewReplaceDialogHost0();
}
