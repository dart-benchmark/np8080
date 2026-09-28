// **************************************************************************
// Generator: AngularDart Compiler
// **************************************************************************

import 'app.dart';
import 'package:ngdart/src/core/linker/views/component_view.dart' as import0;
import 'app.dart' as import1;
import 'package:ngdart/src/common/directives/ng_class.dart' as import2;
import 'toolbar/toolbar.template.dart' as import3;
import 'toolbar/toolbar.dart' as import4;
import 'editablelabel/editablelabel.template.dart' as import5;
import 'editablelabel/editablelabel.dart' as import6;
import 'editor/editor.template.dart' as import7;
import 'editor/editor.dart' as import8;
import 'dialog/about/aboutdialog.template.dart' as import9;
import 'dialog/about/aboutdialog.dart' as import10;
import 'dialog/manual/manualdialog.template.dart' as import11;
import 'dialog/manual/manualdialog.dart' as import12;
import 'editor/views/readerview.template.dart' as import13;
import 'editor/views/readerview.dart' as import14;
import 'editor/views/dualreaderview.template.dart' as import15;
import 'editor/views/dualreaderview.dart' as import16;
import 'package:ngdart/src/core/linker/style_encapsulation.dart' as import17;
import 'package:ngdart/src/core/linker/views/view.dart' as import18;
import 'package:ngdart/src/meta/change_detection_constants.dart' as import19;
import 'package:ngdart/src/utilities.dart' as import20;
import 'dart:html' as import21;
import 'package:ngdart/src/runtime/dom_helpers.dart' as import22;
import 'package:ngdart/src/devtools.dart' as import23;
import 'package:ngdart/src/di/errors.dart' as import24;
import 'services/textprocessingservice.dart' as import25;
import 'services/textareadomservice.dart' as import26;
import 'services/themeservice.dart' as import27;
import 'services/eventbusservice.dart' as import28;
import 'services/documentservice.dart' as import29;
import 'package:ngdart/src/runtime/check_binding.dart' as import30;
import 'package:ngdart/angular.dart';
import 'package:ngdart/src/core/linker/views/host_view.dart' as import32;

final List<Object> styles$AppComponent = const [];

class ViewAppComponent0 extends import0.ComponentView<import1.AppComponent> {
  late final import2.NgClass _NgClass_0_5;
  late final import3.ViewToolbar0 _compView_1;
  late final import4.Toolbar _Toolbar_1_5;
  late final import5.ViewEditableLabel0 _compView_2;
  late final import6.EditableLabel _EditableLabel_2_5;
  late final import5.ViewEditableLabel0 _compView_3;
  late final import6.EditableLabel _EditableLabel_3_5;
  late final import5.ViewEditableLabel0 _compView_4;
  late final import6.EditableLabel _EditableLabel_4_5;
  late final import5.ViewEditableLabel0 _compView_5;
  late final import6.EditableLabel _EditableLabel_5_5;
  late final import5.ViewEditableLabel0 _compView_6;
  late final import6.EditableLabel _EditableLabel_6_5;
  late final import5.ViewEditableLabel0 _compView_7;
  late final import6.EditableLabel _EditableLabel_7_5;
  late final import7.ViewEditorComponent0 _compView_13;
  late final import8.EditorComponent _EditorComponent_13_5;
  late final import9.ViewAboutDialogComponent0 _compView_14;
  late final import10.AboutDialogComponent _AboutDialogComponent_14_5;
  late final import11.ViewManualDialog0 _compView_15;
  late final import12.ManualDialog _ManualDialog_15_5;
  late final import13.ViewReaderView0 _compView_16;
  late final import14.ReaderView _ReaderView_16_5;
  late final import15.ViewDualReaderView0 _compView_17;
  late final import16.DualReaderView _DualReaderView_17_5;
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
  static import17.ComponentStyles? _componentStyles;
  ViewAppComponent0(import18.View parentView, int parentIndex) : super(parentView, parentIndex, import19.ChangeDetectionCheckedState.checkAlways) {
    this.initComponentStyles();
    this.rootElement = import20.unsafeCast(import21.document.createElement('np8080-app'));
  }
  static String? get _debugComponentUrl {
    return (import20.isDevMode ? 'asset:np8080/lib/src/app.dart' : null);
  }

