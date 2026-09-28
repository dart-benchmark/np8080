// **************************************************************************
// Generator: AngularDart Compiler
// **************************************************************************

import 'generatedialog.dart';
import 'package:ngdart/src/core/linker/views/component_view.dart' as import0;
import 'generatedialog.dart' as import1;
import 'package:ngdart/src/common/directives/ng_class.dart' as import2;
import 'package:ngforms/src/directives/default_value_accessor.dart' as import3;
import 'package:ngforms/src/directives/control_value_accessor.dart' as import4;
import 'package:ngforms/src/directives/ng_model.dart' as import5;
import 'package:ngforms/src/directives/number_value_accessor.dart' as import6;
import 'package:ngforms/src/directives/checkbox_value_accessor.dart' as import7;
import 'dart:html' as import8;
import 'package:ngdart/src/core/linker/style_encapsulation.dart' as import9;
import 'package:ngdart/src/core/linker/views/view.dart' as import10;
import 'package:ngdart/src/meta/change_detection_constants.dart' as import11;
import 'package:ngdart/src/utilities.dart' as import12;
import 'package:ngdart/src/runtime/dom_helpers.dart' as import13;
import 'package:ngdart/src/devtools.dart' as import14;
import 'package:ngdart/src/meta/di_tokens.dart' as import15;
import 'package:ngforms/src/directives/control_value_accessor.dart' as import16;
import 'package:ngforms/src/directives/ng_control.dart' as import17;
import 'package:ngdart/src/runtime/check_binding.dart' as import18;
import 'package:ngdart/angular.dart';
import 'package:ngdart/src/core/linker/views/host_view.dart' as import20;
import 'package:ngdart/src/di/errors.dart' as import21;
import '../../services/textprocessingservice.dart' as import22;
import '../../services/textareadomservice.dart' as import23;
import '../../services/themeservice.dart' as import24;
import '../../services/eventbusservice.dart' as import25;

final List<Object> styles$GenerateDialog = const [];

class ViewGenerateDialog0 extends import0.ComponentView<import1.GenerateDialog> {
  late final import2.NgClass _NgClass_2_5;
  late final import2.NgClass _NgClass_7_5;
  late final import2.NgClass _NgClass_10_5;
  late final import3.DefaultValueAccessor _DefaultValueAccessor_15_5;
  late final List<import4.ControlValueAccessor<dynamic>> _NgValueAccessor_15_6;
  late final import5.NgModel _NgModel_15_7;
  late final import3.DefaultValueAccessor _DefaultValueAccessor_17_5;
  late final import6.NumberValueAccessor _NumberValueAccessor_17_6;
  late final List<import4.ControlValueAccessor<dynamic>> _NgValueAccessor_17_7;
  late final import5.NgModel _NgModel_17_8;
  late final import7.CheckboxControlValueAccessor _CheckboxControlValueAccessor_21_5;
  late final List<import4.ControlValueAccessor<dynamic>> _NgValueAccessor_21_6;
  late final import5.NgModel _NgModel_21_7;
  late final import3.DefaultValueAccessor _DefaultValueAccessor_25_5;
  late final List<import4.ControlValueAccessor<dynamic>> _NgValueAccessor_25_6;
  late final import5.NgModel _NgModel_25_7;
  Object? _expr_0;
  Object? _expr_2;
  Object? _expr_4;
  Object? _expr_5;
  Object? _expr_6;
  Object? _expr_7;
  Object? _expr_8;
  Object? _expr_9;
  late final import8.DivElement _el_0;
  static import9.ComponentStyles? _componentStyles;
  ViewGenerateDialog0(import10.View parentView, int parentIndex) : super(parentView, parentIndex, import11.ChangeDetectionCheckedState.checkAlways) {
    this.initComponentStyles();
    this.rootElement = import12.unsafeCast(import8.document.createElement('generate-dialog'));
  }
  static String? get _debugComponentUrl {
    return (import12.isDevMode ? 'asset:np8080/lib/src/dialog/generate/generatedialog.dart' : null);
  }

