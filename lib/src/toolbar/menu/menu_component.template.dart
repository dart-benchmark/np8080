// **************************************************************************
// Generator: AngularDart Compiler
// **************************************************************************

import 'menu_component.dart';
import 'package:ngdart/src/core/linker/views/component_view.dart' as import0;
import 'menu_component.dart' as import1;
import 'package:ngdart/src/runtime/text_binding.dart' as import2;
import 'package:ngdart/src/common/directives/ng_class.dart' as import3;
import 'package:ngdart/src/core/linker/view_container.dart';
import 'package:ngdart/src/common/directives/ng_for.dart' as import5;
import 'dart:html' as import6;
import 'package:ngdart/src/core/linker/style_encapsulation.dart' as import7;
import 'package:ngdart/src/core/linker/views/view.dart' as import8;
import 'package:ngdart/src/meta/change_detection_constants.dart' as import9;
import 'package:ngdart/src/utilities.dart' as import10;
import 'package:ngdart/src/runtime/dom_helpers.dart' as import11;
import 'package:ngdart/src/devtools.dart' as import12;
import 'package:ngdart/src/core/linker/template_ref.dart';
import 'package:ngdart/src/runtime/check_binding.dart' as import14;
import 'package:ngdart/src/runtime/interpolate.dart' as import15;
import 'package:ngdart/angular.dart';
import 'package:ngdart/src/core/linker/views/embedded_view.dart' as import17;
import 'package:ngdart/src/common/directives/ng_if.dart';
import 'package:ngdart/src/core/linker/views/render_view.dart' as import19;
import 'menu.dart' as import20;
import 'package:ngdart/src/core/linker/views/host_view.dart' as import21;
import 'package:ngdart/src/di/errors.dart' as import22;
import '../../services/themeservice.dart' as import23;
import '../../services/eventbusservice.dart' as import24;

final List<Object> styles$MenuComponent = const [];

class ViewMenuComponent0 extends import0.ComponentView<import1.MenuComponent> {
  final import2.TextBinding _textBinding_2 = import2.TextBinding();
  late final import3.NgClass _NgClass_1_5;
  late final import3.NgClass _NgClass_3_5;
  late final ViewContainer _appEl_4;
  late final import5.NgFor _NgFor_4_9;
  late final import3.NgClass _NgClass_5_5;
  Object? _expr_1;
  Object? _expr_2;
  Object? _expr_5;
  Object? _expr_6;
  Object? _expr_7;
  Object? _expr_10;
  late final import6.DivElement _el_3;
  late final import6.DivElement _el_5;
  static import7.ComponentStyles? _componentStyles;
  ViewMenuComponent0(import8.View parentView, int parentIndex) : super(parentView, parentIndex, import9.ChangeDetectionCheckedState.checkAlways) {
    this.initComponentStyles();
    this.rootElement = import10.unsafeCast(import6.document.createElement('menu'));
  }
  static String? get _debugComponentUrl {
    return (import10.isDevMode ? 'asset:np8080/lib/src/toolbar/menu/menu_component.dart' : null);
  }

