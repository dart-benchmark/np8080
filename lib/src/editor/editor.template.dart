// **************************************************************************
// Generator: AngularDart Compiler
// **************************************************************************

import 'editor.dart';
import 'package:ngdart/src/core/linker/views/component_view.dart' as import0;
import 'editor.dart' as import1;
import 'package:ngdart/src/common/directives/ng_class.dart' as import2;
import 'package:ngforms/src/directives/default_value_accessor.dart' as import3;
import 'package:ngforms/src/directives/control_value_accessor.dart' as import4;
import 'package:ngforms/src/directives/ng_model.dart' as import5;
import 'views/markdownpreview.template.dart' as import6;
import 'views/markdownpreview.dart' as import7;
import 'statuspanel.template.dart' as import8;
import 'statuspanel.dart' as import9;
import '../dialog/deletelines/deletelinesdialog.template.dart' as import10;
import '../dialog/deletelines/deletelinesdialog.dart' as import11;
import '../dialog/generate/generatedialog.template.dart' as import12;
import '../dialog/generate/generatedialog.dart' as import13;
import '../dialog/replace/replacedialog.template.dart' as import14;
import '../dialog/replace/replacedialog.dart' as import15;
import '../dialog/prepost/prepostdialog.template.dart' as import16;
import '../dialog/prepost/prepostdialog.dart' as import17;
import '../dialog/sequence/sequencedialog.template.dart' as import18;
import '../dialog/sequence/sequencedialog.dart' as import19;
import '../dialog/timestamp/timestampdialog.template.dart' as import20;
import '../dialog/timestamp/timestampdialog.dart' as import21;
import '../dialog/split/splitdialog.template.dart' as import22;
import '../dialog/split/splitdialog.dart' as import23;
import '../dialog/splice/splicedialog.template.dart' as import24;
import '../dialog/splice/splicedialog.dart' as import25;
import '../dialog/themes/themesdialog.template.dart' as import26;
import '../dialog/themes/themesdialog.dart' as import27;
import 'dart:html' as import28;
import 'package:ngdart/src/core/linker/style_encapsulation.dart' as import29;
import 'package:ngdart/src/core/linker/views/view.dart' as import30;
import 'package:ngdart/src/meta/change_detection_constants.dart' as import31;
import 'package:ngdart/src/utilities.dart' as import32;
import 'package:ngdart/src/runtime/dom_helpers.dart' as import33;
import 'package:ngdart/src/devtools.dart' as import34;
import 'package:ngdart/src/di/errors.dart' as import35;
import '../services/textprocessingservice.dart' as import36;
import '../services/textareadomservice.dart' as import37;
import '../services/themeservice.dart' as import38;
import '../services/eventbusservice.dart' as import39;
import 'package:ngdart/src/meta/di_tokens.dart' as import40;
import 'package:ngforms/src/directives/control_value_accessor.dart' as import41;
import 'package:ngforms/src/directives/ng_control.dart' as import42;
import 'package:ngdart/src/runtime/check_binding.dart' as import43;
import 'package:ngdart/angular.dart';
import 'package:ngdart/src/core/linker/views/host_view.dart' as import45;

final List<Object> styles$EditorComponent = const [];