  @override
  void build() {
    final _ctx = this.ctx;
    final parentRenderNode = this.initViewRoot();
    final doc = import21.document;
    final _el_0 = import22.appendDiv(doc, parentRenderNode);
    this._NgClass_0_5 = import2.NgClass(_el_0);
    if (import23.isDevToolsEnabled) {
      import23.Inspector.instance.registerDirective(_el_0, this._NgClass_0_5);
    }
    this._compView_1 = import3.ViewToolbar0(this, 1);
    final _el_1 = this._compView_1.rootElement;
    _el_0.append(_el_1);
    this._Toolbar_1_5 = (import20.isDevMode
        ? import24.debugInjectorWrap(import4.Toolbar, () {
            return import4.Toolbar((this.parentView!).injectorGet(import25.TextProcessingService, this.parentIndex), (this.parentView!).injectorGet(import26.TextareaDomService, this.parentIndex), (this.parentView!).injectorGet(import27.ThemeService, this.parentIndex), (this.parentView!).injectorGet(import28.EventBusService, this.parentIndex), (this.parentView!).injectorGet(import29.DocumentService, this.parentIndex));
          })
        : import4.Toolbar((this.parentView!).injectorGet(import25.TextProcessingService, this.parentIndex), (this.parentView!).injectorGet(import26.TextareaDomService, this.parentIndex), (this.parentView!).injectorGet(import27.ThemeService, this.parentIndex), (this.parentView!).injectorGet(import28.EventBusService, this.parentIndex), (this.parentView!).injectorGet(import29.DocumentService, this.parentIndex)));
    this._compView_1.create(this._Toolbar_1_5);
    this._compView_2 = import5.ViewEditableLabel0(this, 2);
    final _el_2 = this._compView_2.rootElement;
    _el_0.append(_el_2);
    this._EditableLabel_2_5 = (import20.isDevMode
        ? import24.debugInjectorWrap(import6.EditableLabel, () {
            return import6.EditableLabel((this.parentView!).injectorGet(import27.ThemeService, this.parentIndex), (this.parentView!).injectorGet(import28.EventBusService, this.parentIndex));
          })
        : import6.EditableLabel((this.parentView!).injectorGet(import27.ThemeService, this.parentIndex), (this.parentView!).injectorGet(import28.EventBusService, this.parentIndex)));
    this._compView_2.create(this._EditableLabel_2_5);
    this._compView_3 = import5.ViewEditableLabel0(this, 3);
    final _el_3 = this._compView_3.rootElement;
    _el_0.append(_el_3);
    this._EditableLabel_3_5 = (import20.isDevMode
        ? import24.debugInjectorWrap(import6.EditableLabel, () {
            return import6.EditableLabel((this.parentView!).injectorGet(import27.ThemeService, this.parentIndex), (this.parentView!).injectorGet(import28.EventBusService, this.parentIndex));
          })
        : import6.EditableLabel((this.parentView!).injectorGet(import27.ThemeService, this.parentIndex), (this.parentView!).injectorGet(import28.EventBusService, this.parentIndex)));
    this._compView_3.create(this._EditableLabel_3_5);
    this._compView_4 = import5.ViewEditableLabel0(this, 4);
    final _el_4 = this._compView_4.rootElement;
    _el_0.append(_el_4);
    this._EditableLabel_4_5 = (import20.isDevMode
        ? import24.debugInjectorWrap(import6.EditableLabel, () {
            return import6.EditableLabel((this.parentView!).injectorGet(import27.ThemeService, this.parentIndex), (this.parentView!).injectorGet(import28.EventBusService, this.parentIndex));
          })
        : import6.EditableLabel((this.parentView!).injectorGet(import27.ThemeService, this.parentIndex), (this.parentView!).injectorGet(import28.EventBusService, this.parentIndex)));
    this._compView_4.create(this._EditableLabel_4_5);
    this._compView_5 = import5.ViewEditableLabel0(this, 5);
    final _el_5 = this._compView_5.rootElement;
    _el_0.append(_el_5);
    this._EditableLabel_5_5 = (import20.isDevMode
        ? import24.debugInjectorWrap(import6.EditableLabel, () {
            return import6.EditableLabel((this.parentView!).injectorGet(import27.ThemeService, this.parentIndex), (this.parentView!).injectorGet(import28.EventBusService, this.parentIndex));
          })
        : import6.EditableLabel((this.parentView!).injectorGet(import27.ThemeService, this.parentIndex), (this.parentView!).injectorGet(import28.EventBusService, this.parentIndex)));
    this._compView_5.create(this._EditableLabel_5_5);
    this._compView_6 = import5.ViewEditableLabel0(this, 6);
    final _el_6 = this._compView_6.rootElement;
    _el_0.append(_el_6);
    this._EditableLabel_6_5 = (import20.isDevMode
        ? import24.debugInjectorWrap(import6.EditableLabel, () {
            return import6.EditableLabel((this.parentView!).injectorGet(import27.ThemeService, this.parentIndex), (this.parentView!).injectorGet(import28.EventBusService, this.parentIndex));
          })
        : import6.EditableLabel((this.parentView!).injectorGet(import27.ThemeService, this.parentIndex), (this.parentView!).injectorGet(import28.EventBusService, this.parentIndex)));
    this._compView_6.create(this._EditableLabel_6_5);
    this._compView_7 = import5.ViewEditableLabel0(this, 7);
    final _el_7 = this._compView_7.rootElement;
    _el_0.append(_el_7);
    this._EditableLabel_7_5 = (import20.isDevMode
        ? import24.debugInjectorWrap(import6.EditableLabel, () {
            return import6.EditableLabel((this.parentView!).injectorGet(import27.ThemeService, this.parentIndex), (this.parentView!).injectorGet(import28.EventBusService, this.parentIndex));
          })
        : import6.EditableLabel((this.parentView!).injectorGet(import27.ThemeService, this.parentIndex), (this.parentView!).injectorGet(import28.EventBusService, this.parentIndex)));
    this._compView_7.create(this._EditableLabel_7_5);
    final _el_8 = import22.appendSpan(doc, _el_0);
    this.updateChildClass(_el_8, 'prevTabButton');
    final _text_9 = import22.appendText(_el_8, '◀');
    final _text_10 = import22.appendText(_el_0, ' ');
    final _el_11 = import22.appendSpan(doc, _el_0);
    this.updateChildClass(_el_11, 'nextTabButton');
    final _text_12 = import22.appendText(_el_11, '▶');
    this._compView_13 = import7.ViewEditorComponent0(this, 13);
    final _el_13 = this._compView_13.rootElement;
    _el_0.append(_el_13);
    this._EditorComponent_13_5 = (import20.isDevMode
        ? import24.debugInjectorWrap(import8.EditorComponent, () {
            return import8.EditorComponent((this.parentView!).injectorGet(import25.TextProcessingService, this.parentIndex), (this.parentView!).injectorGet(import26.TextareaDomService, this.parentIndex), (this.parentView!).injectorGet(import27.ThemeService, this.parentIndex), (this.parentView!).injectorGet(import28.EventBusService, this.parentIndex));
          })
        : import8.EditorComponent((this.parentView!).injectorGet(import25.TextProcessingService, this.parentIndex), (this.parentView!).injectorGet(import26.TextareaDomService, this.parentIndex), (this.parentView!).injectorGet(import27.ThemeService, this.parentIndex), (this.parentView!).injectorGet(import28.EventBusService, this.parentIndex)));
    this._compView_13.create(this._EditorComponent_13_5);
    this._compView_14 = import9.ViewAboutDialogComponent0(this, 14);
    final _el_14 = this._compView_14.rootElement;
    _el_0.append(_el_14);
    this._AboutDialogComponent_14_5 = (import20.isDevMode
        ? import24.debugInjectorWrap(import10.AboutDialogComponent, () {
            return import10.AboutDialogComponent((this.parentView!).injectorGet(import27.ThemeService, this.parentIndex), (this.parentView!).injectorGet(import28.EventBusService, this.parentIndex));
          })
        : import10.AboutDialogComponent((this.parentView!).injectorGet(import27.ThemeService, this.parentIndex), (this.parentView!).injectorGet(import28.EventBusService, this.parentIndex)));
    this._compView_14.create(this._AboutDialogComponent_14_5);
    this._compView_15 = import11.ViewManualDialog0(this, 15);
    final _el_15 = this._compView_15.rootElement;
    _el_0.append(_el_15);
    this._ManualDialog_15_5 = (import20.isDevMode
        ? import24.debugInjectorWrap(import12.ManualDialog, () {
            return import12.ManualDialog((this.parentView!).injectorGet(import27.ThemeService, this.parentIndex), (this.parentView!).injectorGet(import28.EventBusService, this.parentIndex));
          })
        : import12.ManualDialog((this.parentView!).injectorGet(import27.ThemeService, this.parentIndex), (this.parentView!).injectorGet(import28.EventBusService, this.parentIndex)));
    this._compView_15.create(this._ManualDialog_15_5);
    this._compView_16 = import13.ViewReaderView0(this, 16);
    final _el_16 = this._compView_16.rootElement;
    _el_0.append(_el_16);
    this._ReaderView_16_5 = (import20.isDevMode
        ? import24.debugInjectorWrap(import14.ReaderView, () {
            return import14.ReaderView((this.parentView!).injectorGet(import27.ThemeService, this.parentIndex), (this.parentView!).injectorGet(import28.EventBusService, this.parentIndex));
          })
        : import14.ReaderView((this.parentView!).injectorGet(import27.ThemeService, this.parentIndex), (this.parentView!).injectorGet(import28.EventBusService, this.parentIndex)));
    this._compView_16.create(this._ReaderView_16_5);
    this._compView_17 = import15.ViewDualReaderView0(this, 17);
    final _el_17 = this._compView_17.rootElement;
    _el_0.append(_el_17);
    this._DualReaderView_17_5 = (import20.isDevMode
        ? import24.debugInjectorWrap(import16.DualReaderView, () {
            return import16.DualReaderView((this.parentView!).injectorGet(import27.ThemeService, this.parentIndex), (this.parentView!).injectorGet(import28.EventBusService, this.parentIndex));
          })
        : import16.DualReaderView((this.parentView!).injectorGet(import27.ThemeService, this.parentIndex), (this.parentView!).injectorGet(import28.EventBusService, this.parentIndex)));
    this._compView_17.create(this._DualReaderView_17_5);
    final subscription_0 = this._EditableLabel_2_5.textChange.listen(this.eventHandler1(this._handleEvent_0));
    final subscription_1 = this._EditableLabel_3_5.textChange.listen(this.eventHandler1(this._handleEvent_1));
    final subscription_2 = this._EditableLabel_4_5.textChange.listen(this.eventHandler1(this._handleEvent_2));
    final subscription_3 = this._EditableLabel_5_5.textChange.listen(this.eventHandler1(this._handleEvent_3));
    final subscription_4 = this._EditableLabel_6_5.textChange.listen(this.eventHandler1(this._handleEvent_4));
    final subscription_5 = this._EditableLabel_7_5.textChange.listen(this.eventHandler1(this._handleEvent_5));
    _el_8.addEventListener('click', this.eventHandler0(_ctx.previousTab));
    _el_11.addEventListener('click', this.eventHandler0(_ctx.nextTab));
    this.initSubscriptions([subscription_0, subscription_1, subscription_2, subscription_3, subscription_4, subscription_5]);
  }

