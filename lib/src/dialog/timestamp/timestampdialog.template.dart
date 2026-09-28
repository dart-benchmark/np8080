// **************************************************************************
// Generator: AngularDart Compiler
// **************************************************************************

import 'timestampdialog.dart';
import 'package:ngdart/src/core/linker/views/component_view.dart' as import0;
import 'timestampdialog.dart' as import1;
import 'package:ngdart/src/runtime/text_binding.dart' as import2;
import 'package:ngdart/src/common/directives/ng_class.dart' as import3;
import 'package:ngforms/src/directives/select_control_value_accessor.dart' as import4;
import 'package:ngforms/src/directives/control_value_accessor.dart' as import5;
import 'package:ngforms/src/directives/ng_model.dart' as import6;
import 'package:ngdart/src/core/linker/view_container.dart';
import 'package:ngdart/src/common/directives/ng_for.dart' as import8;
import 'package:ngforms/src/directives/checkbox_value_accessor.dart' as import9;
import 'package:ngforms/src/directives/default_value_accessor.dart' as import10;
import 'dart:html' as import11;
import 'package:ngdart/src/core/linker/style_encapsulation.dart' as import12;
import 'package:ngdart/src/core/linker/views/view.dart' as import13;
import 'package:ngdart/src/meta/change_detection_constants.dart' as import14;
import 'package:ngdart/src/utilities.dart' as import15;
import 'package:ngdart/src/runtime/dom_helpers.dart' as import16;
import 'package:ngdart/src/devtools.dart' as import17;
import 'package:ngdart/src/core/linker/template_ref.dart';
import 'package:ngdart/src/meta/di_tokens.dart' as import19;
import 'package:ngforms/src/directives/control_value_accessor.dart' as import20;
import 'package:ngforms/src/directives/ng_control.dart' as import21;
import 'package:ngdart/src/runtime/check_binding.dart' as import22;
import 'package:ngdart/src/runtime/interpolate.dart' as import23;
import 'package:ngdart/angular.dart';
import 'package:ngdart/src/core/linker/views/embedded_view.dart' as import25;
import 'package:ngdart/src/core/linker/views/render_view.dart' as import26;
import 'dart:core';
import 'package:ngdart/src/core/linker/views/host_view.dart' as import28;
import 'package:ngdart/src/di/errors.dart' as import29;
import '../../services/textprocessingservice.dart' as import30;
import '../../services/textareadomservice.dart' as import31;
import '../../services/themeservice.dart' as import32;
import '../../services/eventbusservice.dart' as import33;

final List<Object> styles$TimestampDialog = const [];

class ViewTimestampDialog0 extends import0.ComponentView<import1.TimestampDialog> {
  final import2.TextBinding _textBinding_51 = import2.TextBinding();
  late final import3.NgClass _NgClass_2_5;
  late final import3.NgClass _NgClass_7_5;
  late final import4.SelectControlValueAccessor _SelectControlValueAccessor_18_5;
  late final List<import5.ControlValueAccessor<dynamic>> _NgValueAccessor_18_6;
  late final import6.NgModel _NgModel_18_7;
  late final ViewContainer _appEl_20;
  late final import8.NgFor _NgFor_20_9;
  late final import9.CheckboxControlValueAccessor _CheckboxControlValueAccessor_35_5;
  late final List<import5.ControlValueAccessor<dynamic>> _NgValueAccessor_35_6;
  late final import6.NgModel _NgModel_35_7;
  late final import10.DefaultValueAccessor _DefaultValueAccessor_41_5;
  late final List<import5.ControlValueAccessor<dynamic>> _NgValueAccessor_41_6;
  late final import6.NgModel _NgModel_41_7;
  Object? _expr_0;
  Object? _expr_2;
  Object? _expr_4;
  Object? _expr_5;
  Object? _expr_7;
  Object? _expr_8;
  late final import11.DivElement _el_0;
  static import12.ComponentStyles? _componentStyles;
  ViewTimestampDialog0(import13.View parentView, int parentIndex) : super(parentView, parentIndex, import14.ChangeDetectionCheckedState.checkAlways) {
    this.initComponentStyles();
    this.rootElement = import15.unsafeCast(import11.document.createElement('timestamp-dialog'));
  }
  static String? get _debugComponentUrl {
    return (import15.isDevMode ? 'asset:np8080/lib/src/dialog/timestamp/timestampdialog.dart' : null);
  }