class ViewEditorComponent0 extends import0.ComponentView<import1.EditorComponent> {
  late final import2.NgClass _NgClass_0_5;
  late final import3.DefaultValueAccessor _DefaultValueAccessor_2_5;
  late final List<import4.ControlValueAccessor<dynamic>> _NgValueAccessor_2_6;
  late final import5.NgModel _NgModel_2_7;
  late final import2.NgClass _NgClass_2_8;
  late final import6.ViewMarkdownPreview0 _compView_3;
  late final import7.MarkdownPreview _MarkdownPreview_3_5;
  late final import2.NgClass _NgClass_4_5;
  late final import8.ViewStatusPanel0 _compView_5;
  late final import9.StatusPanel _StatusPanel_5_5;
  late final import10.ViewDeleteLinesDialog0 _compView_6;
  late final import11.DeleteLinesDialog _DeleteLinesDialog_6_5;
  late final import12.ViewGenerateDialog0 _compView_7;
  late final import13.GenerateDialog _GenerateDialog_7_5;
  late final import14.ViewReplaceDialog0 _compView_8;
  late final import15.ReplaceDialog _ReplaceDialog_8_5;
  late final import16.ViewPrePostDialog0 _compView_9;
  late final import17.PrePostDialog _PrePostDialog_9_5;
  late final import18.ViewSequenceDialog0 _compView_10;
  late final import19.SequenceDialog _SequenceDialog_10_5;
  late final import20.ViewTimestampDialog0 _compView_11;
  late final import21.TimestampDialog _TimestampDialog_11_5;
  late final import22.ViewSplitDialog0 _compView_12;
  late final import23.SplitDialog _SplitDialog_12_5;
  late final import24.ViewSpliceDialog0 _compView_13;
  late final import25.SpliceDialog _SpliceDialog_13_5;
  late final import26.ViewThemesDialog0 _compView_14;
  late final import27.ThemesDialog _ThemesDialog_14_5;
  Object? _expr_0;
  Object? _expr_1;
  Object? _expr_2;
  Object? _expr_3;
  Object? _expr_4;
  Object? _expr_5;
  Object? _expr_6;
  Object? _expr_7;
  Object? _expr_8;
  Object? _expr_9;
  Object? _expr_10;
  Object? _expr_11;
  Object? _expr_12;
  Object? _expr_13;
  Object? _expr_14;
  Object? _expr_15;
  late final import28.TextAreaElement _el_2;
  static import29.ComponentStyles? _componentStyles;
  ViewEditorComponent0(import30.View parentView, int parentIndex) : super(parentView, parentIndex, import31.ChangeDetectionCheckedState.checkAlways) {
    this.initComponentStyles();
    this.rootElement = import32.unsafeCast(import28.document.createElement('plain-editor'));
  }
  static String? get _debugComponentUrl {
    return (import32.isDevMode ? 'asset:np8080/lib/src/editor/editor.dart' : null);
  }

