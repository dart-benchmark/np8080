// **************************************************************************
// Generator: AngularDart Compiler
// **************************************************************************

import 'toolbar.dart';
import 'package:ngdart/src/core/linker/views/component_view.dart' as import0;
import 'toolbar.dart' as import1;
import 'package:ngdart/src/common/directives/ng_class.dart' as import2;
import 'menu/menu_component.template.dart' as import3;
import 'menu/menu_component.dart' as import4;
import 'package:ngdart/src/core/linker/style_encapsulation.dart' as import5;
import 'package:ngdart/src/core/linker/views/view.dart' as import6;
import 'package:ngdart/src/meta/change_detection_constants.dart' as import7;
import 'package:ngdart/src/utilities.dart' as import8;
import 'dart:html' as import9;
import 'package:ngdart/src/runtime/dom_helpers.dart' as import10;
import 'package:ngdart/src/devtools.dart' as import11;
import 'package:ngdart/src/di/errors.dart' as import12;
import '../services/themeservice.dart' as import13;
import '../services/eventbusservice.dart' as import14;
import 'package:ngdart/src/runtime/check_binding.dart' as import15;
import 'package:ngdart/angular.dart';
import 'package:ngdart/src/core/linker/views/host_view.dart' as import17;
import '../services/textprocessingservice.dart' as import18;
import '../services/textareadomservice.dart' as import19;
import '../services/documentservice.dart' as import20;

final List<Object> styles$Toolbar = const [];

class ViewToolbar0 extends import0.ComponentView<import1.Toolbar> {
  late final import2.NgClass _NgClass_0_5;
  late final import3.ViewMenuComponent0 _compView_1;
  late final import4.MenuComponent _MenuComponent_1_5;
  late final import3.ViewMenuComponent0 _compView_2;
  late final import4.MenuComponent _MenuComponent_2_5;
  late final import3.ViewMenuComponent0 _compView_3;
  late final import4.MenuComponent _MenuComponent_3_5;
  late final import3.ViewMenuComponent0 _compView_4;
  late final import4.MenuComponent _MenuComponent_4_5;
  late final import3.ViewMenuComponent0 _compView_5;
  late final import4.MenuComponent _MenuComponent_5_5;
  late final import3.ViewMenuComponent0 _compView_6;
  late final import4.MenuComponent _MenuComponent_6_5;
  late final import3.ViewMenuComponent0 _compView_7;
  late final import4.MenuComponent _MenuComponent_7_5;
  Object? _expr_1;
  Object? _expr_3;
  Object? _expr_5;
  Object? _expr_7;
  Object? _expr_9;
  Object? _expr_11;
  Object? _expr_13;
  Object? _expr_15;
  static import5.ComponentStyles? _componentStyles;
  ViewToolbar0(import6.View parentView, int parentIndex) : super(parentView, parentIndex, import7.ChangeDetectionCheckedState.checkAlways) {
    this.initComponentStyles();
    this.rootElement = import8.unsafeCast(import9.document.createElement('editor-toolbar'));
  }
  static String? get _debugComponentUrl {
    return (import8.isDevMode ? 'asset:np8080/lib/src/toolbar/toolbar.dart' : null);
  }