  @override
  void detectChangesInternal() {
    final _ctx = this.ctx;
    bool firstCheck = this.firstCheck;
    final currVal_0 = _ctx.themeService.tertiaryClass;
    if (import30.checkBinding(this._expr_0, currVal_0, 'themeService.tertiaryClass', 'package:np8080/src/app.html')) {
      if (import23.isDevToolsEnabled) {
        import23.Inspector.instance.recordInput(this._NgClass_0_5, 'ngClass', currVal_0);
      }
      this._NgClass_0_5.rawClass = currVal_0 /* REF:package:np8080/src/app.html:5:43 */;
      this._expr_0 = currVal_0;
    }
    if ((!import30.debugThrowIfChanged)) {
      this._NgClass_0_5.ngDoCheck();
    }
    final currVal_1 = _ctx.documentService.activeNote;
    if (import30.checkBinding(this._expr_1, currVal_1, 'documentService.activeNote', 'package:np8080/src/app.html')) {
      if (import23.isDevToolsEnabled) {
        import23.Inspector.instance.recordInput(this._Toolbar_1_5, 'note', currVal_1);
      }
      this._Toolbar_1_5.note = currVal_1 /* REF:package:np8080/src/app.html:65:100 */;
      this._expr_1 = currVal_1;
    }
    final currVal_2 = _ctx.note1.downloadName;
    if (import30.checkBinding(this._expr_2, currVal_2, 'note1.downloadName', 'package:np8080/src/app.html')) {
      if (import23.isDevToolsEnabled) {
        import23.Inspector.instance.recordInput(this._EditableLabel_2_5, 'text', currVal_2);
      }
      this._EditableLabel_2_5.text = currVal_2 /* REF:package:np8080/src/app.html:139:168 */;
      this._expr_2 = currVal_2;
    }
    final currVal_3 = _ctx.note1.id;
    if (import30.checkBinding(this._expr_3, currVal_3, 'note1.id', 'package:np8080/src/app.html')) {
      if (import23.isDevToolsEnabled) {
        import23.Inspector.instance.recordInput(this._EditableLabel_2_5, 'id', currVal_3);
      }
      this._EditableLabel_2_5.id = currVal_3 /* REF:package:np8080/src/app.html:169:184 */;
      this._expr_3 = currVal_3;
    }
    if (((!import30.debugThrowIfChanged) && firstCheck)) {
      this._EditableLabel_2_5.ngOnInit();
    }
    final currVal_4 = _ctx.note2.downloadName;
    if (import30.checkBinding(this._expr_4, currVal_4, 'note2.downloadName', 'package:np8080/src/app.html')) {
      if (import23.isDevToolsEnabled) {
        import23.Inspector.instance.recordInput(this._EditableLabel_3_5, 'text', currVal_4);
      }
      this._EditableLabel_3_5.text = currVal_4 /* REF:package:np8080/src/app.html:223:252 */;
      this._expr_4 = currVal_4;
    }
    final currVal_5 = _ctx.note2.id;
    if (import30.checkBinding(this._expr_5, currVal_5, 'note2.id', 'package:np8080/src/app.html')) {
      if (import23.isDevToolsEnabled) {
        import23.Inspector.instance.recordInput(this._EditableLabel_3_5, 'id', currVal_5);
      }
      this._EditableLabel_3_5.id = currVal_5 /* REF:package:np8080/src/app.html:253:268 */;
      this._expr_5 = currVal_5;
    }
    if (((!import30.debugThrowIfChanged) && firstCheck)) {
      this._EditableLabel_3_5.ngOnInit();
    }
    final currVal_6 = _ctx.note3.downloadName;
    if (import30.checkBinding(this._expr_6, currVal_6, 'note3.downloadName', 'package:np8080/src/app.html')) {
      if (import23.isDevToolsEnabled) {
        import23.Inspector.instance.recordInput(this._EditableLabel_4_5, 'text', currVal_6);
      }
      this._EditableLabel_4_5.text = currVal_6 /* REF:package:np8080/src/app.html:307:336 */;
      this._expr_6 = currVal_6;
    }
    final currVal_7 = _ctx.note3.id;
    if (import30.checkBinding(this._expr_7, currVal_7, 'note3.id', 'package:np8080/src/app.html')) {
      if (import23.isDevToolsEnabled) {
        import23.Inspector.instance.recordInput(this._EditableLabel_4_5, 'id', currVal_7);
      }
      this._EditableLabel_4_5.id = currVal_7 /* REF:package:np8080/src/app.html:337:352 */;
      this._expr_7 = currVal_7;
    }
    if (((!import30.debugThrowIfChanged) && firstCheck)) {
      this._EditableLabel_4_5.ngOnInit();
    }
    final currVal_8 = _ctx.note4.downloadName;
    if (import30.checkBinding(this._expr_8, currVal_8, 'note4.downloadName', 'package:np8080/src/app.html')) {
      if (import23.isDevToolsEnabled) {
        import23.Inspector.instance.recordInput(this._EditableLabel_5_5, 'text', currVal_8);
      }
      this._EditableLabel_5_5.text = currVal_8 /* REF:package:np8080/src/app.html:391:420 */;
      this._expr_8 = currVal_8;
    }
    final currVal_9 = _ctx.note4.id;
    if (import30.checkBinding(this._expr_9, currVal_9, 'note4.id', 'package:np8080/src/app.html')) {
      if (import23.isDevToolsEnabled) {
        import23.Inspector.instance.recordInput(this._EditableLabel_5_5, 'id', currVal_9);
      }
      this._EditableLabel_5_5.id = currVal_9 /* REF:package:np8080/src/app.html:421:436 */;
      this._expr_9 = currVal_9;
    }
    if (((!import30.debugThrowIfChanged) && firstCheck)) {
      this._EditableLabel_5_5.ngOnInit();
    }
    final currVal_10 = _ctx.note5.downloadName;
    if (import30.checkBinding(this._expr_10, currVal_10, 'note5.downloadName', 'package:np8080/src/app.html')) {
      if (import23.isDevToolsEnabled) {
        import23.Inspector.instance.recordInput(this._EditableLabel_6_5, 'text', currVal_10);
      }
      this._EditableLabel_6_5.text = currVal_10 /* REF:package:np8080/src/app.html:475:504 */;
      this._expr_10 = currVal_10;
    }
    final currVal_11 = _ctx.note5.id;
    if (import30.checkBinding(this._expr_11, currVal_11, 'note5.id', 'package:np8080/src/app.html')) {
      if (import23.isDevToolsEnabled) {
        import23.Inspector.instance.recordInput(this._EditableLabel_6_5, 'id', currVal_11);
      }
      this._EditableLabel_6_5.id = currVal_11 /* REF:package:np8080/src/app.html:505:520 */;
      this._expr_11 = currVal_11;
    }
    if (((!import30.debugThrowIfChanged) && firstCheck)) {
      this._EditableLabel_6_5.ngOnInit();
    }
    final currVal_12 = _ctx.note6.downloadName;
    if (import30.checkBinding(this._expr_12, currVal_12, 'note6.downloadName', 'package:np8080/src/app.html')) {
      if (import23.isDevToolsEnabled) {
        import23.Inspector.instance.recordInput(this._EditableLabel_7_5, 'text', currVal_12);
      }
      this._EditableLabel_7_5.text = currVal_12 /* REF:package:np8080/src/app.html:559:588 */;
      this._expr_12 = currVal_12;
    }
    final currVal_13 = _ctx.note6.id;
    if (import30.checkBinding(this._expr_13, currVal_13, 'note6.id', 'package:np8080/src/app.html')) {
      if (import23.isDevToolsEnabled) {
        import23.Inspector.instance.recordInput(this._EditableLabel_7_5, 'id', currVal_13);
      }
      this._EditableLabel_7_5.id = currVal_13 /* REF:package:np8080/src/app.html:589:604 */;
      this._expr_13 = currVal_13;
    }
    if (((!import30.debugThrowIfChanged) && firstCheck)) {
      this._EditableLabel_7_5.ngOnInit();
    }
    final currVal_14 = _ctx.documentService.activeNote;
    if (import30.checkBinding(this._expr_14, currVal_14, 'documentService.activeNote', 'package:np8080/src/app.html')) {
      if (import23.isDevToolsEnabled) {
        import23.Inspector.instance.recordInput(this._EditorComponent_13_5, 'note', currVal_14);
      }
      this._EditorComponent_13_5.note = currVal_14 /* REF:package:np8080/src/app.html:834:869 */;
      this._expr_14 = currVal_14;
    }
    final currVal_15 = _ctx.documentService.activeNote;
    if (import30.checkBinding(this._expr_15, currVal_15, 'documentService.activeNote', 'package:np8080/src/app.html')) {
      if (import23.isDevToolsEnabled) {
        import23.Inspector.instance.recordInput(this._ReaderView_16_5, 'note', currVal_15);
      }
      this._ReaderView_16_5.note = currVal_15 /* REF:package:np8080/src/app.html:973:1008 */;
      this._expr_15 = currVal_15;
    }
    if (firstCheck) {
      if ((_ctx.note1 != null)) {
        if (import23.isDevToolsEnabled) {
          import23.Inspector.instance.recordInput(this._DualReaderView_17_5, 'note1', _ctx.note1);
        }
        this._DualReaderView_17_5.note1 = _ctx.note1 /* REF:package:np8080/src/app.html:1045:1060 */;
      }
      if ((_ctx.note2 != null)) {
        if (import23.isDevToolsEnabled) {
          import23.Inspector.instance.recordInput(this._DualReaderView_17_5, 'note2', _ctx.note2);
        }
        this._DualReaderView_17_5.note2 = _ctx.note2 /* REF:package:np8080/src/app.html:1061:1076 */;
      }
    }
    if ((!import30.debugThrowIfChanged)) {
      if (firstCheck) {
        this._EditorComponent_13_5.ngAfterContentInit();
        this._DualReaderView_17_5.ngAfterContentInit();
      }
    }
    this._compView_1.detectChanges();
    this._compView_2.detectChanges();
    this._compView_3.detectChanges();
    this._compView_4.detectChanges();
    this._compView_5.detectChanges();
    this._compView_6.detectChanges();
    this._compView_7.detectChanges();
    this._compView_13.detectChanges();
    this._compView_14.detectChanges();
    this._compView_15.detectChanges();
    this._compView_16.detectChanges();
    this._compView_17.detectChanges();
  }