  @override
  void build() {
    final _ctx = this.ctx;
    final parentRenderNode = this.initViewRoot();
    final doc = import28.document;
    final _el_0 = import33.appendDiv(doc, parentRenderNode);
    import33.setAttribute(_el_0, 'style', 'display: flex;  flex-flow: column;height: 100vh;');
    this._NgClass_0_5 = import2.NgClass(_el_0);
    if (import34.isDevToolsEnabled) {
      import34.Inspector.instance.registerDirective(_el_0, this._NgClass_0_5);
    }
    final _el_1 = import33.appendDiv(doc, _el_0);
    this.updateChildClass(_el_1, 'mainEditorDisplay');
    this._el_2 = import33.appendElement<import28.TextAreaElement>(doc, _el_1, 'textarea');
    import33.setAttribute(this._el_2, 'id', 'nptextbox');
    this._el_2.tabIndex = 1;
    this._DefaultValueAccessor_2_5 = import3.DefaultValueAccessor(this._el_2);
    this._NgValueAccessor_2_6 = [this._DefaultValueAccessor_2_5];
    this._NgModel_2_7 = import5.NgModel(null, this._NgValueAccessor_2_6);
    this._NgClass_2_8 = import2.NgClass(this._el_2);
    if (import34.isDevToolsEnabled) {
      import34.Inspector.instance.registerDirective(this._el_2, this._DefaultValueAccessor_2_5);
      import34.Inspector.instance.registerDirective(this._el_2, this._NgModel_2_7);
      import34.Inspector.instance.registerDirective(this._el_2, this._NgClass_2_8);
    }
    this._compView_3 = import6.ViewMarkdownPreview0(this, 3);
    final _el_3 = this._compView_3.rootElement;
    _el_1.append(_el_3);
    this._MarkdownPreview_3_5 = (import32.isDevMode
        ? import35.debugInjectorWrap(import7.MarkdownPreview, () {
            return import7.MarkdownPreview((this.parentView!).injectorGet(import36.TextProcessingService, this.parentIndex), (this.parentView!).injectorGet(import37.TextareaDomService, this.parentIndex), (this.parentView!).injectorGet(import38.ThemeService, this.parentIndex), (this.parentView!).injectorGet(import39.EventBusService, this.parentIndex));
          })
        : import7.MarkdownPreview((this.parentView!).injectorGet(import36.TextProcessingService, this.parentIndex), (this.parentView!).injectorGet(import37.TextareaDomService, this.parentIndex), (this.parentView!).injectorGet(import38.ThemeService, this.parentIndex), (this.parentView!).injectorGet(import39.EventBusService, this.parentIndex)));
    this._compView_3.create(this._MarkdownPreview_3_5);
    final _el_4 = import33.appendElement<import28.HtmlElement>(doc, _el_0, 'footer');
    import33.setAttribute(_el_4, 'style', 'position: absolute;bottom: 1px;height: 10px;padding: 8px;width: 100%');
    this._NgClass_4_5 = import2.NgClass(_el_4);
    if (import34.isDevToolsEnabled) {
      import34.Inspector.instance.registerDirective(_el_4, this._NgClass_4_5);
    }
    this._compView_5 = import8.ViewStatusPanel0(this, 5);
    final _el_5 = this._compView_5.rootElement;
    _el_4.append(_el_5);
    this._StatusPanel_5_5 = (import32.isDevMode
        ? import35.debugInjectorWrap(import9.StatusPanel, () {
            return import9.StatusPanel((this.parentView!).injectorGet(import36.TextProcessingService, this.parentIndex), (this.parentView!).injectorGet(import37.TextareaDomService, this.parentIndex), (this.parentView!).injectorGet(import38.ThemeService, this.parentIndex), (this.parentView!).injectorGet(import39.EventBusService, this.parentIndex));
          })
        : import9.StatusPanel((this.parentView!).injectorGet(import36.TextProcessingService, this.parentIndex), (this.parentView!).injectorGet(import37.TextareaDomService, this.parentIndex), (this.parentView!).injectorGet(import38.ThemeService, this.parentIndex), (this.parentView!).injectorGet(import39.EventBusService, this.parentIndex)));
    this._compView_5.create(this._StatusPanel_5_5);
    this._compView_6 = import10.ViewDeleteLinesDialog0(this, 6);
    final _el_6 = this._compView_6.rootElement;
    _el_0.append(_el_6);
    this._DeleteLinesDialog_6_5 = (import32.isDevMode
        ? import35.debugInjectorWrap(import11.DeleteLinesDialog, () {
            return import11.DeleteLinesDialog((this.parentView!).injectorGet(import36.TextProcessingService, this.parentIndex), (this.parentView!).injectorGet(import37.TextareaDomService, this.parentIndex), (this.parentView!).injectorGet(import38.ThemeService, this.parentIndex), (this.parentView!).injectorGet(import39.EventBusService, this.parentIndex));
          })
        : import11.DeleteLinesDialog((this.parentView!).injectorGet(import36.TextProcessingService, this.parentIndex), (this.parentView!).injectorGet(import37.TextareaDomService, this.parentIndex), (this.parentView!).injectorGet(import38.ThemeService, this.parentIndex), (this.parentView!).injectorGet(import39.EventBusService, this.parentIndex)));
    this._compView_6.create(this._DeleteLinesDialog_6_5);
    this._compView_7 = import12.ViewGenerateDialog0(this, 7);
    final _el_7 = this._compView_7.rootElement;
    _el_0.append(_el_7);
    this._GenerateDialog_7_5 = (import32.isDevMode
        ? import35.debugInjectorWrap(import13.GenerateDialog, () {
            return import13.GenerateDialog((this.parentView!).injectorGet(import36.TextProcessingService, this.parentIndex), (this.parentView!).injectorGet(import37.TextareaDomService, this.parentIndex), (this.parentView!).injectorGet(import38.ThemeService, this.parentIndex), (this.parentView!).injectorGet(import39.EventBusService, this.parentIndex));
          })
        : import13.GenerateDialog((this.parentView!).injectorGet(import36.TextProcessingService, this.parentIndex), (this.parentView!).injectorGet(import37.TextareaDomService, this.parentIndex), (this.parentView!).injectorGet(import38.ThemeService, this.parentIndex), (this.parentView!).injectorGet(import39.EventBusService, this.parentIndex)));
    this._compView_7.create(this._GenerateDialog_7_5);
    this._compView_8 = import14.ViewReplaceDialog0(this, 8);
    final _el_8 = this._compView_8.rootElement;
    _el_0.append(_el_8);
    this._ReplaceDialog_8_5 = (import32.isDevMode
        ? import35.debugInjectorWrap(import15.ReplaceDialog, () {
            return import15.ReplaceDialog((this.parentView!).injectorGet(import36.TextProcessingService, this.parentIndex), (this.parentView!).injectorGet(import37.TextareaDomService, this.parentIndex), (this.parentView!).injectorGet(import38.ThemeService, this.parentIndex), (this.parentView!).injectorGet(import39.EventBusService, this.parentIndex));
          })
        : import15.ReplaceDialog((this.parentView!).injectorGet(import36.TextProcessingService, this.parentIndex), (this.parentView!).injectorGet(import37.TextareaDomService, this.parentIndex), (this.parentView!).injectorGet(import38.ThemeService, this.parentIndex), (this.parentView!).injectorGet(import39.EventBusService, this.parentIndex)));
    this._compView_8.create(this._ReplaceDialog_8_5);
    this._compView_9 = import16.ViewPrePostDialog0(this, 9);
    final _el_9 = this._compView_9.rootElement;
    _el_0.append(_el_9);
    this._PrePostDialog_9_5 = (import32.isDevMode
        ? import35.debugInjectorWrap(import17.PrePostDialog, () {
            return import17.PrePostDialog((this.parentView!).injectorGet(import36.TextProcessingService, this.parentIndex), (this.parentView!).injectorGet(import37.TextareaDomService, this.parentIndex), (this.parentView!).injectorGet(import38.ThemeService, this.parentIndex), (this.parentView!).injectorGet(import39.EventBusService, this.parentIndex));
          })
        : import17.PrePostDialog((this.parentView!).injectorGet(import36.TextProcessingService, this.parentIndex), (this.parentView!).injectorGet(import37.TextareaDomService, this.parentIndex), (this.parentView!).injectorGet(import38.ThemeService, this.parentIndex), (this.parentView!).injectorGet(import39.EventBusService, this.parentIndex)));
    this._compView_9.create(this._PrePostDialog_9_5);
    this._compView_10 = import18.ViewSequenceDialog0(this, 10);
    final _el_10 = this._compView_10.rootElement;
    _el_0.append(_el_10);
    this._SequenceDialog_10_5 = (import32.isDevMode
        ? import35.debugInjectorWrap(import19.SequenceDialog, () {
            return import19.SequenceDialog((this.parentView!).injectorGet(import36.TextProcessingService, this.parentIndex), (this.parentView!).injectorGet(import37.TextareaDomService, this.parentIndex), (this.parentView!).injectorGet(import38.ThemeService, this.parentIndex), (this.parentView!).injectorGet(import39.EventBusService, this.parentIndex));
          })
        : import19.SequenceDialog((this.parentView!).injectorGet(import36.TextProcessingService, this.parentIndex), (this.parentView!).injectorGet(import37.TextareaDomService, this.parentIndex), (this.parentView!).injectorGet(import38.ThemeService, this.parentIndex), (this.parentView!).injectorGet(import39.EventBusService, this.parentIndex)));
    this._compView_10.create(this._SequenceDialog_10_5);
    this._compView_11 = import20.ViewTimestampDialog0(this, 11);
    final _el_11 = this._compView_11.rootElement;
    _el_0.append(_el_11);
    this._TimestampDialog_11_5 = (import32.isDevMode
        ? import35.debugInjectorWrap(import21.TimestampDialog, () {
            return import21.TimestampDialog((this.parentView!).injectorGet(import36.TextProcessingService, this.parentIndex), (this.parentView!).injectorGet(import37.TextareaDomService, this.parentIndex), (this.parentView!).injectorGet(import38.ThemeService, this.parentIndex), (this.parentView!).injectorGet(import39.EventBusService, this.parentIndex));
          })
        : import21.TimestampDialog((this.parentView!).injectorGet(import36.TextProcessingService, this.parentIndex), (this.parentView!).injectorGet(import37.TextareaDomService, this.parentIndex), (this.parentView!).injectorGet(import38.ThemeService, this.parentIndex), (this.parentView!).injectorGet(import39.EventBusService, this.parentIndex)));
    this._compView_11.create(this._TimestampDialog_11_5);
    this._compView_12 = import22.ViewSplitDialog0(this, 12);
    final _el_12 = this._compView_12.rootElement;
    _el_0.append(_el_12);
    this._SplitDialog_12_5 = (import32.isDevMode
        ? import35.debugInjectorWrap(import23.SplitDialog, () {
            return import23.SplitDialog((this.parentView!).injectorGet(import36.TextProcessingService, this.parentIndex), (this.parentView!).injectorGet(import37.TextareaDomService, this.parentIndex), (this.parentView!).injectorGet(import38.ThemeService, this.parentIndex), (this.parentView!).injectorGet(import39.EventBusService, this.parentIndex));
          })
        : import23.SplitDialog((this.parentView!).injectorGet(import36.TextProcessingService, this.parentIndex), (this.parentView!).injectorGet(import37.TextareaDomService, this.parentIndex), (this.parentView!).injectorGet(import38.ThemeService, this.parentIndex), (this.parentView!).injectorGet(import39.EventBusService, this.parentIndex)));
    this._compView_12.create(this._SplitDialog_12_5);
    this._compView_13 = import24.ViewSpliceDialog0(this, 13);
    final _el_13 = this._compView_13.rootElement;
    _el_0.append(_el_13);
    this._SpliceDialog_13_5 = (import32.isDevMode
        ? import35.debugInjectorWrap(import25.SpliceDialog, () {
            return import25.SpliceDialog((this.parentView!).injectorGet(import36.TextProcessingService, this.parentIndex), (this.parentView!).injectorGet(import37.TextareaDomService, this.parentIndex), (this.parentView!).injectorGet(import38.ThemeService, this.parentIndex), (this.parentView!).injectorGet(import39.EventBusService, this.parentIndex));
          })
        : import25.SpliceDialog((this.parentView!).injectorGet(import36.TextProcessingService, this.parentIndex), (this.parentView!).injectorGet(import37.TextareaDomService, this.parentIndex), (this.parentView!).injectorGet(import38.ThemeService, this.parentIndex), (this.parentView!).injectorGet(import39.EventBusService, this.parentIndex)));
    this._compView_13.create(this._SpliceDialog_13_5);
    this._compView_14 = import26.ViewThemesDialog0(this, 14);
    final _el_14 = this._compView_14.rootElement;
    _el_0.append(_el_14);
    this._ThemesDialog_14_5 = (import32.isDevMode
        ? import35.debugInjectorWrap(import27.ThemesDialog, () {
            return import27.ThemesDialog((this.parentView!).injectorGet(import38.ThemeService, this.parentIndex), (this.parentView!).injectorGet(import39.EventBusService, this.parentIndex));
          })
        : import27.ThemesDialog((this.parentView!).injectorGet(import38.ThemeService, this.parentIndex), (this.parentView!).injectorGet(import39.EventBusService, this.parentIndex)));
    this._compView_14.create(this._ThemesDialog_14_5);
    this._el_2.addEventListener('keyup', this.eventHandler0(_ctx.changeHandler));
    this._el_2.addEventListener('keydown', this.eventHandler1(_ctx.keyHandler));
    this._el_2.addEventListener('blur', this.eventHandler0(this._DefaultValueAccessor_2_5.touchHandler));
    this._el_2.addEventListener('input', this.eventHandler1(this._handleEvent_0));
    final subscription_0 = this._NgModel_2_7.update.listen(this.eventHandler1(this._handleEvent_1));
    this.initSubscriptions([subscription_0]);
  }

