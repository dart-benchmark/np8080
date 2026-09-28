// **************************************************************************
// Generator: AngularDart Compiler
// **************************************************************************

import 'sequencedialog.dart';
import 'package:ngdart/src/core/linker/views/component_view.dart' as import0;
import 'sequencedialog.dart' as import1;
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

final List<Object> styles$SequenceDialog = const [];

class ViewSequenceDialog0 extends import0.ComponentView<import1.SequenceDialog> {
  late final import2.NgClass _NgClass_2_5;
  late final import2.NgClass _NgClass_7_5;
  late final import2.NgClass _NgClass_10_5;
  late final import3.DefaultValueAccessor _DefaultValueAccessor_15_5;
  late final import4.NumberValueAccessor _NumberValueAccessor_15_6;
  late final List<import5.ControlValueAccessor<dynamic>> _NgValueAccessor_15_7;
  late final import6.NgModel _NgModel_15_8;
  late final import3.DefaultValueAccessor _DefaultValueAccessor_21_5;
  late final import4.NumberValueAccessor _NumberValueAccessor_21_6;
  late final List<import5.ControlValueAccessor<dynamic>> _NgValueAccessor_21_7;
  late final import6.NgModel _NgModel_21_8;
  late final import3.DefaultValueAccessor _DefaultValueAccessor_28_5;
  late final import4.NumberValueAccessor _NumberValueAccessor_28_6;
  late final List<import5.ControlValueAccessor<dynamic>> _NgValueAccessor_28_7;
  late final import6.NgModel _NgModel_28_8;
  late final import3.DefaultValueAccessor _DefaultValueAccessor_34_5;
  late final List<import5.ControlValueAccessor<dynamic>> _NgValueAccessor_34_6;
  late final import6.NgModel _NgModel_34_7;
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
  ViewSequenceDialog0(import9.View parentView, int parentIndex) : super(parentView, parentIndex, import10.ChangeDetectionCheckedState.checkAlways) {
    this.initComponentStyles();
    this.rootElement = import11.unsafeCast(import7.document.createElement('sequence-dialog'));
  }
  static String? get _debugComponentUrl {
    return (import11.isDevMode ? 'asset:np8080/lib/src/dialog/sequence/sequencedialog.dart' : null);
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
    final _text_8 = import12.appendText(_el_7, 'Num Sequence');
    final _text_9 = import12.appendText(_el_2, '\r\n\r\n        ');
    final _el_10 = import12.appendDiv(doc, _el_2);
    import12.setAttribute(_el_10, 'style', 'padding-left: 150px;text-align: left');
    this._NgClass_10_5 = import2.NgClass(_el_10);
    if (import13.isDevToolsEnabled) {
      import13.Inspector.instance.registerDirective(_el_10, this._NgClass_10_5);
    }
    final _text_11 = import12.appendText(_el_10, '\r\n\r\n            ');
    final _el_12 = import12.appendElement<import7.HtmlElement>(doc, _el_10, 'label');
    import12.setAttribute(_el_12, 'style', 'min-width: 100px;display: inline-block');
    final _text_13 = import12.appendText(_el_12, 'Start at');
    final _text_14 = import12.appendText(_el_10, '\r\n            ');
    final _el_15 = import12.appendElement<import7.InputElement>(doc, _el_10, 'input');
    import12.setAttribute(_el_15, 'id', 'startTextbox');
    import12.setAttribute(_el_15, 'min', '1');
    import12.setAttribute(_el_15, 'style', 'width: 100px');
    import12.setAttribute(_el_15, 'type', 'number');
    this._DefaultValueAccessor_15_5 = import3.DefaultValueAccessor(_el_15);
    this._NumberValueAccessor_15_6 = import4.NumberValueAccessor(_el_15);
    this._NgValueAccessor_15_7 = [this._DefaultValueAccessor_15_5, this._NumberValueAccessor_15_6];
    this._NgModel_15_8 = import6.NgModel(null, this._NgValueAccessor_15_7);
    if (import13.isDevToolsEnabled) {
      import13.Inspector.instance.registerDirective(_el_15, this._DefaultValueAccessor_15_5);
      import13.Inspector.instance.registerDirective(_el_15, this._NumberValueAccessor_15_6);
      import13.Inspector.instance.registerDirective(_el_15, this._NgModel_15_8);
    }
    final _el_16 = import12.appendElement<import7.HtmlElement>(doc, _el_10, 'br');
    final _text_17 = import12.appendText(_el_10, '\r\n\r\n            ');
    final _el_18 = import12.appendElement<import7.HtmlElement>(doc, _el_10, 'label');
    import12.setAttribute(_el_18, 'style', 'min-width: 100px;display: inline-block');
    final _text_19 = import12.appendText(_el_18, ' and repeat');
    final _text_20 = import12.appendText(_el_10, '\r\n            ');
    final _el_21 = import12.appendElement<import7.InputElement>(doc, _el_10, 'input');
    import12.setAttribute(_el_21, 'min', '10');
    import12.setAttribute(_el_21, 'style', 'width: 100px');
    import12.setAttribute(_el_21, 'type', 'number');
    this._DefaultValueAccessor_21_5 = import3.DefaultValueAccessor(_el_21);
    this._NumberValueAccessor_21_6 = import4.NumberValueAccessor(_el_21);
    this._NgValueAccessor_21_7 = [this._DefaultValueAccessor_21_5, this._NumberValueAccessor_21_6];
    this._NgModel_21_8 = import6.NgModel(null, this._NgValueAccessor_21_7);
    if (import13.isDevToolsEnabled) {
      import13.Inspector.instance.registerDirective(_el_21, this._DefaultValueAccessor_21_5);
      import13.Inspector.instance.registerDirective(_el_21, this._NumberValueAccessor_21_6);
      import13.Inspector.instance.registerDirective(_el_21, this._NgModel_21_8);
    }
    final _text_22 = import12.appendText(_el_10, ' times');
    final _el_23 = import12.appendElement<import7.HtmlElement>(doc, _el_10, 'br');
    final _text_24 = import12.appendText(_el_10, '\r\n\r\n            ');
    final _el_25 = import12.appendElement<import7.HtmlElement>(doc, _el_10, 'label');
    import12.setAttribute(_el_25, 'style', 'min-width: 100px;display: inline-block');
    final _text_26 = import12.appendText(_el_25, 'adding');
    final _text_27 = import12.appendText(_el_10, '\r\n            ');
    final _el_28 = import12.appendElement<import7.InputElement>(doc, _el_10, 'input');
    import12.setAttribute(_el_28, 'style', 'width: 100px');
    import12.setAttribute(_el_28, 'type', 'number');
    this._DefaultValueAccessor_28_5 = import3.DefaultValueAccessor(_el_28);
    this._NumberValueAccessor_28_6 = import4.NumberValueAccessor(_el_28);
    this._NgValueAccessor_28_7 = [this._DefaultValueAccessor_28_5, this._NumberValueAccessor_28_6];
    this._NgModel_28_8 = import6.NgModel(null, this._NgValueAccessor_28_7);
    if (import13.isDevToolsEnabled) {
      import13.Inspector.instance.registerDirective(_el_28, this._DefaultValueAccessor_28_5);
      import13.Inspector.instance.registerDirective(_el_28, this._NumberValueAccessor_28_6);
      import13.Inspector.instance.registerDirective(_el_28, this._NgModel_28_8);
    }
    final _text_29 = import12.appendText(_el_10, ' each time');
    final _el_30 = import12.appendElement<import7.HtmlElement>(doc, _el_10, 'br');
    final _text_31 = import12.appendText(_el_10, '\r\n\r\n            ');
    final _el_32 = import12.appendElement<import7.HtmlElement>(doc, _el_10, 'br');
    final _text_33 = import12.appendText(_el_10, '\r\n            ');
    final _el_34 = import12.appendElement<import7.TextAreaElement>(doc, _el_10, 'textarea');
    this.updateChildClass(_el_34, 'previewText');
    import12.setAttribute(_el_34, 'readonly', '');
    this._DefaultValueAccessor_34_5 = import3.DefaultValueAccessor(_el_34);
    this._NgValueAccessor_34_6 = [this._DefaultValueAccessor_34_5];
    this._NgModel_34_7 = import6.NgModel(null, this._NgValueAccessor_34_6);
    if (import13.isDevToolsEnabled) {
      import13.Inspector.instance.registerDirective(_el_34, this._DefaultValueAccessor_34_5);
      import13.Inspector.instance.registerDirective(_el_34, this._NgModel_34_7);
    }
    final _text_35 = import12.appendText(_el_10, '\r\n            ');
    final _el_36 = import12.appendDiv(doc, _el_10);
    this.updateChildClass(_el_36, 'previewText');
    import12.setAttribute(_el_36, 'id', 'sequencePreviewCard');
    final _text_37 = import12.appendText(_el_10, '\r\n\r\n            ');
    final _el_38 = import12.appendDiv(doc, _el_10);
    this.updateChildClass(_el_38, 'footer');
    final _text_39 = import12.appendText(_el_38, '\r\n                ');
    final _el_40 = import12.appendElement<import7.ButtonElement>(doc, _el_38, 'button');
    this.updateChildClass(_el_40, 'actionButton');
    final _text_41 = import12.appendText(_el_40, 'Rich Preview');
    final _text_42 = import12.appendText(_el_38, '\r\n                ');
    final _el_43 = import12.appendElement<import7.ButtonElement>(doc, _el_38, 'button');
    this.updateChildClass(_el_43, 'actionButton');
    final _text_44 = import12.appendText(_el_43, 'Open As Link');
    final _text_45 = import12.appendText(_el_38, '\r\n                ');
    final _el_46 = import12.appendElement<import7.ButtonElement>(doc, _el_38, 'button');
    this.updateChildClass(_el_46, 'actionButton');
    final _text_47 = import12.appendText(_el_46, 'Prepend');
    final _text_48 = import12.appendText(_el_38, '\r\n                ');
    final _el_49 = import12.appendElement<import7.ButtonElement>(doc, _el_38, 'button');
    this.updateChildClass(_el_49, 'actionButton');
    final _text_50 = import12.appendText(_el_49, 'Insert');
    final _text_51 = import12.appendText(_el_38, '\r\n                ');
    final _el_52 = import12.appendElement<import7.ButtonElement>(doc, _el_38, 'button');
    this.updateChildClass(_el_52, 'actionButton');
    final _text_53 = import12.appendText(_el_52, 'Append');
    final _text_54 = import12.appendText(_el_38, '\r\n                     \r\n                ');
    final _el_55 = import12.appendElement<import7.ButtonElement>(doc, _el_38, 'button');
    this.updateChildClass(_el_55, 'closeButton');
    import12.setAttribute(_el_55, 'style', 'visibility: hidden');
    final _text_56 = import12.appendText(_el_55, 'Peek!');
    final _text_57 = import12.appendText(_el_38, '\r\n                ');
    final _el_58 = import12.appendElement<import7.ButtonElement>(doc, _el_38, 'button');
    this.updateChildClass(_el_58, 'closeButton light-primary-color');
    final _text_59 = import12.appendText(_el_58, 'Close');
    final _text_60 = import12.appendText(_el_38, '\r\n            ');
    final _text_61 = import12.appendText(_el_10, '\r\n        ');
    final _text_62 = import12.appendText(_el_2, '\r\n    ');
    final _text_63 = import12.appendText(this._el_0, '\r\n');
    _el_4.addEventListener('click', this.eventHandler0(_ctx.close));
    _el_15.addEventListener('blur', this.eventHandler1(this._handleEvent_0));
    _el_15.addEventListener('input', this.eventHandler1(this._handleEvent_1));
    _el_15.addEventListener('change', this.eventHandler1(this._handleEvent_2));
    final subscription_0 = this._NgModel_15_8.update.listen(this.eventHandler1(this._handleEvent_3));
    _el_21.addEventListener('blur', this.eventHandler1(this._handleEvent_4));
    _el_21.addEventListener('input', this.eventHandler1(this._handleEvent_5));
    _el_21.addEventListener('change', this.eventHandler1(this._handleEvent_6));
    final subscription_1 = this._NgModel_21_8.update.listen(this.eventHandler1(this._handleEvent_7));
    _el_28.addEventListener('blur', this.eventHandler1(this._handleEvent_8));
    _el_28.addEventListener('input', this.eventHandler1(this._handleEvent_9));
    _el_28.addEventListener('change', this.eventHandler1(this._handleEvent_10));
    final subscription_2 = this._NgModel_28_8.update.listen(this.eventHandler1(this._handleEvent_11));
    _el_34.addEventListener('blur', this.eventHandler0(this._DefaultValueAccessor_34_5.touchHandler));
    _el_34.addEventListener('input', this.eventHandler1(this._handleEvent_12));
    _el_40.addEventListener('click', this.eventHandler0(_ctx.richPreviewHandler));
    _el_43.addEventListener('click', this.eventHandler0(_ctx.openReferenceLinkHandlerSafe));
    _el_46.addEventListener('click', this.eventHandler0(_ctx.prependText));
    _el_49.addEventListener('click', this.eventHandler0(_ctx.insertCurrentPosition));
    _el_52.addEventListener('click', this.eventHandler0(_ctx.appendText));
    _el_55.addEventListener('click', this.eventHandler0(_ctx.closeTheDialog));
    _el_58.addEventListener('click', this.eventHandler0(_ctx.closeTheDialog));
    this.initSubscriptions([subscription_0, subscription_1, subscription_2]);
  }

