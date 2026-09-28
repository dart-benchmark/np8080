// **************************************************************************
// Generator: AngularDart Compiler
// **************************************************************************

import 'aboutdialog.dart';
import 'package:ngdart/src/core/linker/views/component_view.dart' as import0;
import 'aboutdialog.dart' as import1;
import 'package:ngdart/src/common/directives/ng_class.dart' as import2;
import 'dart:html' as import3;
import 'package:ngdart/src/core/linker/style_encapsulation.dart' as import4;
import 'package:ngdart/src/core/linker/views/view.dart' as import5;
import 'package:ngdart/src/meta/change_detection_constants.dart' as import6;
import 'package:ngdart/src/utilities.dart' as import7;
import 'package:ngdart/src/runtime/dom_helpers.dart' as import8;
import 'package:ngdart/src/devtools.dart' as import9;
import 'package:ngdart/src/runtime/interpolate.dart' as import10;
import 'package:ngdart/src/runtime/check_binding.dart' as import11;
import 'package:ngdart/angular.dart';
import 'package:ngdart/src/core/linker/views/host_view.dart' as import13;
import 'package:ngdart/src/di/errors.dart' as import14;
import '../../services/themeservice.dart' as import15;
import '../../services/eventbusservice.dart' as import16;

final List<Object> styles$AboutDialogComponent = const [];

class ViewAboutDialogComponent0 extends import0.ComponentView<import1.AboutDialogComponent> {
  late final import2.NgClass _NgClass_1_5;
  late final import2.NgClass _NgClass_4_5;
  late final import2.NgClass _NgClass_6_5;
  Object? _expr_0;
  Object? _expr_2;
  Object? _expr_4;
  Object? _expr_5;
  late final import3.DivElement _el_0;
  static import4.ComponentStyles? _componentStyles;
  ViewAboutDialogComponent0(import5.View parentView, int parentIndex) : super(parentView, parentIndex, import6.ChangeDetectionCheckedState.checkAlways) {
    this.initComponentStyles();
    this.rootElement = import7.unsafeCast(import3.document.createElement('about-dialog'));
  }
  static String? get _debugComponentUrl {
    return (import7.isDevMode ? 'asset:np8080/lib/src/dialog/about/aboutdialog.dart' : null);
  }

  @override
  void build() {
    final _ctx = this.ctx;
    final parentRenderNode = this.initViewRoot();
    final doc = import3.document;
    this._el_0 = import8.appendDiv(doc, parentRenderNode);
    import8.setAttribute(this._el_0, 'id', 'overlay');
    import8.setAttribute(this._el_0, 'style', 'margin-top:-85px;');
    final _el_1 = import8.appendDiv(doc, this._el_0);
    this.updateChildClass(_el_1, 'dialogPanel');
    this._NgClass_1_5 = import2.NgClass(_el_1);
    if (import9.isDevToolsEnabled) {
      import9.Inspector.instance.registerDirective(_el_1, this._NgClass_1_5);
    }
    final _el_2 = import8.appendDiv(doc, _el_1);
    this.updateChildClass(_el_2, 'closeCross');
    final _text_3 = import8.appendText(_el_2, 'X');
    final _el_4 = import8.appendDiv(doc, _el_1);
    this.updateChildClass(_el_4, 'header');
    this._NgClass_4_5 = import2.NgClass(_el_4);
    if (import9.isDevToolsEnabled) {
      import9.Inspector.instance.registerDirective(_el_4, this._NgClass_4_5);
    }
    final _text_5 = import8.appendText(_el_4, 'About Notepad 8080 v0.0.31');
    final _el_6 = import8.appendDiv(doc, _el_1);
    this._NgClass_6_5 = import2.NgClass(_el_6);
    if (import9.isDevToolsEnabled) {
      import9.Inspector.instance.registerDirective(_el_6, this._NgClass_6_5);
    }
    final _el_7 = import8.appendElement<import3.HtmlElement>(doc, _el_6, 'br');
    final _text_8 = import8.appendText(_el_6, ' ');
    final _el_9 = import8.appendElement<import3.TextAreaElement>(doc, _el_6, 'textarea');
    import8.setAttribute(_el_9, 'cols', '85');
    import8.setAttribute(_el_9, 'readonly', '');
    import8.setAttribute(_el_9, 'style', 'height:350px;font-size: small;text-align: left');
    final _text_10 = import8.appendText(_el_9, import10.interpolateString0(_ctx.aboutText));
    final _el_11 = import8.appendDiv(doc, _el_1);
    this.updateChildClass(_el_11, 'footer');
    final _el_12 = import8.appendElement<import3.ButtonElement>(doc, _el_11, 'button');
    this.updateChildClass(_el_12, 'closeButton');
    final _text_13 = import8.appendText(_el_12, 'Close');
    _el_2.addEventListener('click', this.eventHandler0(_ctx.close));
    _el_12.addEventListener('click', this.eventHandler0(_ctx.close));
  }