  @override
  dynamic injectorGetInternal(dynamic token, int nodeIndex, dynamic notFoundResult) {
    if ((2 == nodeIndex)) {
      if (identical(token, const import40.MultiToken<import41.ControlValueAccessor<dynamic>>('NgValueAccessor'))) {
        return this._NgValueAccessor_2_6;
      }
      if ((identical(token, import5.NgModel) || identical(token, import42.NgControl))) {
        return this._NgModel_2_7;
      }
    }
    return notFoundResult;
  }

  @override
  void detectChangesInternal() {
    final _ctx = this.ctx;
    bool changed = false;
    bool firstCheck = this.firstCheck;
    final currVal_0 = _ctx.getClass();
    if (import43.checkBinding(this._expr_0, currVal_0, 'getClass()', 'package:np8080/src/editor/editor.html')) {
      if (import34.isDevToolsEnabled) {
        import34.Inspector.instance.recordInput(this._NgClass_0_5, 'ngClass', currVal_0);
      }
      this._NgClass_0_5.rawClass = currVal_0 /* REF:package:np8080/src/editor/editor.html:62:84 */;
      this._expr_0 = currVal_0;
    }
    if ((!import43.debugThrowIfChanged)) {
      this._NgClass_0_5.ngDoCheck();
    }
    changed = false;
    final currVal_2 = _ctx.note.text;
    if (import43.checkBinding(this._expr_2, currVal_2, 'note.text', 'package:np8080/src/editor/editor.html')) {
      if (import34.isDevToolsEnabled) {
        import34.Inspector.instance.recordInput(this._NgModel_2_7, 'ngModel', currVal_2);
      }
      this._NgModel_2_7.model = currVal_2 /* REF:package:np8080/src/editor/editor.html:144:167 */;
      changed = true;
      this._expr_2 = currVal_2;
    }
    if (changed) {
      this._NgModel_2_7.ngAfterChanges();
    }
    if (((!import43.debugThrowIfChanged) && firstCheck)) {
      this._NgModel_2_7.ngOnInit();
    }
    final currVal_3 = ((_ctx.getDocumentClass() + ' ') + _ctx.getBorderClass());
    if (import43.checkBinding(this._expr_3, currVal_3, 'getDocumentClass()+\' \'+getBorderClass()', 'package:np8080/src/editor/editor.html')) {
      if (import34.isDevToolsEnabled) {
        import34.Inspector.instance.recordInput(this._NgClass_2_8, 'ngClass', currVal_3);
      }
      this._NgClass_2_8.rawClass = currVal_3 /* REF:package:np8080/src/editor/editor.html:366:417 */;
      this._expr_3 = currVal_3;
    }
    if ((!import43.debugThrowIfChanged)) {
      this._NgClass_2_8.ngDoCheck();
    }
    changed = false;
    final currVal_4 = _ctx.note.text;
    if (import43.checkBinding(this._expr_4, currVal_4, 'note.text', 'package:np8080/src/editor/editor.html')) {
      if (import34.isDevToolsEnabled) {
        import34.Inspector.instance.recordInput(this._MarkdownPreview_3_5, 'content', currVal_4);
      }
      this._MarkdownPreview_3_5.content = currVal_4 /* REF:package:np8080/src/editor/editor.html:469:490 */;
      changed = true;
      this._expr_4 = currVal_4;
    }
    if (changed) {
      this._MarkdownPreview_3_5.ngAfterChanges();
    }
    final currVal_5 = _ctx.getBackgroundClass();
    if (import43.checkBinding(this._expr_5, currVal_5, 'getBackgroundClass()', 'package:np8080/src/editor/editor.html')) {
      if (import34.isDevToolsEnabled) {
        import34.Inspector.instance.recordInput(this._NgClass_4_5, 'ngClass', currVal_5);
      }
      this._NgClass_4_5.rawClass = currVal_5 /* REF:package:np8080/src/editor/editor.html:638:670 */;
      this._expr_5 = currVal_5;
    }
    if ((!import43.debugThrowIfChanged)) {
      this._NgClass_4_5.ngDoCheck();
    }
    final currVal_6 = _ctx.note.text;
    if (import43.checkBinding(this._expr_6, currVal_6, 'note.text', 'package:np8080/src/editor/editor.html')) {
      if (import34.isDevToolsEnabled) {
        import34.Inspector.instance.recordInput(this._StatusPanel_5_5, 'text', currVal_6);
      }
      this._StatusPanel_5_5.text = currVal_6 /* REF:package:np8080/src/editor/editor.html:694:712 */;
      this._expr_6 = currVal_6;
    }
    final currVal_7 = _ctx.note.lastModified;
    if (import43.checkBinding(this._expr_7, currVal_7, 'note.lastModified', 'package:np8080/src/editor/editor.html')) {
      if (import34.isDevToolsEnabled) {
        import34.Inspector.instance.recordInput(this._StatusPanel_5_5, 'modified', currVal_7);
      }
      this._StatusPanel_5_5.modified = currVal_7 /* REF:package:np8080/src/editor/editor.html:713:743 */;
      this._expr_7 = currVal_7;
    }
    final currVal_8 = _ctx.note;
    if (import43.checkBinding(this._expr_8, currVal_8, 'note', 'package:np8080/src/editor/editor.html')) {
      if (import34.isDevToolsEnabled) {
        import34.Inspector.instance.recordInput(this._DeleteLinesDialog_6_5, 'note', currVal_8);
      }
      this._DeleteLinesDialog_6_5.note = currVal_8 /* REF:package:np8080/src/editor/editor.html:802:815 */;
      this._expr_8 = currVal_8;
    }
    final currVal_9 = _ctx.note;
    if (import43.checkBinding(this._expr_9, currVal_9, 'note', 'package:np8080/src/editor/editor.html')) {
      if (import34.isDevToolsEnabled) {
        import34.Inspector.instance.recordInput(this._GenerateDialog_7_5, 'note', currVal_9);
      }
      this._GenerateDialog_7_5.note = currVal_9 /* REF:package:np8080/src/editor/editor.html:863:876 */;
      this._expr_9 = currVal_9;
    }
    final currVal_10 = _ctx.note;
    if (import43.checkBinding(this._expr_10, currVal_10, 'note', 'package:np8080/src/editor/editor.html')) {
      if (import34.isDevToolsEnabled) {
        import34.Inspector.instance.recordInput(this._ReplaceDialog_8_5, 'note', currVal_10);
      }
      this._ReplaceDialog_8_5.note = currVal_10 /* REF:package:np8080/src/editor/editor.html:919:932 */;
      this._expr_10 = currVal_10;
    }
    final currVal_11 = _ctx.note;
    if (import43.checkBinding(this._expr_11, currVal_11, 'note', 'package:np8080/src/editor/editor.html')) {
      if (import34.isDevToolsEnabled) {
        import34.Inspector.instance.recordInput(this._PrePostDialog_9_5, 'note', currVal_11);
      }
      this._PrePostDialog_9_5.note = currVal_11 /* REF:package:np8080/src/editor/editor.html:974:987 */;
      this._expr_11 = currVal_11;
    }
    final currVal_12 = _ctx.note;
    if (import43.checkBinding(this._expr_12, currVal_12, 'note', 'package:np8080/src/editor/editor.html')) {
      if (import34.isDevToolsEnabled) {
        import34.Inspector.instance.recordInput(this._SequenceDialog_10_5, 'note', currVal_12);
      }
      this._SequenceDialog_10_5.note = currVal_12 /* REF:package:np8080/src/editor/editor.html:1030:1043 */;
      this._expr_12 = currVal_12;
    }
    final currVal_13 = _ctx.note;
    if (import43.checkBinding(this._expr_13, currVal_13, 'note', 'package:np8080/src/editor/editor.html')) {
      if (import34.isDevToolsEnabled) {
        import34.Inspector.instance.recordInput(this._TimestampDialog_11_5, 'note', currVal_13);
      }
      this._TimestampDialog_11_5.note = currVal_13 /* REF:package:np8080/src/editor/editor.html:1088:1101 */;
      this._expr_13 = currVal_13;
    }
    final currVal_14 = _ctx.note;
    if (import43.checkBinding(this._expr_14, currVal_14, 'note', 'package:np8080/src/editor/editor.html')) {
      if (import34.isDevToolsEnabled) {
        import34.Inspector.instance.recordInput(this._SplitDialog_12_5, 'note', currVal_14);
      }
      this._SplitDialog_12_5.note = currVal_14 /* REF:package:np8080/src/editor/editor.html:1143:1156 */;
      this._expr_14 = currVal_14;
    }
    final currVal_15 = _ctx.note;
    if (import43.checkBinding(this._expr_15, currVal_15, 'note', 'package:np8080/src/editor/editor.html')) {
      if (import34.isDevToolsEnabled) {
        import34.Inspector.instance.recordInput(this._SpliceDialog_13_5, 'note', currVal_15);
      }
      this._SpliceDialog_13_5.note = currVal_15 /* REF:package:np8080/src/editor/editor.html:1195:1208 */;
      this._expr_15 = currVal_15;
    }
    if ((!import43.debugThrowIfChanged)) {
      if (firstCheck) {
        this._MarkdownPreview_3_5.ngAfterContentInit();
      }
    }
    final currVal_1 = (_ctx.showPreview ? '47%' : 'calc(100% - 18px)');
    if (import43.checkBinding(this._expr_1, currVal_1, 'showPreview ? \'47%\':\'calc(100% - 18px)\'', 'package:np8080/src/editor/editor.html')) {
      this._el_2.style.setProperty('width', currVal_1?.toString()) /* REF:package:np8080/src/editor/editor.html:244:299 */;
      this._expr_1 = currVal_1;
    }
    this._compView_3.detectChanges();
    this._compView_5.detectChanges();
    this._compView_6.detectChanges();
    this._compView_7.detectChanges();
    this._compView_8.detectChanges();
    this._compView_9.detectChanges();
    this._compView_10.detectChanges();
    this._compView_11.detectChanges();
    this._compView_12.detectChanges();
    this._compView_13.detectChanges();
    this._compView_14.detectChanges();
  }