  @override
  void build() {
    final _ctx = this.ctx;
    final parentRenderNode = this.initViewRoot();
    final doc = import8.document;
    this._el_0 = import13.appendDiv(doc, parentRenderNode);
    import13.setAttribute(this._el_0, 'id', 'overlay');
    final _text_1 = import13.appendText(this._el_0, '\r\n    ');
    final _el_2 = import13.appendDiv(doc, this._el_0);
    this.updateChildClass(_el_2, 'dialogPanel');
    this._NgClass_2_5 = import2.NgClass(_el_2);
    if (import14.isDevToolsEnabled) {
      import14.Inspector.instance.registerDirective(_el_2, this._NgClass_2_5);
    }
    final _text_3 = import13.appendText(_el_2, '\r\n        ');
    final _el_4 = import13.appendDiv(doc, _el_2);
    this.updateChildClass(_el_4, 'closeCross');
    final _text_5 = import13.appendText(_el_4, 'X');
    final _text_6 = import13.appendText(_el_2, '\r\n        ');
    final _el_7 = import13.appendDiv(doc, _el_2);
    this.updateChildClass(_el_7, 'header');
    this._NgClass_7_5 = import2.NgClass(_el_7);
    if (import14.isDevToolsEnabled) {
      import14.Inspector.instance.registerDirective(_el_7, this._NgClass_7_5);
    }
    final _text_8 = import13.appendText(_el_7, 'Generate Text');
    final _text_9 = import13.appendText(_el_2, '\r\n\r\n        ');
    final _el_10 = import13.appendDiv(doc, _el_2);
    import13.setAttribute(_el_10, 'style', 'text-align: center;padding: 10px');
    this._NgClass_10_5 = import2.NgClass(_el_10);
    if (import14.isDevToolsEnabled) {
      import14.Inspector.instance.registerDirective(_el_10, this._NgClass_10_5);
    }
    final _text_11 = import13.appendText(_el_10, '\r\n\r\n            ');
    final _el_12 = import13.appendElement<import8.HtmlElement>(doc, _el_10, 'label');
    final _text_13 = import13.appendText(_el_12, 'Repeat');
    final _text_14 = import13.appendText(_el_10, '\r\n            ');
    final _el_15 = import13.appendElement<import8.InputElement>(doc, _el_10, 'input');
    import13.setAttribute(_el_15, 'id', 'repeatTextbox');
    import13.setAttribute(_el_15, 'placeholder', 'Type text here...');
    import13.setAttribute(_el_15, 'type', 'text');
    this._DefaultValueAccessor_15_5 = import3.DefaultValueAccessor(_el_15);
    this._NgValueAccessor_15_6 = [this._DefaultValueAccessor_15_5];
    this._NgModel_15_7 = import5.NgModel(null, this._NgValueAccessor_15_6);
    if (import14.isDevToolsEnabled) {
      import14.Inspector.instance.registerDirective(_el_15, this._DefaultValueAccessor_15_5);
      import14.Inspector.instance.registerDirective(_el_15, this._NgModel_15_7);
    }
    final _text_16 = import13.appendText(_el_10, '\r\n            ');
    final _el_17 = import13.appendElement<import8.InputElement>(doc, _el_10, 'input');
    import13.setAttribute(_el_17, 'min', '1');
    import13.setAttribute(_el_17, 'type', 'number');
    this._DefaultValueAccessor_17_5 = import3.DefaultValueAccessor(_el_17);
    this._NumberValueAccessor_17_6 = import6.NumberValueAccessor(_el_17);
    this._NgValueAccessor_17_7 = [this._DefaultValueAccessor_17_5, this._NumberValueAccessor_17_6];
    this._NgModel_17_8 = import5.NgModel(null, this._NgValueAccessor_17_7);
    if (import14.isDevToolsEnabled) {
      import14.Inspector.instance.registerDirective(_el_17, this._DefaultValueAccessor_17_5);
      import14.Inspector.instance.registerDirective(_el_17, this._NumberValueAccessor_17_6);
      import14.Inspector.instance.registerDirective(_el_17, this._NgModel_17_8);
    }
    final _text_18 = import13.appendText(_el_10, ' Times\r\n            ');
    final _el_19 = import13.appendElement<import8.HtmlElement>(doc, _el_10, 'br');
    final _text_20 = import13.appendText(_el_10, '\r\n            ');
    final _el_21 = import13.appendElement<import8.InputElement>(doc, _el_10, 'input');
    import13.setAttribute(_el_21, 'type', 'checkbox');
    this._CheckboxControlValueAccessor_21_5 = import7.CheckboxControlValueAccessor(_el_21);
    this._NgValueAccessor_21_6 = [this._CheckboxControlValueAccessor_21_5];
    this._NgModel_21_7 = import5.NgModel(null, this._NgValueAccessor_21_6);
    if (import14.isDevToolsEnabled) {
      import14.Inspector.instance.registerDirective(_el_21, this._CheckboxControlValueAccessor_21_5);
      import14.Inspector.instance.registerDirective(_el_21, this._NgModel_21_7);
    }
    final _text_22 = import13.appendText(_el_10, ' Add a newline after each item\r\n            ');
    final _el_23 = import13.appendElement<import8.HtmlElement>(doc, _el_10, 'br');
    final _text_24 = import13.appendText(_el_10, '\r\n            ');
    final _el_25 = import13.appendElement<import8.TextAreaElement>(doc, _el_10, 'textarea');
    this.updateChildClass(_el_25, 'previewText');
    import13.setAttribute(_el_25, 'placeholder', 'Preview will appear here');
    import13.setAttribute(_el_25, 'readonly', '');
    this._DefaultValueAccessor_25_5 = import3.DefaultValueAccessor(_el_25);
    this._NgValueAccessor_25_6 = [this._DefaultValueAccessor_25_5];
    this._NgModel_25_7 = import5.NgModel(null, this._NgValueAccessor_25_6);
    if (import14.isDevToolsEnabled) {
      import14.Inspector.instance.registerDirective(_el_25, this._DefaultValueAccessor_25_5);
      import14.Inspector.instance.registerDirective(_el_25, this._NgModel_25_7);
    }
    final _text_26 = import13.appendText(_el_10, '\r\n            ');
    final _el_27 = import13.appendDiv(doc, _el_10);
    this.updateChildClass(_el_27, 'previewText');
    import13.setAttribute(_el_27, 'id', 'generatePreviewCard');
    final _text_28 = import13.appendText(_el_10, '\r\n\r\n            ');
    final _el_29 = import13.appendDiv(doc, _el_10);
    this.updateChildClass(_el_29, 'footer');
    final _text_30 = import13.appendText(_el_29, '\r\n                ');
    final _el_31 = import13.appendElement<import8.ButtonElement>(doc, _el_29, 'button');
    this.updateChildClass(_el_31, 'actionButton');
    final _text_32 = import13.appendText(_el_31, 'Rich Preview');
    final _text_33 = import13.appendText(_el_29, '\r\n                ');
    final _el_34 = import13.appendElement<import8.ButtonElement>(doc, _el_29, 'button');
    this.updateChildClass(_el_34, 'actionButton');
    final _text_35 = import13.appendText(_el_34, 'Open As Link');
    final _text_36 = import13.appendText(_el_29, '\r\n                ');
    final _el_37 = import13.appendElement<import8.ButtonElement>(doc, _el_29, 'button');
    this.updateChildClass(_el_37, 'actionButton');
    final _text_38 = import13.appendText(_el_37, 'Prepend');
    final _text_39 = import13.appendText(_el_29, '\r\n                ');
    final _el_40 = import13.appendElement<import8.ButtonElement>(doc, _el_29, 'button');
    this.updateChildClass(_el_40, 'actionButton');
    final _text_41 = import13.appendText(_el_40, 'Insert');
    final _text_42 = import13.appendText(_el_29, '\r\n                ');
    final _el_43 = import13.appendElement<import8.ButtonElement>(doc, _el_29, 'button');
    this.updateChildClass(_el_43, 'actionButton');
    final _text_44 = import13.appendText(_el_43, 'Append');
    final _text_45 = import13.appendText(_el_29, '\r\n                     \r\n                ');
    final _el_46 = import13.appendElement<import8.ButtonElement>(doc, _el_29, 'button');
    this.updateChildClass(_el_46, 'closeButton');
    import13.setAttribute(_el_46, 'style', 'visibility: hidden');
    final _text_47 = import13.appendText(_el_46, 'Peek!');
    final _text_48 = import13.appendText(_el_29, '\r\n                ');
    final _el_49 = import13.appendElement<import8.ButtonElement>(doc, _el_29, 'button');
    this.updateChildClass(_el_49, 'closeButton  light-primary-color');
    final _text_50 = import13.appendText(_el_49, 'Close');
    final _text_51 = import13.appendText(_el_29, '\r\n            ');
    final _text_52 = import13.appendText(_el_10, '\r\n        ');
    final _text_53 = import13.appendText(_el_2, '\r\n    ');
    final _text_54 = import13.appendText(this._el_0, '\r\n');
    _el_4.addEventListener('click', this.eventHandler0(_ctx.close));
    _el_15.addEventListener('blur', this.eventHandler0(this._DefaultValueAccessor_15_5.touchHandler));
    _el_15.addEventListener('input', this.eventHandler1(this._handleEvent_0));
    final subscription_0 = this._NgModel_15_7.update.listen(this.eventHandler1(this._handleEvent_1));
    _el_17.addEventListener('blur', this.eventHandler1(this._handleEvent_2));
    _el_17.addEventListener('input', this.eventHandler1(this._handleEvent_3));
    _el_17.addEventListener('change', this.eventHandler1(this._handleEvent_4));
    final subscription_1 = this._NgModel_17_8.update.listen(this.eventHandler1(this._handleEvent_5));
    _el_21.addEventListener('blur', this.eventHandler0(this._CheckboxControlValueAccessor_21_5.touchHandler));
    _el_21.addEventListener('change', this.eventHandler1(this._handleEvent_6));
    final subscription_2 = this._NgModel_21_7.update.listen(this.eventHandler1(this._handleEvent_7));
    _el_25.addEventListener('blur', this.eventHandler0(this._DefaultValueAccessor_25_5.touchHandler));
    _el_25.addEventListener('input', this.eventHandler1(this._handleEvent_8));
    _el_31.addEventListener('click', this.eventHandler0(_ctx.richPreviewHandler));
    _el_34.addEventListener('click', this.eventHandler0(_ctx.openReferenceLinkHandler));
    _el_37.addEventListener('click', this.eventHandler0(_ctx.prependText));
    _el_40.addEventListener('click', this.eventHandler0(_ctx.insertCurrentPosition));
    _el_43.addEventListener('click', this.eventHandler0(_ctx.appendText));
    _el_46.addEventListener('click', this.eventHandler0(_ctx.closeTheDialog));
    _el_49.addEventListener('click', this.eventHandler0(_ctx.closeTheDialog));
    this.initSubscriptions([subscription_0, subscription_1, subscription_2]);
  }