  @override
  void build() {
    final _ctx = this.ctx;
    final parentRenderNode = this.initViewRoot();
    final doc = import6.document;
    final _el_0 = import11.appendDiv(doc, parentRenderNode);
    import11.setAttribute(_el_0, 'style', 'z-index: 999;');
    final _el_1 = import11.appendElement<import6.ButtonElement>(doc, _el_0, 'button');
    this.updateChildClass(_el_1, 'toolbarMenu');
    this._NgClass_1_5 = import3.NgClass(_el_1);
    if (import12.isDevToolsEnabled) {
      import12.Inspector.instance.registerDirective(_el_1, this._NgClass_1_5);
    }
    _el_1.append(this._textBinding_2.element);
    this._el_3 = import11.appendDiv(doc, _el_0);
    this.updateChildClass(this._el_3, 'menuItem');
    this._NgClass_3_5 = import3.NgClass(this._el_3);
    if (import12.isDevToolsEnabled) {
      import12.Inspector.instance.registerDirective(this._el_3, this._NgClass_3_5);
    }
    final _anchor_4 = import11.appendAnchor(this._el_3);
    this._appEl_4 = ViewContainer(4, 3, this, _anchor_4);
    var _TemplateRef_4_8 = TemplateRef(this._appEl_4, viewFactory_MenuComponent1);
    this._NgFor_4_9 = import5.NgFor(this._appEl_4, _TemplateRef_4_8);
    if (import12.isDevToolsEnabled) {
      import12.Inspector.instance.registerDirective(_anchor_4, this._NgFor_4_9);
    }
    this._el_5 = import11.appendDiv(doc, _el_0);
    this.updateChildClass(this._el_5, 'menuFooter');
    this._NgClass_5_5 = import3.NgClass(this._el_5);
    if (import12.isDevToolsEnabled) {
      import12.Inspector.instance.registerDirective(this._el_5, this._NgClass_5_5);
    }
    final _text_6 = import11.appendText(this._el_5, ' ');
    _el_0.addEventListener('mouseenter', this.eventHandler0(_ctx.show));
    _el_0.addEventListener('mouseleave', this.eventHandler0(_ctx.close));
  }