  @override
  void build() {
    final _ctx = this.ctx;
    final parentRenderNode = this.initViewRoot();
    final doc = import9.document;
    final _el_0 = import10.appendDiv(doc, parentRenderNode);
    this.updateChildClass(_el_0, 'toolbar');
    this._NgClass_0_5 = import2.NgClass(_el_0);
    if (import11.isDevToolsEnabled) {
      import11.Inspector.instance.registerDirective(_el_0, this._NgClass_0_5);
    }
    this._compView_1 = import3.ViewMenuComponent0(this, 1);
    final _el_1 = this._compView_1.rootElement;
    _el_0.append(_el_1);
    this.updateChildClass(_el_1, 'toolbarMenuTitle menuInit');
    this._MenuComponent_1_5 = (import8.isDevMode
        ? import12.debugInjectorWrap(import4.MenuComponent, () {
            return import4.MenuComponent((this.parentView!).injectorGet(import13.ThemeService, this.parentIndex), (this.parentView!).injectorGet(import14.EventBusService, this.parentIndex));
          })
        : import4.MenuComponent((this.parentView!).injectorGet(import13.ThemeService, this.parentIndex), (this.parentView!).injectorGet(import14.EventBusService, this.parentIndex)));
    this._compView_1.create(this._MenuComponent_1_5);
    this._compView_2 = import3.ViewMenuComponent0(this, 2);
    final _el_2 = this._compView_2.rootElement;
    _el_0.append(_el_2);
    this.updateChildClass(_el_2, 'toolbarMenuTitle menuModify');
    this._MenuComponent_2_5 = (import8.isDevMode
        ? import12.debugInjectorWrap(import4.MenuComponent, () {
            return import4.MenuComponent((this.parentView!).injectorGet(import13.ThemeService, this.parentIndex), (this.parentView!).injectorGet(import14.EventBusService, this.parentIndex));
          })
        : import4.MenuComponent((this.parentView!).injectorGet(import13.ThemeService, this.parentIndex), (this.parentView!).injectorGet(import14.EventBusService, this.parentIndex)));
    this._compView_2.create(this._MenuComponent_2_5);
    this._compView_3 = import3.ViewMenuComponent0(this, 3);
    final _el_3 = this._compView_3.rootElement;
    _el_0.append(_el_3);
    this.updateChildClass(_el_3, 'toolbarMenuTitle menuAdd');
    this._MenuComponent_3_5 = (import8.isDevMode
        ? import12.debugInjectorWrap(import4.MenuComponent, () {
            return import4.MenuComponent((this.parentView!).injectorGet(import13.ThemeService, this.parentIndex), (this.parentView!).injectorGet(import14.EventBusService, this.parentIndex));
          })
        : import4.MenuComponent((this.parentView!).injectorGet(import13.ThemeService, this.parentIndex), (this.parentView!).injectorGet(import14.EventBusService, this.parentIndex)));
    this._compView_3.create(this._MenuComponent_3_5);
    this._compView_4 = import3.ViewMenuComponent0(this, 4);
    final _el_4 = this._compView_4.rootElement;
    _el_0.append(_el_4);
    this.updateChildClass(_el_4, 'toolbarMenuTitle menuRemove');
    this._MenuComponent_4_5 = (import8.isDevMode
        ? import12.debugInjectorWrap(import4.MenuComponent, () {
            return import4.MenuComponent((this.parentView!).injectorGet(import13.ThemeService, this.parentIndex), (this.parentView!).injectorGet(import14.EventBusService, this.parentIndex));
          })
        : import4.MenuComponent((this.parentView!).injectorGet(import13.ThemeService, this.parentIndex), (this.parentView!).injectorGet(import14.EventBusService, this.parentIndex)));
    this._compView_4.create(this._MenuComponent_4_5);
    this._compView_5 = import3.ViewMenuComponent0(this, 5);
    final _el_5 = this._compView_5.rootElement;
    _el_0.append(_el_5);
    this.updateChildClass(_el_5, 'toolbarMenuTitle menuAdvanced');
    this._MenuComponent_5_5 = (import8.isDevMode
        ? import12.debugInjectorWrap(import4.MenuComponent, () {
            return import4.MenuComponent((this.parentView!).injectorGet(import13.ThemeService, this.parentIndex), (this.parentView!).injectorGet(import14.EventBusService, this.parentIndex));
          })
        : import4.MenuComponent((this.parentView!).injectorGet(import13.ThemeService, this.parentIndex), (this.parentView!).injectorGet(import14.EventBusService, this.parentIndex)));
    this._compView_5.create(this._MenuComponent_5_5);
    this._compView_6 = import3.ViewMenuComponent0(this, 6);
    final _el_6 = this._compView_6.rootElement;
    _el_0.append(_el_6);
    this.updateChildClass(_el_6, 'toolbarMenuTitle menuView');
    this._MenuComponent_6_5 = (import8.isDevMode
        ? import12.debugInjectorWrap(import4.MenuComponent, () {
            return import4.MenuComponent((this.parentView!).injectorGet(import13.ThemeService, this.parentIndex), (this.parentView!).injectorGet(import14.EventBusService, this.parentIndex));
          })
        : import4.MenuComponent((this.parentView!).injectorGet(import13.ThemeService, this.parentIndex), (this.parentView!).injectorGet(import14.EventBusService, this.parentIndex)));
    this._compView_6.create(this._MenuComponent_6_5);
    this._compView_7 = import3.ViewMenuComponent0(this, 7);
    final _el_7 = this._compView_7.rootElement;
    _el_0.append(_el_7);
    this.updateChildClass(_el_7, 'toolbarMenuTitle menuHelp');
    this._MenuComponent_7_5 = (import8.isDevMode
        ? import12.debugInjectorWrap(import4.MenuComponent, () {
            return import4.MenuComponent((this.parentView!).injectorGet(import13.ThemeService, this.parentIndex), (this.parentView!).injectorGet(import14.EventBusService, this.parentIndex));
          })
        : import4.MenuComponent((this.parentView!).injectorGet(import13.ThemeService, this.parentIndex), (this.parentView!).injectorGet(import14.EventBusService, this.parentIndex)));
    this._compView_7.create(this._MenuComponent_7_5);
    final _el_8 = import10.appendElement<import9.ButtonElement>(doc, _el_0, 'button');
    this.updateChildClass(_el_8, 'wideToolbarButton');
    import10.setAttribute(_el_8, 'title', 'Download');
    final _text_9 = import10.appendText(_el_8, '⬇');
    final _text_10 = import10.appendText(_el_8, ' Download');
    final _text_11 = import10.appendText(_el_0, ' ');
    final _el_12 = import10.appendElement<import9.ButtonElement>(doc, _el_0, 'button');
    this.updateChildClass(_el_12, 'miniToolbarButton');
    import10.setAttribute(_el_12, 'title', 'Undo previous change.');
    final _text_13 = import10.appendText(_el_12, '↩');
    final _text_14 = import10.appendText(_el_12, ' Undo');
    _el_8.addEventListener('click', this.eventHandler0(_ctx.downloadHandler));
    _el_12.addEventListener('click', this.eventHandler0(_ctx.undoHandler));
  }