  @override
  void build() {
    final _ctx = this.ctx;
    final parentRenderNode = this.initViewRoot();
    final doc = import11.document;
    this._el_0 = import16.appendDiv(doc, parentRenderNode);
    import16.setAttribute(this._el_0, 'id', 'overlay');
    final _text_1 = import16.appendText(this._el_0, '\r\n    ');
    final _el_2 = import16.appendDiv(doc, this._el_0);
    this.updateChildClass(_el_2, 'timestampDialogPanel');
    this._NgClass_2_5 = import3.NgClass(_el_2);
    if (import17.isDevToolsEnabled) {
      import17.Inspector.instance.registerDirective(_el_2, this._NgClass_2_5);
    }
    final _text_3 = import16.appendText(_el_2, '\r\n        ');
    final _el_4 = import16.appendDiv(doc, _el_2);
    this.updateChildClass(_el_4, 'closeCross');
    final _text_5 = import16.appendText(_el_4, 'X');
    final _text_6 = import16.appendText(_el_2, '\r\n        ');
    final _el_7 = import16.appendDiv(doc, _el_2);
    this.updateChildClass(_el_7, 'header');
    this._NgClass_7_5 = import3.NgClass(_el_7);
    if (import17.isDevToolsEnabled) {
      import17.Inspector.instance.registerDirective(_el_7, this._NgClass_7_5);
    }
    final _text_8 = import16.appendText(_el_7, 'Timestamp');
    final _text_9 = import16.appendText(_el_2, '\r\n\r\n        ');
    final _el_10 = import16.appendDiv(doc, _el_2);
    import16.setAttribute(_el_10, 'style', 'text-align: center');
    final _text_11 = import16.appendText(_el_10, '\r\n            ');
    final _el_12 = import16.appendDiv(doc, _el_10);
    import16.setAttribute(_el_12, 'style', 'margin-left: 60px;text-align: left');
    final _text_13 = import16.appendText(_el_12, '\r\n\r\n                ');
    final _el_14 = import16.appendDiv(doc, _el_12);
    final _text_15 = import16.appendText(_el_14, '\r\n                    ');
    final _el_16 = import16.appendElement<import11.HtmlElement>(doc, _el_14, 'br');
    final _text_17 = import16.appendText(_el_14, '\r\n                    ');
    final _el_18 = import16.appendElement<import11.SelectElement>(doc, _el_14, 'select');
    import16.setAttribute(_el_18, 'id', 'patternSelect');
    import16.setAttribute(_el_18, 'multiple', 'yes');
    import16.setAttribute(_el_18, 'size', '8');
    import16.setAttribute(_el_18, 'style', 'padding:5px;width: 350px');
    this._SelectControlValueAccessor_18_5 = import4.SelectControlValueAccessor(_el_18);
    this._NgValueAccessor_18_6 = [this._SelectControlValueAccessor_18_5];
    this._NgModel_18_7 = import6.NgModel(null, this._NgValueAccessor_18_6);
    if (import17.isDevToolsEnabled) {
      import17.Inspector.instance.registerDirective(_el_18, this._SelectControlValueAccessor_18_5);
      import17.Inspector.instance.registerDirective(_el_18, this._NgModel_18_7);
    }
    final _text_19 = import16.appendText(_el_18, '\r\n                        ');
    final _anchor_20 = import16.appendAnchor(_el_18);
    this._appEl_20 = ViewContainer(20, 18, this, _anchor_20);
    var _TemplateRef_20_8 = TemplateRef(this._appEl_20, viewFactory_TimestampDialog1);
    this._NgFor_20_9 = import8.NgFor(this._appEl_20, _TemplateRef_20_8);
    if (import17.isDevToolsEnabled) {
      import17.Inspector.instance.registerDirective(_anchor_20, this._NgFor_20_9);
    }
    final _text_21 = import16.appendText(_el_18, '\r\n                    ');
    final _text_22 = import16.appendText(_el_14, '\r\n                    ');
    final _el_23 = import16.appendElement<import11.HtmlElement>(doc, _el_14, 'br');
    final _text_24 = import16.appendText(_el_14, '\r\n                    ');
    final _el_25 = import16.appendElement<import11.ButtonElement>(doc, _el_14, 'button');
    this.updateChildClass(_el_25, 'actionButton wideButton');
    final _text_26 = import16.appendText(_el_25, 'Update Times');
    final _text_27 = import16.appendText(_el_14, '\r\n                    ');
    final _el_28 = import16.appendElement<import11.HtmlElement>(doc, _el_14, 'br');
    final _el_29 = import16.appendElement<import11.HtmlElement>(doc, _el_14, 'br');
    final _text_30 = import16.appendText(_el_14, '\r\n                ');
    final _text_31 = import16.appendText(_el_12, '\r\n\r\n            ');
    final _text_32 = import16.appendText(_el_10, '\r\n\r\n            ');
    final _el_33 = import16.appendElement<import11.HtmlElement>(doc, _el_10, 'br');
    final _text_34 = import16.appendText(_el_10, '\r\n\r\n            ');
    final _el_35 = import16.appendElement<import11.InputElement>(doc, _el_10, 'input');
    import16.setAttribute(_el_35, 'type', 'checkbox');
    this._CheckboxControlValueAccessor_35_5 = import9.CheckboxControlValueAccessor(_el_35);
    this._NgValueAccessor_35_6 = [this._CheckboxControlValueAccessor_35_5];
    this._NgModel_35_7 = import6.NgModel(null, this._NgValueAccessor_35_6);
    if (import17.isDevToolsEnabled) {
      import17.Inspector.instance.registerDirective(_el_35, this._CheckboxControlValueAccessor_35_5);
      import17.Inspector.instance.registerDirective(_el_35, this._NgModel_35_7);
    }
    final _text_36 = import16.appendText(_el_10, ' Custom date/time format\r\n\r\n            ');
    final _el_37 = import16.appendElement<import11.HtmlElement>(doc, _el_10, 'br');
    final _text_38 = import16.appendText(_el_10, '\r\n\r\n            ');
    final _el_39 = import16.appendDiv(doc, _el_10);
    final _text_40 = import16.appendText(_el_39, '\r\n                ');
    final _el_41 = import16.appendElement<import11.InputElement>(doc, _el_39, 'input');
    import16.setAttribute(_el_41, 'placeholder', 'Type text here...');
    import16.setAttribute(_el_41, 'style', 'height:30px;width:50%');
    import16.setAttribute(_el_41, 'type', 'text');
    this._DefaultValueAccessor_41_5 = import10.DefaultValueAccessor(_el_41);
    this._NgValueAccessor_41_6 = [this._DefaultValueAccessor_41_5];
    this._NgModel_41_7 = import6.NgModel(null, this._NgValueAccessor_41_6);
    if (import17.isDevToolsEnabled) {
      import17.Inspector.instance.registerDirective(_el_41, this._DefaultValueAccessor_41_5);
      import17.Inspector.instance.registerDirective(_el_41, this._NgModel_41_7);
    }
    final _text_42 = import16.appendText(_el_39, '\r\n                ');
    final _el_43 = import16.appendElement<import11.ButtonElement>(doc, _el_39, 'button');
    this.updateChildClass(_el_43, 'actionButton');
    final _text_44 = import16.appendText(_el_43, 'Reset');
    final _text_45 = import16.appendText(_el_39, '\r\n                ');
    final _el_46 = import16.appendElement<import11.HtmlElement>(doc, _el_39, 'br');
    final _text_47 = import16.appendText(_el_39, '\r\n                ');
    final _el_48 = import16.appendElement<import11.HtmlElement>(doc, _el_39, 'br');
    final _text_49 = import16.appendText(_el_39, '\r\n\r\n                ');
    final _el_50 = import16.appendElement<import11.TextAreaElement>(doc, _el_39, 'textarea');
    this.updateChildClass(_el_50, 'previewText');
    import16.setAttribute(_el_50, 'readonly', '');
    import16.setAttribute(_el_50, 'style', 'height:30px;width:60%');
    _el_50.append(this._textBinding_51.element);
    final _text_52 = import16.appendText(_el_39, '\r\n            ');
    final _text_53 = import16.appendText(_el_10, '\r\n        ');
    final _text_54 = import16.appendText(_el_2, '\r\n\r\n        ');
    final _el_55 = import16.appendDiv(doc, _el_2);
    this.updateChildClass(_el_55, 'footer');
    final _text_56 = import16.appendText(_el_55, '\r\n            ');
    final _el_57 = import16.appendElement<import11.ButtonElement>(doc, _el_55, 'button');
    this.updateChildClass(_el_57, 'actionButton');
    final _text_58 = import16.appendText(_el_57, 'Prepend');
    final _text_59 = import16.appendText(_el_55, '\r\n            ');
    final _el_60 = import16.appendElement<import11.ButtonElement>(doc, _el_55, 'button');
    this.updateChildClass(_el_60, 'actionButton');
    final _text_61 = import16.appendText(_el_60, 'Insert');
    final _text_62 = import16.appendText(_el_55, '\r\n            ');
    final _el_63 = import16.appendElement<import11.ButtonElement>(doc, _el_55, 'button');
    this.updateChildClass(_el_63, 'actionButton');
    final _text_64 = import16.appendText(_el_63, 'Append');
    final _text_65 = import16.appendText(_el_55, '\r\n                 \r\n            ');
    final _el_66 = import16.appendElement<import11.ButtonElement>(doc, _el_55, 'button');
    this.updateChildClass(_el_66, 'closeButton  light-primary-color');
    final _text_67 = import16.appendText(_el_66, 'Close');
    final _text_68 = import16.appendText(_el_55, '\r\n        ');
    final _text_69 = import16.appendText(_el_2, '\r\n    ');
    final _text_70 = import16.appendText(this._el_0, '\r\n');
    _el_4.addEventListener('click', this.eventHandler0(_ctx.close));
    _el_18.addEventListener('keydown', this.eventHandler1(_ctx.keyHandler));
    _el_18.addEventListener('blur', this.eventHandler0(this._SelectControlValueAccessor_18_5.touchHandler));
    _el_18.addEventListener('change', this.eventHandler1(this._handleEvent_0));
    final subscription_0 = this._NgModel_18_7.update.listen(this.eventHandler1(this._handleEvent_1));
    _el_25.addEventListener('click', this.eventHandler0(_ctx.updateTime));
    _el_35.addEventListener('blur', this.eventHandler0(this._CheckboxControlValueAccessor_35_5.touchHandler));
    _el_35.addEventListener('change', this.eventHandler1(this._handleEvent_2));
    final subscription_1 = this._NgModel_35_7.update.listen(this.eventHandler1(this._handleEvent_3));
    _el_41.addEventListener('keyup', this.eventHandler0(_ctx.updateCustom));
    _el_41.addEventListener('blur', this.eventHandler0(this._DefaultValueAccessor_41_5.touchHandler));
    _el_41.addEventListener('input', this.eventHandler1(this._handleEvent_4));
    final subscription_2 = this._NgModel_41_7.update.listen(this.eventHandler1(this._handleEvent_5));
    _el_43.addEventListener('click', this.eventHandler0(_ctx.resetCustomFormat));
    _el_57.addEventListener('click', this.eventHandler0(_ctx.prependText));
    _el_60.addEventListener('click', this.eventHandler0(_ctx.insertCurrentPosition));
    _el_63.addEventListener('click', this.eventHandler0(_ctx.appendText));
    _el_66.addEventListener('click', this.eventHandler0(_ctx.closeTheDialog));
    this.initSubscriptions([subscription_0, subscription_1, subscription_2]);
  }