  @override
  void detectChangesInternal() {
    final _ctx = this.ctx;
    bool firstCheck = this.firstCheck;
    if (firstCheck) {
      if (import12.isDevToolsEnabled) {
        import12.Inspector.instance.recordInput(this._NgClass_1_5, 'class', 'toolbarMenu');
      }
      this._NgClass_1_5.initialClasses = 'toolbarMenu' /* REF:package:np8080/src/toolbar/menu/menu_template.html:86:105 */;
    }
    final currVal_1 = _ctx.getClass();
    if (import14.checkBinding(this._expr_1, currVal_1, 'getClass()', 'package:np8080/src/toolbar/menu/menu_template.html')) {
      if (import12.isDevToolsEnabled) {
        import12.Inspector.instance.recordInput(this._NgClass_1_5, 'ngClass', currVal_1);
      }
      this._NgClass_1_5.rawClass = currVal_1 /* REF:package:np8080/src/toolbar/menu/menu_template.html:106:128 */;
      this._expr_1 = currVal_1;
    }
    if ((!import14.debugThrowIfChanged)) {
      this._NgClass_1_5.ngDoCheck();
    }
    if (firstCheck) {
      if (import12.isDevToolsEnabled) {
        import12.Inspector.instance.recordInput(this._NgClass_3_5, 'class', 'menuItem');
      }
      this._NgClass_3_5.initialClasses = 'menuItem' /* REF:package:np8080/src/toolbar/menu/menu_template.html:164:180 */;
    }
    final currVal_5 = _ctx.getBorderClass();
    if (import14.checkBinding(this._expr_5, currVal_5, 'getBorderClass()', 'package:np8080/src/toolbar/menu/menu_template.html')) {
      if (import12.isDevToolsEnabled) {
        import12.Inspector.instance.recordInput(this._NgClass_3_5, 'ngClass', currVal_5);
      }
      this._NgClass_3_5.rawClass = currVal_5 /* REF:package:np8080/src/toolbar/menu/menu_template.html:231:259 */;
      this._expr_5 = currVal_5;
    }
    if ((!import14.debugThrowIfChanged)) {
      this._NgClass_3_5.ngDoCheck();
    }
    final currVal_6 = _ctx.items;
    if (import14.checkBinding(this._expr_6, currVal_6, 'items', 'package:np8080/src/toolbar/menu/menu_template.html')) {
      if (import12.isDevToolsEnabled) {
        import12.Inspector.instance.recordInput(this._NgFor_4_9, 'ngForOf', currVal_6);
      }
      this._NgFor_4_9.ngForOf = currVal_6 /* REF:package:np8080/src/toolbar/menu/menu_template.html:276:306 */;
      this._expr_6 = currVal_6;
    }
    if ((!import14.debugThrowIfChanged)) {
      this._NgFor_4_9.ngDoCheck();
    }
    if (firstCheck) {
      if (import12.isDevToolsEnabled) {
        import12.Inspector.instance.recordInput(this._NgClass_5_5, 'class', 'menuFooter');
      }
      this._NgClass_5_5.initialClasses = 'menuFooter' /* REF:package:np8080/src/toolbar/menu/menu_template.html:736:754 */;
    }
    final currVal_10 = _ctx.getFooterClass();
    if (import14.checkBinding(this._expr_10, currVal_10, 'getFooterClass()', 'package:np8080/src/toolbar/menu/menu_template.html')) {
      if (import12.isDevToolsEnabled) {
        import12.Inspector.instance.recordInput(this._NgClass_5_5, 'ngClass', currVal_10);
      }
      this._NgClass_5_5.rawClass = currVal_10 /* REF:package:np8080/src/toolbar/menu/menu_template.html:755:783 */;
      this._expr_10 = currVal_10;
    }
    if ((!import14.debugThrowIfChanged)) {
      this._NgClass_5_5.ngDoCheck();
    }
    this._appEl_4.detectChangesInNestedViews();
    this._textBinding_2.updateText(import15.interpolateString0(_ctx.menutitle)) /* REF:package:np8080/src/toolbar/menu/menu_template.html:129:142 */;
    if (firstCheck) {
      this._el_3.style.setProperty('width', '130px') /* REF:package:np8080/src/toolbar/menu/menu_template.html:207:230 */;
    }
    final currVal_2 = _ctx.display;
    if (import14.checkBinding(this._expr_2, currVal_2, 'display', 'package:np8080/src/toolbar/menu/menu_template.html')) {
      this._el_3.style.setProperty('display', currVal_2) /* REF:package:np8080/src/toolbar/menu/menu_template.html:181:206 */;
      this._expr_2 = currVal_2;
    }
    if (firstCheck) {
      this._el_5.style.setProperty('width', '130px') /* REF:package:np8080/src/toolbar/menu/menu_template.html:820:843 */;
    }
    final currVal_7 = _ctx.display;
    if (import14.checkBinding(this._expr_7, currVal_7, 'display', 'package:np8080/src/toolbar/menu/menu_template.html')) {
      this._el_5.style.setProperty('display', currVal_7) /* REF:package:np8080/src/toolbar/menu/menu_template.html:794:819 */;
      this._expr_7 = currVal_7;
    }
  }

  @override
  void destroyInternal() {
    this._appEl_4.destroyNestedViews();
    this._NgClass_1_5.ngOnDestroy();
    this._NgClass_3_5.ngOnDestroy();
    this._NgClass_5_5.ngOnDestroy();
  }

  static void _debugClearComponentStyles() {
    _componentStyles = null;
  }

  void initComponentStyles() {
    var styles = _componentStyles;
    if ((styles == null)) {
      _componentStyles = (styles = import7.ComponentStyles.unscoped(styles$MenuComponent, _debugComponentUrl));
      if (import10.isDevMode) {
        import7.ComponentStyles.debugOnClear(_debugClearComponentStyles);
      }
    }
    this.componentStyles = styles;
  }
}

const _MenuComponentNgFactory = ComponentFactory<import1.MenuComponent>('menu', viewFactory_MenuComponentHost0);
ComponentFactory<import1.MenuComponent> get MenuComponentNgFactory {
  return _MenuComponentNgFactory;
}

ComponentFactory<import1.MenuComponent> createMenuComponentFactory() {
  return ComponentFactory('menu', viewFactory_MenuComponentHost0);
}