  @override
  void destroyInternal() {
    this._compView_1.destroyInternalState();
    this._compView_2.destroyInternalState();
    this._compView_3.destroyInternalState();
    this._compView_4.destroyInternalState();
    this._compView_5.destroyInternalState();
    this._compView_6.destroyInternalState();
    this._compView_7.destroyInternalState();
    this._compView_13.destroyInternalState();
    this._compView_14.destroyInternalState();
    this._compView_15.destroyInternalState();
    this._compView_16.destroyInternalState();
    this._compView_17.destroyInternalState();
    this._NgClass_0_5.ngOnDestroy();
  }

  void _handleEvent_0($event) {
    final _ctx = this.ctx;
    _ctx.note1.downloadName = $event;
  }

  void _handleEvent_1($event) {
    final _ctx = this.ctx;
    _ctx.note2.downloadName = $event;
  }

  void _handleEvent_2($event) {
    final _ctx = this.ctx;
    _ctx.note3.downloadName = $event;
  }

  void _handleEvent_3($event) {
    final _ctx = this.ctx;
    _ctx.note4.downloadName = $event;
  }

  void _handleEvent_4($event) {
    final _ctx = this.ctx;
    _ctx.note5.downloadName = $event;
  }

  void _handleEvent_5($event) {
    final _ctx = this.ctx;
    _ctx.note6.downloadName = $event;
  }