  @override
  dynamic injectorGetInternal(dynamic token, int nodeIndex, dynamic notFoundResult) {
    if (((18 <= nodeIndex) && (nodeIndex <= 21))) {
      if (identical(token, import4.SelectControlValueAccessor)) {
        return this._SelectControlValueAccessor_18_5;
      }
      if (identical(token, const import19.MultiToken<import20.ControlValueAccessor<dynamic>>('NgValueAccessor'))) {
        return this._NgValueAccessor_18_6;
      }
      if ((identical(token, import6.NgModel) || identical(token, import21.NgControl))) {
        return this._NgModel_18_7;
      }
    }
    if ((35 == nodeIndex)) {
      if (identical(token, const import19.MultiToken<import20.ControlValueAccessor<dynamic>>('NgValueAccessor'))) {
        return this._NgValueAccessor_35_6;
      }
      if ((identical(token, import6.NgModel) || identical(token, import21.NgControl))) {
        return this._NgModel_35_7;
      }
    }
    if ((41 == nodeIndex)) {
      if (identical(token, const import19.MultiToken<import20.ControlValueAccessor<dynamic>>('NgValueAccessor'))) {
        return this._NgValueAccessor_41_6;
      }
      if ((identical(token, import6.NgModel) || identical(token, import21.NgControl))) {
        return this._NgModel_41_7;
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
      if (import17.isDevToolsEnabled) {
        import17.Inspector.instance.recordInput(this._NgClass_2_5, 'class', 'timestampDialogPanel');
      }
      this._NgClass_2_5.initialClasses = 'timestampDialogPanel' /* REF:package:np8080/src/dialog/timestamp/timestampdialog.html:52:80 */;
    }
    final currVal_2 = ((_ctx.getClass() + ' ') + _ctx.getBorderClass());
    if (import22.checkBinding(this._expr_2, currVal_2, 'getClass()+\' \'+getBorderClass()', 'package:np8080/src/dialog/timestamp/timestampdialog.html')) {
      if (import17.isDevToolsEnabled) {
        import17.Inspector.instance.recordInput(this._NgClass_2_5, 'ngClass', currVal_2);
      }
      this._NgClass_2_5.rawClass = currVal_2 /* REF:package:np8080/src/dialog/timestamp/timestampdialog.html:81:124 */;
      this._expr_2 = currVal_2;
    }
    if ((!import22.debugThrowIfChanged)) {
      this._NgClass_2_5.ngDoCheck();
    }
    if (firstCheck) {
      if (import17.isDevToolsEnabled) {
        import17.Inspector.instance.recordInput(this._NgClass_7_5, 'class', 'header');
      }
      this._NgClass_7_5.initialClasses = 'header' /* REF:package:np8080/src/dialog/timestamp/timestampdialog.html:199:213 */;
    }
    final currVal_4 = _ctx.getHeaderClass();
    if (import22.checkBinding(this._expr_4, currVal_4, 'getHeaderClass()', 'package:np8080/src/dialog/timestamp/timestampdialog.html')) {
      if (import17.isDevToolsEnabled) {
        import17.Inspector.instance.recordInput(this._NgClass_7_5, 'ngClass', currVal_4);
      }
      this._NgClass_7_5.rawClass = currVal_4 /* REF:package:np8080/src/dialog/timestamp/timestampdialog.html:214:242 */;
      this._expr_4 = currVal_4;
    }
    if ((!import22.debugThrowIfChanged)) {
      this._NgClass_7_5.ngDoCheck();
    }
    changed = false;
    final currVal_5 = _ctx.timeStamp;
    if (import22.checkBinding(this._expr_5, currVal_5, 'timeStamp', 'package:np8080/src/dialog/timestamp/timestampdialog.html')) {
      if (import17.isDevToolsEnabled) {
        import17.Inspector.instance.recordInput(this._NgModel_18_7, 'ngModel', currVal_5);
      }
      this._NgModel_18_7.model = currVal_5 /* REF:package:np8080/src/dialog/timestamp/timestampdialog.html:552:575 */;
      changed = true;
      this._expr_5 = currVal_5;
    }
    if (changed) {
      this._NgModel_18_7.ngAfterChanges();
    }
    if (((!import22.debugThrowIfChanged) && firstCheck)) {
      this._NgModel_18_7.ngOnInit();
    }
    if (firstCheck) {
      if ((_ctx.times != null)) {
        if (import17.isDevToolsEnabled) {
          import17.Inspector.instance.recordInput(this._NgFor_20_9, 'ngForOf', _ctx.times);
        }
        this._NgFor_20_9.ngForOf = _ctx.times /* REF:package:np8080/src/dialog/timestamp/timestampdialog.html:692:718 */;
      }
    }
    if ((!import22.debugThrowIfChanged)) {
      this._NgFor_20_9.ngDoCheck();
    }
    changed = false;
    final currVal_7 = _ctx.useCustomFormat;
    if (import22.checkBinding(this._expr_7, currVal_7, 'useCustomFormat', 'package:np8080/src/dialog/timestamp/timestampdialog.html')) {
      if (import17.isDevToolsEnabled) {
        import17.Inspector.instance.recordInput(this._NgModel_35_7, 'ngModel', currVal_7);
      }
      this._NgModel_35_7.model = currVal_7 /* REF:package:np8080/src/dialog/timestamp/timestampdialog.html:1053:1082 */;
      changed = true;
      this._expr_7 = currVal_7;
    }
    if (changed) {
      this._NgModel_35_7.ngAfterChanges();
    }
    if (((!import22.debugThrowIfChanged) && firstCheck)) {
      this._NgModel_35_7.ngOnInit();
    }
    changed = false;
    final currVal_8 = _ctx.customFormat;
    if (import22.checkBinding(this._expr_8, currVal_8, 'customFormat', 'package:np8080/src/dialog/timestamp/timestampdialog.html')) {
      if (import17.isDevToolsEnabled) {
        import17.Inspector.instance.recordInput(this._NgModel_41_7, 'ngModel', currVal_8);
      }
      this._NgModel_41_7.model = currVal_8 /* REF:package:np8080/src/dialog/timestamp/timestampdialog.html:1243:1269 */;
      changed = true;
      this._expr_8 = currVal_8;
    }
    if (changed) {
      this._NgModel_41_7.ngAfterChanges();
    }
    if (((!import22.debugThrowIfChanged) && firstCheck)) {
      this._NgModel_41_7.ngOnInit();
    }
    this._appEl_20.detectChangesInNestedViews();
    final currVal_0 = (!_ctx.showDialog);
    if (import22.checkBinding(this._expr_0, currVal_0, '!showDialog', 'package:np8080/src/dialog/timestamp/timestampdialog.html')) {
      import16.setProperty(this._el_0, 'hidden', currVal_0) /* REF:package:np8080/src/dialog/timestamp/timestampdialog.html:18:40 */;
      this._expr_0 = currVal_0;
    }
    this._textBinding_51.updateText(import23.interpolateString0(_ctx.customTimeStamp)) /* REF:package:np8080/src/dialog/timestamp/timestampdialog.html:1626:1645 */;
  }

  @override
  void destroyInternal() {
    this._appEl_20.destroyNestedViews();
    this._NgClass_7_5.ngOnDestroy();
    this._NgClass_2_5.ngOnDestroy();
  }

  void _handleEvent_0($event) {
    this._SelectControlValueAccessor_18_5.handleChange($event.target.value);
  }

  void _handleEvent_1($event) {
    final _ctx = this.ctx;
    _ctx.timeStamp = $event;
  }

  void _handleEvent_2($event) {
    this._CheckboxControlValueAccessor_35_5.handleChange($event.target.checked);
  }

  void _handleEvent_3($event) {
    final _ctx = this.ctx;
    _ctx.useCustomFormat = $event;
  }

  void _handleEvent_4($event) {
    this._DefaultValueAccessor_41_5.handleChange($event.target.value);
  }

  void _handleEvent_5($event) {
    final _ctx = this.ctx;
    _ctx.customFormat = $event;
  }

  static void _debugClearComponentStyles() {
    _componentStyles = null;
  }

  void initComponentStyles() {
    var styles = _componentStyles;
    if ((styles == null)) {
      _componentStyles = (styles = import12.ComponentStyles.unscoped(styles$TimestampDialog, _debugComponentUrl));
      if (import15.isDevMode) {
        import12.ComponentStyles.debugOnClear(_debugClearComponentStyles);
      }
    }
    this.componentStyles = styles;
  }
}

const _TimestampDialogNgFactory = ComponentFactory<import1.TimestampDialog>('timestamp-dialog', viewFactory_TimestampDialogHost0);
ComponentFactory<import1.TimestampDialog> get TimestampDialogNgFactory {
  return _TimestampDialogNgFactory;
}

ComponentFactory<import1.TimestampDialog> createTimestampDialogFactory() {
  return ComponentFactory('timestamp-dialog', viewFactory_TimestampDialogHost0);
}

class _ViewTimestampDialog1 extends import25.EmbeddedView<import1.TimestampDialog> {
  final import2.TextBinding _textBinding_1 = import2.TextBinding();
  late final import4.NgSelectOption _NgSelectOption_0_5;
  Object? _expr_0;
  _ViewTimestampDialog1(import26.RenderView parentView, int parentIndex) : super(parentView, parentIndex);
  @override
  void build() {
    final doc = import11.document;
    final _el_0 = import15.unsafeCast(doc.createElement('option'));
    this._NgSelectOption_0_5 = import4.NgSelectOption(_el_0, import15.unsafeCast<ViewTimestampDialog0>((this.parentView!))._SelectControlValueAccessor_18_5);
    if (import17.isDevToolsEnabled) {
      import17.Inspector.instance.registerDirective(_el_0, this._NgSelectOption_0_5);
    }
    _el_0.append(this._textBinding_1.element);
    this.initRootNode(_el_0);
  }