  @override
  dynamic injectorGetInternal(dynamic token, int nodeIndex, dynamic notFoundResult) {
    if ((15 == nodeIndex)) {
      if (identical(token, const import15.MultiToken<import16.ControlValueAccessor<dynamic>>('NgValueAccessor'))) {
        return this._NgValueAccessor_15_6;
      }
      if ((identical(token, import5.NgModel) || identical(token, import17.NgControl))) {
        return this._NgModel_15_7;
      }
    }
    if ((17 == nodeIndex)) {
      if (identical(token, const import15.MultiToken<import16.ControlValueAccessor<dynamic>>('NgValueAccessor'))) {
        return this._NgValueAccessor_17_7;
      }
      if ((identical(token, import5.NgModel) || identical(token, import17.NgControl))) {
        return this._NgModel_17_8;
      }
    }
    if ((21 == nodeIndex)) {
      if (identical(token, const import15.MultiToken<import16.ControlValueAccessor<dynamic>>('NgValueAccessor'))) {
        return this._NgValueAccessor_21_6;
      }
      if ((identical(token, import5.NgModel) || identical(token, import17.NgControl))) {
        return this._NgModel_21_7;
      }
    }
    if ((25 == nodeIndex)) {
      if (identical(token, const import15.MultiToken<import16.ControlValueAccessor<dynamic>>('NgValueAccessor'))) {
        return this._NgValueAccessor_25_6;
      }
      if ((identical(token, import5.NgModel) || identical(token, import17.NgControl))) {
        return this._NgModel_25_7;
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
      if (import14.isDevToolsEnabled) {
        import14.Inspector.instance.recordInput(this._NgClass_2_5, 'class', 'dialogPanel');
      }
      this._NgClass_2_5.initialClasses = 'dialogPanel' /* REF:package:np8080/src/dialog/generate/generatedialog.html:52:71 */;
    }
    final currVal_2 = ((_ctx.getClass() + ' ') + _ctx.getBorderClass());
    if (import18.checkBinding(this._expr_2, currVal_2, 'getClass()+\' \'+getBorderClass()', 'package:np8080/src/dialog/generate/generatedialog.html')) {
      if (import14.isDevToolsEnabled) {
        import14.Inspector.instance.recordInput(this._NgClass_2_5, 'ngClass', currVal_2);
      }
      this._NgClass_2_5.rawClass = currVal_2 /* REF:package:np8080/src/dialog/generate/generatedialog.html:72:115 */;
      this._expr_2 = currVal_2;
    }
    if ((!import18.debugThrowIfChanged)) {
      this._NgClass_2_5.ngDoCheck();
    }
    if (firstCheck) {
      if (import14.isDevToolsEnabled) {
        import14.Inspector.instance.recordInput(this._NgClass_7_5, 'class', 'header');
      }
      this._NgClass_7_5.initialClasses = 'header' /* REF:package:np8080/src/dialog/generate/generatedialog.html:190:204 */;
    }
    final currVal_4 = _ctx.getHeaderClass();
    if (import18.checkBinding(this._expr_4, currVal_4, 'getHeaderClass()', 'package:np8080/src/dialog/generate/generatedialog.html')) {
      if (import14.isDevToolsEnabled) {
        import14.Inspector.instance.recordInput(this._NgClass_7_5, 'ngClass', currVal_4);
      }
      this._NgClass_7_5.rawClass = currVal_4 /* REF:package:np8080/src/dialog/generate/generatedialog.html:205:233 */;
      this._expr_4 = currVal_4;
    }
    if ((!import18.debugThrowIfChanged)) {
      this._NgClass_7_5.ngDoCheck();
    }
    final currVal_5 = _ctx.getClass();
    if (import18.checkBinding(this._expr_5, currVal_5, 'getClass()', 'package:np8080/src/dialog/generate/generatedialog.html')) {
      if (import14.isDevToolsEnabled) {
        import14.Inspector.instance.recordInput(this._NgClass_10_5, 'ngClass', currVal_5);
      }
      this._NgClass_10_5.rawClass = currVal_5 /* REF:package:np8080/src/dialog/generate/generatedialog.html:311:333 */;
      this._expr_5 = currVal_5;
    }
    if ((!import18.debugThrowIfChanged)) {
      this._NgClass_10_5.ngDoCheck();
    }
    changed = false;
    final currVal_6 = _ctx.textToRepeat;
    if (import18.checkBinding(this._expr_6, currVal_6, 'textToRepeat', 'package:np8080/src/dialog/generate/generatedialog.html')) {
      if (import14.isDevToolsEnabled) {
        import14.Inspector.instance.recordInput(this._NgModel_15_7, 'ngModel', currVal_6);
      }
      this._NgModel_15_7.model = currVal_6 /* REF:package:np8080/src/dialog/generate/generatedialog.html:436:462 */;
      changed = true;
      this._expr_6 = currVal_6;
    }
    if (changed) {
      this._NgModel_15_7.ngAfterChanges();
    }
    if (((!import18.debugThrowIfChanged) && firstCheck)) {
      this._NgModel_15_7.ngOnInit();
    }
    changed = false;
    final currVal_7 = _ctx.repeatCount;
    if (import18.checkBinding(this._expr_7, currVal_7, 'repeatCount', 'package:np8080/src/dialog/generate/generatedialog.html')) {
      if (import14.isDevToolsEnabled) {
        import14.Inspector.instance.recordInput(this._NgModel_17_8, 'ngModel', currVal_7);
      }
      this._NgModel_17_8.model = currVal_7 /* REF:package:np8080/src/dialog/generate/generatedialog.html:517:542 */;
      changed = true;
      this._expr_7 = currVal_7;
    }
    if (changed) {
      this._NgModel_17_8.ngAfterChanges();
    }
    if (((!import18.debugThrowIfChanged) && firstCheck)) {
      this._NgModel_17_8.ngOnInit();
    }
    changed = false;
    final currVal_8 = _ctx.newLineAfter;
    if (import18.checkBinding(this._expr_8, currVal_8, 'newLineAfter', 'package:np8080/src/dialog/generate/generatedialog.html')) {
      if (import14.isDevToolsEnabled) {
        import14.Inspector.instance.recordInput(this._NgModel_21_7, 'ngModel', currVal_8);
      }
      this._NgModel_21_7.model = currVal_8 /* REF:package:np8080/src/dialog/generate/generatedialog.html:613:639 */;
      changed = true;
      this._expr_8 = currVal_8;
    }
    if (changed) {
      this._NgModel_21_7.ngAfterChanges();
    }
    if (((!import18.debugThrowIfChanged) && firstCheck)) {
      this._NgModel_21_7.ngOnInit();
    }
    changed = false;
    final currVal_9 = _ctx.getPreview();
    if (import18.checkBinding(this._expr_9, currVal_9, 'getPreview()', 'package:np8080/src/dialog/generate/generatedialog.html')) {
      if (import14.isDevToolsEnabled) {
        import14.Inspector.instance.recordInput(this._NgModel_25_7, 'ngModel', currVal_9);
      }
      this._NgModel_25_7.model = currVal_9 /* REF:package:np8080/src/dialog/generate/generatedialog.html:742:766 */;
      changed = true;
      this._expr_9 = currVal_9;
    }
    if (changed) {
      this._NgModel_25_7.ngAfterChanges();
    }
    if (((!import18.debugThrowIfChanged) && firstCheck)) {
      this._NgModel_25_7.ngOnInit();
    }
    final currVal_0 = (!_ctx.showDialog);
    if (import18.checkBinding(this._expr_0, currVal_0, '!showDialog', 'package:np8080/src/dialog/generate/generatedialog.html')) {
      import13.setProperty(this._el_0, 'hidden', currVal_0) /* REF:package:np8080/src/dialog/generate/generatedialog.html:18:40 */;
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
    this._DefaultValueAccessor_15_5.handleChange($event.target.value);
  }

  void _handleEvent_1($event) {
    final _ctx = this.ctx;
    _ctx.textToRepeat = $event;
  }

  void _handleEvent_2($event) {
    this._DefaultValueAccessor_17_5.touchHandler();
    this._NumberValueAccessor_17_6.touchHandler();
  }

  void _handleEvent_3($event) {
    this._DefaultValueAccessor_17_5.handleChange($event.target.value);
    this._NumberValueAccessor_17_6.handleChange($event.target.value);
  }

  void _handleEvent_4($event) {
    this._NumberValueAccessor_17_6.handleChange($event.target.value);
  }

  void _handleEvent_5($event) {
    final _ctx = this.ctx;
    _ctx.repeatCount = $event;
  }

  void _handleEvent_6($event) {
    this._CheckboxControlValueAccessor_21_5.handleChange($event.target.checked);
  }

  void _handleEvent_7($event) {
    final _ctx = this.ctx;
    _ctx.newLineAfter = $event;
  }

  void _handleEvent_8($event) {
    this._DefaultValueAccessor_25_5.handleChange($event.target.value);
  }

  static void _debugClearComponentStyles() {
    _componentStyles = null;
  }

  void initComponentStyles() {
    var styles = _componentStyles;
    if ((styles == null)) {
      _componentStyles = (styles = import9.ComponentStyles.unscoped(styles$GenerateDialog, _debugComponentUrl));
      if (import12.isDevMode) {
        import9.ComponentStyles.debugOnClear(_debugClearComponentStyles);
      }
    }
    this.componentStyles = styles;
  }
}

const _GenerateDialogNgFactory = ComponentFactory<import1.GenerateDialog>('generate-dialog', viewFactory_GenerateDialogHost0);
ComponentFactory<import1.GenerateDialog> get GenerateDialogNgFactory {
  return _GenerateDialogNgFactory;
}

ComponentFactory<import1.GenerateDialog> createGenerateDialogFactory() {
  return ComponentFactory('generate-dialog', viewFactory_GenerateDialogHost0);
}

final List<Object> styles$GenerateDialogHost = const [];

class _ViewGenerateDialogHost0 extends import20.HostView<import1.GenerateDialog> {
  @override
  void build() {
    this.componentView = ViewGenerateDialog0(this, 0);
    final _el_0 = this.componentView.rootElement;
    this.component = (import12.isDevMode
        ? import21.debugInjectorWrap(import1.GenerateDialog, () {
            return import1.GenerateDialog(this.injectorGet(import22.TextProcessingService, this.parentIndex), this.injectorGet(import23.TextareaDomService, this.parentIndex), this.injectorGet(import24.ThemeService, this.parentIndex), this.injectorGet(import25.EventBusService, this.parentIndex));
          })
        : import1.GenerateDialog(this.injectorGet(import22.TextProcessingService, this.parentIndex), this.injectorGet(import23.TextareaDomService, this.parentIndex), this.injectorGet(import24.ThemeService, this.parentIndex), this.injectorGet(import25.EventBusService, this.parentIndex)));
    this.initRootNode(_el_0);
  }
}

import20.HostView<import1.GenerateDialog> viewFactory_GenerateDialogHost0() {
  return _ViewGenerateDialogHost0();
}