  @override
  dynamic injectorGetInternal(dynamic token, int nodeIndex, dynamic notFoundResult) {
    if ((15 == nodeIndex)) {
      if (identical(token, const import14.MultiToken<import15.ControlValueAccessor<dynamic>>('NgValueAccessor'))) {
        return this._NgValueAccessor_15_7;
      }
      if ((identical(token, import6.NgModel) || identical(token, import16.NgControl))) {
        return this._NgModel_15_8;
      }
    }
    if ((21 == nodeIndex)) {
      if (identical(token, const import14.MultiToken<import15.ControlValueAccessor<dynamic>>('NgValueAccessor'))) {
        return this._NgValueAccessor_21_7;
      }
      if ((identical(token, import6.NgModel) || identical(token, import16.NgControl))) {
        return this._NgModel_21_8;
      }
    }
    if ((28 == nodeIndex)) {
      if (identical(token, const import14.MultiToken<import15.ControlValueAccessor<dynamic>>('NgValueAccessor'))) {
        return this._NgValueAccessor_28_7;
      }
      if ((identical(token, import6.NgModel) || identical(token, import16.NgControl))) {
        return this._NgModel_28_8;
      }
    }
    if ((34 == nodeIndex)) {
      if (identical(token, const import14.MultiToken<import15.ControlValueAccessor<dynamic>>('NgValueAccessor'))) {
        return this._NgValueAccessor_34_6;
      }
      if ((identical(token, import6.NgModel) || identical(token, import16.NgControl))) {
        return this._NgModel_34_7;
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
      this._NgClass_2_5.initialClasses = 'dialogPanel' /* REF:package:np8080/src/dialog/sequence/sequencedialog.html:52:71 */;
    }
    final currVal_2 = ((_ctx.getClass() + ' ') + _ctx.getBorderClass());
    if (import17.checkBinding(this._expr_2, currVal_2, 'getClass()+\' \'+getBorderClass()', 'package:np8080/src/dialog/sequence/sequencedialog.html')) {
      if (import13.isDevToolsEnabled) {
        import13.Inspector.instance.recordInput(this._NgClass_2_5, 'ngClass', currVal_2);
      }
      this._NgClass_2_5.rawClass = currVal_2 /* REF:package:np8080/src/dialog/sequence/sequencedialog.html:72:115 */;
      this._expr_2 = currVal_2;
    }
    if ((!import17.debugThrowIfChanged)) {
      this._NgClass_2_5.ngDoCheck();
    }
    if (firstCheck) {
      if (import13.isDevToolsEnabled) {
        import13.Inspector.instance.recordInput(this._NgClass_7_5, 'class', 'header');
      }
      this._NgClass_7_5.initialClasses = 'header' /* REF:package:np8080/src/dialog/sequence/sequencedialog.html:190:204 */;
    }
    final currVal_4 = _ctx.getHeaderClass();
    if (import17.checkBinding(this._expr_4, currVal_4, 'getHeaderClass()', 'package:np8080/src/dialog/sequence/sequencedialog.html')) {
      if (import13.isDevToolsEnabled) {
        import13.Inspector.instance.recordInput(this._NgClass_7_5, 'ngClass', currVal_4);
      }
      this._NgClass_7_5.rawClass = currVal_4 /* REF:package:np8080/src/dialog/sequence/sequencedialog.html:205:233 */;
      this._expr_4 = currVal_4;
    }
    if ((!import17.debugThrowIfChanged)) {
      this._NgClass_7_5.ngDoCheck();
    }
    final currVal_5 = _ctx.getClass();
    if (import17.checkBinding(this._expr_5, currVal_5, 'getClass()', 'package:np8080/src/dialog/sequence/sequencedialog.html')) {
      if (import13.isDevToolsEnabled) {
        import13.Inspector.instance.recordInput(this._NgClass_10_5, 'ngClass', currVal_5);
      }
      this._NgClass_10_5.rawClass = currVal_5 /* REF:package:np8080/src/dialog/sequence/sequencedialog.html:314:336 */;
      this._expr_5 = currVal_5;
    }
    if ((!import17.debugThrowIfChanged)) {
      this._NgClass_10_5.ngDoCheck();
    }
    changed = false;
    final currVal_6 = _ctx.startIndex;
    if (import17.checkBinding(this._expr_6, currVal_6, 'startIndex', 'package:np8080/src/dialog/sequence/sequencedialog.html')) {
      if (import13.isDevToolsEnabled) {
        import13.Inspector.instance.recordInput(this._NgModel_15_8, 'ngModel', currVal_6);
      }
      this._NgModel_15_8.model = currVal_6 /* REF:package:np8080/src/dialog/sequence/sequencedialog.html:458:482 */;
      changed = true;
      this._expr_6 = currVal_6;
    }
    if (changed) {
      this._NgModel_15_8.ngAfterChanges();
    }
    if (((!import17.debugThrowIfChanged) && firstCheck)) {
      this._NgModel_15_8.ngOnInit();
    }
    changed = false;
    final currVal_7 = _ctx.repeatCount;
    if (import17.checkBinding(this._expr_7, currVal_7, 'repeatCount', 'package:np8080/src/dialog/sequence/sequencedialog.html')) {
      if (import13.isDevToolsEnabled) {
        import13.Inspector.instance.recordInput(this._NgModel_21_8, 'ngModel', currVal_7);
      }
      this._NgModel_21_8.model = currVal_7 /* REF:package:np8080/src/dialog/sequence/sequencedialog.html:659:684 */;
      changed = true;
      this._expr_7 = currVal_7;
    }
    if (changed) {
      this._NgModel_21_8.ngAfterChanges();
    }
    if (((!import17.debugThrowIfChanged) && firstCheck)) {
      this._NgModel_21_8.ngOnInit();
    }
    changed = false;
    final currVal_8 = _ctx.increment;
    if (import17.checkBinding(this._expr_8, currVal_8, 'increment', 'package:np8080/src/dialog/sequence/sequencedialog.html')) {
      if (import13.isDevToolsEnabled) {
        import13.Inspector.instance.recordInput(this._NgModel_28_8, 'ngModel', currVal_8);
      }
      this._NgModel_28_8.model = currVal_8 /* REF:package:np8080/src/dialog/sequence/sequencedialog.html:845:868 */;
      changed = true;
      this._expr_8 = currVal_8;
    }
    if (changed) {
      this._NgModel_28_8.ngAfterChanges();
    }
    if (((!import17.debugThrowIfChanged) && firstCheck)) {
      this._NgModel_28_8.ngOnInit();
    }
    changed = false;
    final currVal_9 = _ctx.getPreview();
    if (import17.checkBinding(this._expr_9, currVal_9, 'getPreview()', 'package:np8080/src/dialog/sequence/sequencedialog.html')) {
      if (import13.isDevToolsEnabled) {
        import13.Inspector.instance.recordInput(this._NgModel_34_7, 'ngModel', currVal_9);
      }
      this._NgModel_34_7.model = currVal_9 /* REF:package:np8080/src/dialog/sequence/sequencedialog.html:979:1003 */;
      changed = true;
      this._expr_9 = currVal_9;
    }
    if (changed) {
      this._NgModel_34_7.ngAfterChanges();
    }
    if (((!import17.debugThrowIfChanged) && firstCheck)) {
      this._NgModel_34_7.ngOnInit();
    }
    final currVal_0 = (!_ctx.showDialog);
    if (import17.checkBinding(this._expr_0, currVal_0, '!showDialog', 'package:np8080/src/dialog/sequence/sequencedialog.html')) {
      import12.setProperty(this._el_0, 'hidden', currVal_0) /* REF:package:np8080/src/dialog/sequence/sequencedialog.html:18:40 */;
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
    this._DefaultValueAccessor_15_5.touchHandler();
    this._NumberValueAccessor_15_6.touchHandler();
  }

  void _handleEvent_1($event) {
    this._DefaultValueAccessor_15_5.handleChange($event.target.value);
    this._NumberValueAccessor_15_6.handleChange($event.target.value);
  }

  void _handleEvent_2($event) {
    this._NumberValueAccessor_15_6.handleChange($event.target.value);
  }

  void _handleEvent_3($event) {
    final _ctx = this.ctx;
    _ctx.startIndex = $event;
  }

  void _handleEvent_4($event) {
    this._DefaultValueAccessor_21_5.touchHandler();
    this._NumberValueAccessor_21_6.touchHandler();
  }

  void _handleEvent_5($event) {
    this._DefaultValueAccessor_21_5.handleChange($event.target.value);
    this._NumberValueAccessor_21_6.handleChange($event.target.value);
  }

  void _handleEvent_6($event) {
    this._NumberValueAccessor_21_6.handleChange($event.target.value);
  }

  void _handleEvent_7($event) {
    final _ctx = this.ctx;
    _ctx.repeatCount = $event;
  }

  void _handleEvent_8($event) {
    this._DefaultValueAccessor_28_5.touchHandler();
    this._NumberValueAccessor_28_6.touchHandler();
  }

  void _handleEvent_9($event) {
    this._DefaultValueAccessor_28_5.handleChange($event.target.value);
    this._NumberValueAccessor_28_6.handleChange($event.target.value);
  }

  void _handleEvent_10($event) {
    this._NumberValueAccessor_28_6.handleChange($event.target.value);
  }

  void _handleEvent_11($event) {
    final _ctx = this.ctx;
    _ctx.increment = $event;
  }

  void _handleEvent_12($event) {
    this._DefaultValueAccessor_34_5.handleChange($event.target.value);
  }

  static void _debugClearComponentStyles() {
    _componentStyles = null;
  }

  void initComponentStyles() {
    var styles = _componentStyles;
    if ((styles == null)) {
      _componentStyles = (styles = import8.ComponentStyles.unscoped(styles$SequenceDialog, _debugComponentUrl));
      if (import11.isDevMode) {
        import8.ComponentStyles.debugOnClear(_debugClearComponentStyles);
      }
    }
    this.componentStyles = styles;
  }
}

const _SequenceDialogNgFactory = ComponentFactory<import1.SequenceDialog>('sequence-dialog', viewFactory_SequenceDialogHost0);
ComponentFactory<import1.SequenceDialog> get SequenceDialogNgFactory {
  return _SequenceDialogNgFactory;
}

ComponentFactory<import1.SequenceDialog> createSequenceDialogFactory() {
  return ComponentFactory('sequence-dialog', viewFactory_SequenceDialogHost0);
}

final List<Object> styles$SequenceDialogHost = const [];

class _ViewSequenceDialogHost0 extends import19.HostView<import1.SequenceDialog> {
  @override
  void build() {
    this.componentView = ViewSequenceDialog0(this, 0);
    final _el_0 = this.componentView.rootElement;
    this.component = (import11.isDevMode
        ? import20.debugInjectorWrap(import1.SequenceDialog, () {
            return import1.SequenceDialog(this.injectorGet(import21.TextProcessingService, this.parentIndex), this.injectorGet(import22.TextareaDomService, this.parentIndex), this.injectorGet(import23.ThemeService, this.parentIndex), this.injectorGet(import24.EventBusService, this.parentIndex));
          })
        : import1.SequenceDialog(this.injectorGet(import21.TextProcessingService, this.parentIndex), this.injectorGet(import22.TextareaDomService, this.parentIndex), this.injectorGet(import23.ThemeService, this.parentIndex), this.injectorGet(import24.EventBusService, this.parentIndex)));
    this.initRootNode(_el_0);
  }
}

import19.HostView<import1.SequenceDialog> viewFactory_SequenceDialogHost0() {
  return _ViewSequenceDialogHost0();
}