  static void _debugClearComponentStyles() {
    _componentStyles = null;
  }

  void initComponentStyles() {
    var styles = _componentStyles;
    if ((styles == null)) {
      _componentStyles = (styles = import17.ComponentStyles.unscoped(styles$AppComponent, _debugComponentUrl));
      if (import20.isDevMode) {
        import17.ComponentStyles.debugOnClear(_debugClearComponentStyles);
      }
    }
    this.componentStyles = styles;
  }
}

const _AppComponentNgFactory = ComponentFactory<import1.AppComponent>('np8080-app', viewFactory_AppComponentHost0);
ComponentFactory<import1.AppComponent> get AppComponentNgFactory {
  return _AppComponentNgFactory;
}

ComponentFactory<import1.AppComponent> createAppComponentFactory() {
  return ComponentFactory('np8080-app', viewFactory_AppComponentHost0);
}

final List<Object> styles$AppComponentHost = const [];

class _ViewAppComponentHost0 extends import32.HostView<import1.AppComponent> {
  @override
  void build() {
    this.componentView = ViewAppComponent0(this, 0);
    final _el_0 = this.componentView.rootElement;
    this.component = (import20.isDevMode
        ? import24.debugInjectorWrap(import1.AppComponent, () {
            return import1.AppComponent(this.injectorGet(import29.DocumentService, this.parentIndex), this.injectorGet(import27.ThemeService, this.parentIndex), this.injectorGet(import28.EventBusService, this.parentIndex));
          })
        : import1.AppComponent(this.injectorGet(import29.DocumentService, this.parentIndex), this.injectorGet(import27.ThemeService, this.parentIndex), this.injectorGet(import28.EventBusService, this.parentIndex)));
    this.initRootNode(_el_0);
  }

  @override
  void detectChangesInternal() {
    bool firstCheck = this.firstCheck;
    this.componentView.detectChanges();
    if ((!import30.debugThrowIfChanged)) {
      if (firstCheck) {
        this.component.ngAfterViewInit();
      }
    }
  }
}

import32.HostView<import1.AppComponent> viewFactory_AppComponentHost0() {
  return _ViewAppComponentHost0();
}