  @override
  void detectChangesInternal() {
    final local_time = import15.unsafeCast<String>(this.locals['\$implicit']);
    final currVal_0 = local_time;
    if (import22.checkBinding(this._expr_0, currVal_0, 'time', 'package:np8080/src/dialog/timestamp/timestampdialog.html')) {
      if (import17.isDevToolsEnabled) {
        import17.Inspector.instance.recordInput(this._NgSelectOption_0_5, 'value', currVal_0);
      }
      this._NgSelectOption_0_5.value = currVal_0 /* REF:package:np8080/src/dialog/timestamp/timestampdialog.html:719:733 */;
      this._expr_0 = currVal_0;
    }
    this._textBinding_1.updateText(import23.interpolateString0(local_time)) /* REF:package:np8080/src/dialog/timestamp/timestampdialog.html:734:742 */;
  }

  @override
  void destroyInternal() {
    this._NgSelectOption_0_5.ngOnDestroy();
  }
}

import25.EmbeddedView<void> viewFactory_TimestampDialog1(import26.RenderView parentView, int parentIndex) {
  return _ViewTimestampDialog1(parentView, parentIndex);
}

final List<Object> styles$TimestampDialogHost = const [];

class _ViewTimestampDialogHost0 extends import28.HostView<import1.TimestampDialog> {
  @override
  void build() {
    this.componentView = ViewTimestampDialog0(this, 0);
    final _el_0 = this.componentView.rootElement;
    this.component = (import15.isDevMode
        ? import29.debugInjectorWrap(import1.TimestampDialog, () {
            return import1.TimestampDialog(this.injectorGet(import30.TextProcessingService, this.parentIndex), this.injectorGet(import31.TextareaDomService, this.parentIndex), this.injectorGet(import32.ThemeService, this.parentIndex), this.injectorGet(import33.EventBusService, this.parentIndex));
          })
        : import1.TimestampDialog(this.injectorGet(import30.TextProcessingService, this.parentIndex), this.injectorGet(import31.TextareaDomService, this.parentIndex), this.injectorGet(import32.ThemeService, this.parentIndex), this.injectorGet(import33.EventBusService, this.parentIndex)));
    this.initRootNode(_el_0);
  }
}

import28.HostView<import1.TimestampDialog> viewFactory_TimestampDialogHost0() {
  return _ViewTimestampDialogHost0();
}