  @override
  void detectChangesInternal() {
    final _ctx = this.ctx;
    bool firstCheck = this.firstCheck;
    if (firstCheck) {
      if (import9.isDevToolsEnabled) {
        import9.Inspector.instance.recordInput(this._NgClass_1_5, 'class', 'dialogPanel');
      }
      this._NgClass_1_5.initialClasses = 'dialogPanel' /* REF:package:np8080/src/dialog/about/aboutdialog.html:81:100 */;
    }
    final currVal_2 = ((_ctx.getClass() + ' ') + _ctx.getBorderClass());
    if (import11.checkBinding(this._expr_2, currVal_2, 'getClass()+\' \'+getBorderClass()', 'package:np8080/src/dialog/about/aboutdialog.html')) {
      if (import9.isDevToolsEnabled) {
        import9.Inspector.instance.recordInput(this._NgClass_1_5, 'ngClass', currVal_2);
      }
      this._NgClass_1_5.rawClass = currVal_2 /* REF:package:np8080/src/dialog/about/aboutdialog.html:101:144 */;
      this._expr_2 = currVal_2;
    }
    if ((!import11.debugThrowIfChanged)) {
      this._NgClass_1_5.ngDoCheck();
    }
    if (firstCheck) {
      if (import9.isDevToolsEnabled) {
        import9.Inspector.instance.recordInput(this._NgClass_4_5, 'class', 'header');
      }
      this._NgClass_4_5.initialClasses = 'header' /* REF:package:np8080/src/dialog/about/aboutdialog.html:219:233 */;
    }
    final currVal_4 = ((_ctx.getHeaderClass() + ' ') + _ctx.getBorderClass());
    if (import11.checkBinding(this._expr_4, currVal_4, 'getHeaderClass()+\' \'+getBorderClass()', 'package:np8080/src/dialog/about/aboutdialog.html')) {
      if (import9.isDevToolsEnabled) {
        import9.Inspector.instance.recordInput(this._NgClass_4_5, 'ngClass', currVal_4);
      }
      this._NgClass_4_5.rawClass = currVal_4 /* REF:package:np8080/src/dialog/about/aboutdialog.html:234:283 */;
      this._expr_4 = currVal_4;
    }
    if ((!import11.debugThrowIfChanged)) {
      this._NgClass_4_5.ngDoCheck();
    }
    final currVal_5 = _ctx.getClass();
    if (import11.checkBinding(this._expr_5, currVal_5, 'getClass()', 'package:np8080/src/dialog/about/aboutdialog.html')) {
      if (import9.isDevToolsEnabled) {
        import9.Inspector.instance.recordInput(this._NgClass_6_5, 'ngClass', currVal_5);
      }
      this._NgClass_6_5.rawClass = currVal_5 /* REF:package:np8080/src/dialog/about/aboutdialog.html:331:353 */;
      this._expr_5 = currVal_5;
    }
    if ((!import11.debugThrowIfChanged)) {
      this._NgClass_6_5.ngDoCheck();
    }
    final currVal_0 = (!_ctx.showComponent);
    if (import11.checkBinding(this._expr_0, currVal_0, '!showComponent', 'package:np8080/src/dialog/about/aboutdialog.html')) {
      import8.setProperty(this._el_0, 'hidden', currVal_0) /* REF:package:np8080/src/dialog/about/aboutdialog.html:44:69 */;
      this._expr_0 = currVal_0;
    }
  }

  @override
  void destroyInternal() {
    this._NgClass_4_5.ngOnDestroy();
    this._NgClass_6_5.ngOnDestroy();
    this._NgClass_1_5.ngOnDestroy();
  }

  static void _debugClearComponentStyles() {
    _componentStyles = null;
  }

  void initComponentStyles() {
    var styles = _componentStyles;
    if ((styles == null)) {
      _componentStyles = (styles = import4.ComponentStyles.unscoped(styles$AboutDialogComponent, _debugComponentUrl));
      if (import7.isDevMode) {
        import4.ComponentStyles.debugOnClear(_debugClearComponentStyles);
      }
    }
    this.componentStyles = styles;
  }
}

const _AboutDialogComponentNgFactory = ComponentFactory<import1.AboutDialogComponent>('about-dialog', viewFactory_AboutDialogComponentHost0);
ComponentFactory<import1.AboutDialogComponent> get AboutDialogComponentNgFactory {
  return _AboutDialogComponentNgFactory;
}

ComponentFactory<import1.AboutDialogComponent> createAboutDialogComponentFactory() {
  return ComponentFactory('about-dialog', viewFactory_AboutDialogComponentHost0);
}

final List<Object> styles$AboutDialogComponentHost = const [];

class _ViewAboutDialogComponentHost0 extends import13.HostView<import1.AboutDialogComponent> {
  @override
  void build() {
    this.componentView = ViewAboutDialogComponent0(this, 0);
    final _el_0 = this.componentView.rootElement;
    this.component = (import7.isDevMode
        ? import14.debugInjectorWrap(import1.AboutDialogComponent, () {
            return import1.AboutDialogComponent(this.injectorGet(import15.ThemeService, this.parentIndex), this.injectorGet(import16.EventBusService, this.parentIndex));
          })
        : import1.AboutDialogComponent(this.injectorGet(import15.ThemeService, this.parentIndex), this.injectorGet(import16.EventBusService, this.parentIndex)));
    this.initRootNode(_el_0);
  }
}

import13.HostView<import1.AboutDialogComponent> viewFactory_AboutDialogComponentHost0() {
  return _ViewAboutDialogComponentHost0();
}