  @override
  void detectChangesInternal() {
    final _ctx = this.ctx;
    bool firstCheck = this.firstCheck;
    if (firstCheck) {
      if (import11.isDevToolsEnabled) {
        import11.Inspector.instance.recordInput(this._NgClass_0_5, 'class', 'toolbar');
      }
      this._NgClass_0_5.initialClasses = 'toolbar' /* REF:package:np8080/src/toolbar/toolbar.html:5:20 */;
    }
    final currVal_1 = _ctx.getClass();
    if (import15.checkBinding(this._expr_1, currVal_1, 'getClass()', 'package:np8080/src/toolbar/toolbar.html')) {
      if (import11.isDevToolsEnabled) {
        import11.Inspector.instance.recordInput(this._NgClass_0_5, 'ngClass', currVal_1);
      }
      this._NgClass_0_5.rawClass = currVal_1 /* REF:package:np8080/src/toolbar/toolbar.html:21:43 */;
      this._expr_1 = currVal_1;
    }
    if ((!import15.debugThrowIfChanged)) {
      this._NgClass_0_5.ngDoCheck();
    }
    if (firstCheck) {
      if (import11.isDevToolsEnabled) {
        import11.Inspector.instance.recordInput(this._MenuComponent_1_5, 'menutitle', '⚛ Start');
      }
      this._MenuComponent_1_5.menutitle = '⚛ Start' /* REF:package:np8080/src/toolbar/toolbar.html:58:81 */;
    }
    final currVal_3 = _ctx.menus.startMenuItems;
    if (import15.checkBinding(this._expr_3, currVal_3, 'menus.startMenuItems', 'package:np8080/src/toolbar/toolbar.html')) {
      if (import11.isDevToolsEnabled) {
        import11.Inspector.instance.recordInput(this._MenuComponent_1_5, 'items', currVal_3);
      }
      this._MenuComponent_1_5.items = currVal_3 /* REF:package:np8080/src/toolbar/toolbar.html:82:112 */;
      this._expr_3 = currVal_3;
    }
    if (firstCheck) {
      if (import11.isDevToolsEnabled) {
        import11.Inspector.instance.recordInput(this._MenuComponent_2_5, 'menutitle', '⚙ Modify');
      }
      this._MenuComponent_2_5.menutitle = '⚙ Modify' /* REF:package:np8080/src/toolbar/toolbar.html:168:199 */;
    }
    final currVal_5 = _ctx.menus.modifyMenuItems;
    if (import15.checkBinding(this._expr_5, currVal_5, 'menus.modifyMenuItems', 'package:np8080/src/toolbar/toolbar.html')) {
      if (import11.isDevToolsEnabled) {
        import11.Inspector.instance.recordInput(this._MenuComponent_2_5, 'items', currVal_5);
      }
      this._MenuComponent_2_5.items = currVal_5 /* REF:package:np8080/src/toolbar/toolbar.html:200:231 */;
      this._expr_5 = currVal_5;
    }
    if (firstCheck) {
      if (import11.isDevToolsEnabled) {
        import11.Inspector.instance.recordInput(this._MenuComponent_3_5, 'menutitle', '+ Add');
      }
      this._MenuComponent_3_5.menutitle = '+ Add' /* REF:package:np8080/src/toolbar/toolbar.html:289:310 */;
    }
    final currVal_7 = _ctx.menus.addMenuItems;
    if (import15.checkBinding(this._expr_7, currVal_7, 'menus.addMenuItems', 'package:np8080/src/toolbar/toolbar.html')) {
      if (import11.isDevToolsEnabled) {
        import11.Inspector.instance.recordInput(this._MenuComponent_3_5, 'items', currVal_7);
      }
      this._MenuComponent_3_5.items = currVal_7 /* REF:package:np8080/src/toolbar/toolbar.html:311:339 */;
      this._expr_7 = currVal_7;
    }
    if (firstCheck) {
      if (import11.isDevToolsEnabled) {
        import11.Inspector.instance.recordInput(this._MenuComponent_4_5, 'menutitle', '- Remove');
      }
      this._MenuComponent_4_5.menutitle = '- Remove' /* REF:package:np8080/src/toolbar/toolbar.html:394:418 */;
    }
    final currVal_9 = _ctx.menus.removeMenuItems;
    if (import15.checkBinding(this._expr_9, currVal_9, 'menus.removeMenuItems', 'package:np8080/src/toolbar/toolbar.html')) {
      if (import11.isDevToolsEnabled) {
        import11.Inspector.instance.recordInput(this._MenuComponent_4_5, 'items', currVal_9);
      }
      this._MenuComponent_4_5.items = currVal_9 /* REF:package:np8080/src/toolbar/toolbar.html:419:450 */;
      this._expr_9 = currVal_9;
    }
    if (firstCheck) {
      if (import11.isDevToolsEnabled) {
        import11.Inspector.instance.recordInput(this._MenuComponent_5_5, 'menutitle', '# Advanced');
      }
      this._MenuComponent_5_5.menutitle = '# Advanced' /* REF:package:np8080/src/toolbar/toolbar.html:508:534 */;
    }
    final currVal_11 = _ctx.menus.advancedMenuItems;
    if (import15.checkBinding(this._expr_11, currVal_11, 'menus.advancedMenuItems', 'package:np8080/src/toolbar/toolbar.html')) {
      if (import11.isDevToolsEnabled) {
        import11.Inspector.instance.recordInput(this._MenuComponent_5_5, 'items', currVal_11);
      }
      this._MenuComponent_5_5.items = currVal_11 /* REF:package:np8080/src/toolbar/toolbar.html:535:568 */;
      this._expr_11 = currVal_11;
    }
    if (firstCheck) {
      if (import11.isDevToolsEnabled) {
        import11.Inspector.instance.recordInput(this._MenuComponent_6_5, 'menutitle', '👀 View');
      }
      this._MenuComponent_6_5.menutitle = '👀 View' /* REF:package:np8080/src/toolbar/toolbar.html:628:658 */;
    }
    final currVal_13 = _ctx.menus.viewMenuItems;
    if (import15.checkBinding(this._expr_13, currVal_13, 'menus.viewMenuItems', 'package:np8080/src/toolbar/toolbar.html')) {
      if (import11.isDevToolsEnabled) {
        import11.Inspector.instance.recordInput(this._MenuComponent_6_5, 'items', currVal_13);
      }
      this._MenuComponent_6_5.items = currVal_13 /* REF:package:np8080/src/toolbar/toolbar.html:659:688 */;
      this._expr_13 = currVal_13;
    }
    if (firstCheck) {
      if (import11.isDevToolsEnabled) {
        import11.Inspector.instance.recordInput(this._MenuComponent_7_5, 'menutitle', '? Help');
      }
      this._MenuComponent_7_5.menutitle = '? Help' /* REF:package:np8080/src/toolbar/toolbar.html:744:766 */;
    }
    final currVal_15 = _ctx.menus.helpMenuItems;
    if (import15.checkBinding(this._expr_15, currVal_15, 'menus.helpMenuItems', 'package:np8080/src/toolbar/toolbar.html')) {
      if (import11.isDevToolsEnabled) {
        import11.Inspector.instance.recordInput(this._MenuComponent_7_5, 'items', currVal_15);
      }
      this._MenuComponent_7_5.items = currVal_15 /* REF:package:np8080/src/toolbar/toolbar.html:767:796 */;
      this._expr_15 = currVal_15;
    }
    this._compView_1.detectChanges();
    this._compView_2.detectChanges();
    this._compView_3.detectChanges();
    this._compView_4.detectChanges();
    this._compView_5.detectChanges();
    this._compView_6.detectChanges();
    this._compView_7.detectChanges();
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
    this._NgClass_0_5.ngOnDestroy();
  }