class _ViewMenuComponent1 extends import17.EmbeddedView<import1.MenuComponent> {
  final import2.TextBinding _textBinding_2 = import2.TextBinding();
  late final import3.NgClass _NgClass_1_5;
  late final ViewContainer _appEl_3;
  late final NgIf _NgIf_3_9;
  Object? _expr_0;
  Object? _expr_2;
  late final import6.ButtonElement _el_1;
  _ViewMenuComponent1(import19.RenderView parentView, int parentIndex) : super(parentView, parentIndex);
  @override
  void build() {
    final doc = import6.document;
    final _el_0 = import10.unsafeCast(doc.createElement('span'));
    this._el_1 = import11.appendElement<import6.ButtonElement>(doc, _el_0, 'button');
    this.updateChildClass(this._el_1, 'toolbarButton toolbarMenuButton');
    this._NgClass_1_5 = import3.NgClass(this._el_1);
    if (import12.isDevToolsEnabled) {
      import12.Inspector.instance.registerDirective(this._el_1, this._NgClass_1_5);
    }
    this._el_1.append(this._textBinding_2.element);
    final _anchor_3 = import11.appendAnchor(_el_0);
    this._appEl_3 = ViewContainer(3, 0, this, _anchor_3);
    var _TemplateRef_3_8 = TemplateRef(this._appEl_3, viewFactory_MenuComponent2);
    this._NgIf_3_9 = NgIf(this._appEl_3, _TemplateRef_3_8);
    if (import12.isDevToolsEnabled) {
      import12.Inspector.instance.registerDirective(_anchor_3, this._NgIf_3_9);
    }
    this._el_1.addEventListener('click', this.eventHandler1(this._handleEvent_0));
    this.initRootNode(_el_0);
  }

  @override
  void detectChangesInternal() {
    final _ctx = this.ctx;
    bool firstCheck = this.firstCheck;
    final local_menuItem = import10.unsafeCast<import20.Menu>(this.locals['\$implicit']);
    if (firstCheck) {
      if (import12.isDevToolsEnabled) {
        import12.Inspector.instance.recordInput(this._NgClass_1_5, 'class', 'toolbarButton toolbarMenuButton');
      }
      this._NgClass_1_5.initialClasses = 'toolbarButton toolbarMenuButton' /* REF:package:np8080/src/toolbar/menu/menu_template.html:350:389 */;
    }
    final currVal_2 = _ctx.getMenuClass();
    if (import14.checkBinding(this._expr_2, currVal_2, 'getMenuClass()', 'package:np8080/src/toolbar/menu/menu_template.html')) {
      if (import12.isDevToolsEnabled) {
        import12.Inspector.instance.recordInput(this._NgClass_1_5, 'ngClass', currVal_2);
      }
      this._NgClass_1_5.rawClass = currVal_2 /* REF:package:np8080/src/toolbar/menu/menu_template.html:411:437 */;
      this._expr_2 = currVal_2;
    }
    if ((!import14.debugThrowIfChanged)) {
      this._NgClass_1_5.ngDoCheck();
    }
    if (import12.isDevToolsEnabled) {
      import12.Inspector.instance.recordInput(this._NgIf_3_9, 'ngIf', local_menuItem.separator);
    }
    this._NgIf_3_9.ngIf = local_menuItem.separator /* REF:package:np8080/src/toolbar/menu/menu_template.html:606:632 */;
    this._appEl_3.detectChangesInNestedViews();
    final currVal_0 = import15.interpolateString0(local_menuItem.tooltip);
    if (import14.checkBinding(this._expr_0, currVal_0, '{{menuItem.tooltip}}', 'package:np8080/src/toolbar/menu/menu_template.html')) {
      import11.setProperty(this._el_1, 'title', currVal_0) /* REF:package:np8080/src/toolbar/menu/menu_template.html:518:546 */;
      this._expr_0 = currVal_0;
    }
    this._textBinding_2.updateText(import15.interpolateString0(local_menuItem.name)) /* REF:package:np8080/src/toolbar/menu/menu_template.html:547:564 */;
  }