  @override
  void destroyInternal() {
    this._compView_3.destroyInternalState();
    this._compView_5.destroyInternalState();
    this._compView_6.destroyInternalState();
    this._compView_7.destroyInternalState();
    this._compView_8.destroyInternalState();
    this._compView_9.destroyInternalState();
    this._compView_10.destroyInternalState();
    this._compView_11.destroyInternalState();
    this._compView_12.destroyInternalState();
    this._compView_13.destroyInternalState();
    this._compView_14.destroyInternalState();
    this._NgClass_2_8.ngOnDestroy();
    this._NgClass_4_5.ngOnDestroy();
    this._NgClass_0_5.ngOnDestroy();
  }

  void _handleEvent_0($event) {
    this._DefaultValueAccessor_2_5.handleChange($event.target.value);
  }

  void _handleEvent_1($event) {
    final _ctx = this.ctx;
    _ctx.note.text = $event;
  }

  static void _debugClearComponentStyles() {
    _componentStyles = null;
  }

  void initComponentStyles() {
    var styles = _componentStyles;
    if ((styles == null)) {
      _componentStyles = (styles = import29.ComponentStyles.unscoped(styles$EditorComponent, _debugComponentUrl));
      if (import32.isDevMode) {
        import29.ComponentStyles.debugOnClear(_debugClearComponentStyles);
      }
    }
    this.componentStyles = styles;
  }
}