  static void _debugClearComponentStyles() {
    _componentStyles = null;
  }

  void initComponentStyles() {
    var styles = _componentStyles;
    if ((styles == null)) {
      _componentStyles = (styles = import5.ComponentStyles.unscoped(styles$Toolbar, _debugComponentUrl));
      if (import8.isDevMode) {
        import5.ComponentStyles.debugOnClear(_debugClearComponentStyles);
      }
    }
    this.componentStyles = styles;
  }
}

const _ToolbarNgFactory = ComponentFactory<import1.Toolbar>('editor-toolbar', viewFactory_ToolbarHost0);
ComponentFactory<import1.Toolbar> get ToolbarNgFactory {
  return _ToolbarNgFactory;
}

ComponentFactory<import1.Toolbar> createToolbarFactory() {
  return ComponentFactory('editor-toolbar', viewFactory_ToolbarHost0);
}

final List<Object> styles$ToolbarHost = const [];

class _ViewToolbarHost0 extends import17.HostView<import1.Toolbar> {
  @override
  void build() {
    this.componentView = ViewToolbar0(this, 0);
    final _el_0 = this.componentView.rootElement;
    this.component = (import8.isDevMode
        ? import12.debugInjectorWrap(import1.Toolbar, () {
            return import1.Toolbar(this.injectorGet(import18.TextProcessingService, this.parentIndex), this.injectorGet(import19.TextareaDomService, this.parentIndex), this.injectorGet(import13.ThemeService, this.parentIndex), this.injectorGet(import14.EventBusService, this.parentIndex), this.injectorGet(import20.DocumentService, this.parentIndex));
          })
        : import1.Toolbar(this.injectorGet(import18.TextProcessingService, this.parentIndex), this.injectorGet(import19.TextareaDomService, this.parentIndex), this.injectorGet(import13.ThemeService, this.parentIndex), this.injectorGet(import14.EventBusService, this.parentIndex), this.injectorGet(import20.DocumentService, this.parentIndex)));
    this.initRootNode(_el_0);
  }
}

import17.HostView<import1.Toolbar> viewFactory_ToolbarHost0() {
  return _ViewToolbarHost0();
}