  @override
  void destroyInternal() {
    this._appEl_3.destroyNestedViews();
    this._NgClass_1_5.ngOnDestroy();
  }

  void _handleEvent_0($event) {
    final local_menuItem = import10.unsafeCast<import20.Menu>(this.locals['\$implicit']);
    final _ctx = this.ctx;
    _ctx.menuClick(local_menuItem.handler);
  }
}

import17.EmbeddedView<void> viewFactory_MenuComponent1(import19.RenderView parentView, int parentIndex) {
  return _ViewMenuComponent1(parentView, parentIndex);
}

class _ViewMenuComponent2 extends import17.EmbeddedView<import1.MenuComponent> {
  late final import3.NgClass _NgClass_0_5;
  Object? _expr_1;
  _ViewMenuComponent2(import19.RenderView parentView, int parentIndex) : super(parentView, parentIndex);
  @override
  void build() {
    final doc = import6.document;
    final _el_0 = import10.unsafeCast(doc.createElement('div'));
    this.updateChildClass(_el_0, 'menuSeparator');
    this._NgClass_0_5 = import3.NgClass(_el_0);
    if (import12.isDevToolsEnabled) {
      import12.Inspector.instance.registerDirective(_el_0, this._NgClass_0_5);
    }
    final _text_1 = import11.appendText(_el_0, ' ');
    this.initRootNode(_el_0);
  }

  @override
  void detectChangesInternal() {
    final _ctx = this.ctx;
    bool firstCheck = this.firstCheck;
    if (firstCheck) {
      if (import12.isDevToolsEnabled) {
        import12.Inspector.instance.recordInput(this._NgClass_0_5, 'class', 'menuSeparator');
      }
      this._NgClass_0_5.initialClasses = 'menuSeparator' /* REF:package:np8080/src/toolbar/menu/menu_template.html:633:654 */;
    }
    final currVal_1 = _ctx.getBorderClass();
    if (import14.checkBinding(this._expr_1, currVal_1, 'getBorderClass()', 'package:np8080/src/toolbar/menu/menu_template.html')) {
      if (import12.isDevToolsEnabled) {
        import12.Inspector.instance.recordInput(this._NgClass_0_5, 'ngClass', currVal_1);
      }
      this._NgClass_0_5.rawClass = currVal_1 /* REF:package:np8080/src/toolbar/menu/menu_template.html:655:683 */;
      this._expr_1 = currVal_1;
    }
    if ((!import14.debugThrowIfChanged)) {
      this._NgClass_0_5.ngDoCheck();
    }
  }

  @override
  void destroyInternal() {
    this._NgClass_0_5.ngOnDestroy();
  }
}

import17.EmbeddedView<void> viewFactory_MenuComponent2(import19.RenderView parentView, int parentIndex) {
  return _ViewMenuComponent2(parentView, parentIndex);
}

final List<Object> styles$MenuComponentHost = const [];

class _ViewMenuComponentHost0 extends import21.HostView<import1.MenuComponent> {
  @override
  void build() {
    this.componentView = ViewMenuComponent0(this, 0);
    final _el_0 = this.componentView.rootElement;
    this.component = (import10.isDevMode
        ? import22.debugInjectorWrap(import1.MenuComponent, () {
            return import1.MenuComponent(this.injectorGet(import23.ThemeService, this.parentIndex), this.injectorGet(import24.EventBusService, this.parentIndex));
          })
        : import1.MenuComponent(this.injectorGet(import23.ThemeService, this.parentIndex), this.injectorGet(import24.EventBusService, this.parentIndex)));
    this.initRootNode(_el_0);
  }
}

import21.HostView<import1.MenuComponent> viewFactory_MenuComponentHost0() {
  return _ViewMenuComponentHost0();
}