const _EditorComponentNgFactory = ComponentFactory<import1.EditorComponent>('plain-editor', viewFactory_EditorComponentHost0);
ComponentFactory<import1.EditorComponent> get EditorComponentNgFactory {
  return _EditorComponentNgFactory;
}

ComponentFactory<import1.EditorComponent> createEditorComponentFactory() {
  return ComponentFactory('plain-editor', viewFactory_EditorComponentHost0);
}

final List<Object> styles$EditorComponentHost = const [];

class _ViewEditorComponentHost0 extends import45.HostView<import1.EditorComponent> {
  @override
  void build() {
    this.componentView = ViewEditorComponent0(this, 0);
    final _el_0 = this.componentView.rootElement;
    this.component = (import32.isDevMode
        ? import35.debugInjectorWrap(import1.EditorComponent, () {
            return import1.EditorComponent(this.injectorGet(import36.TextProcessingService, this.parentIndex), this.injectorGet(import37.TextareaDomService, this.parentIndex), this.injectorGet(import38.ThemeService, this.parentIndex), this.injectorGet(import39.EventBusService, this.parentIndex));
          })
        : import1.EditorComponent(this.injectorGet(import36.TextProcessingService, this.parentIndex), this.injectorGet(import37.TextareaDomService, this.parentIndex), this.injectorGet(import38.ThemeService, this.parentIndex), this.injectorGet(import39.EventBusService, this.parentIndex)));
    this.initRootNode(_el_0);
  }

  @override
  void detectChangesInternal() {
    bool firstCheck = this.firstCheck;
    if ((!import43.debugThrowIfChanged)) {
      if (firstCheck) {
        this.component.ngAfterContentInit();
      }
    }
    this.componentView.detectChanges();
  }
}

import45.HostView<import1.EditorComponent> viewFactory_EditorComponentHost0() {
  return _ViewEditorComponentHost0();
}
