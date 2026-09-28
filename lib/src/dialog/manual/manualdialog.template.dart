// **************************************************************************
// Generator: AngularDart Compiler
// **************************************************************************

import 'manualdialog.dart';
import 'package:ngdart/src/core/linker/views/component_view.dart' as import0;
import 'manualdialog.dart' as import1;
import 'package:ngdart/src/runtime/text_binding.dart' as import2;
import 'package:ngdart/src/common/directives/ng_class.dart' as import3;
import 'dart:html' as import4;
import 'package:ngdart/src/core/linker/style_encapsulation.dart' as import5;
import 'package:ngdart/src/core/linker/views/view.dart' as import6;
import 'package:ngdart/src/meta/change_detection_constants.dart' as import7;
import 'package:ngdart/src/utilities.dart' as import8;
import 'package:ngdart/src/runtime/dom_helpers.dart' as import9;
import 'package:ngdart/src/devtools.dart' as import10;
import 'package:ngdart/src/runtime/check_binding.dart' as import11;
import 'package:ngdart/src/runtime/interpolate.dart' as import12;
import 'package:ngdart/angular.dart';
import 'package:ngdart/src/core/linker/views/host_view.dart' as import14;
import 'package:ngdart/src/di/errors.dart' as import15;
import '../../services/themeservice.dart' as import16;
import '../../services/eventbusservice.dart' as import17;

final List<Object> styles$ManualDialog = const [];

class ViewManualDialog0 extends import0.ComponentView<import1.ManualDialog> {
  final import2.TextBinding _textBinding_13 = import2.TextBinding();
  late final import3.NgClass _NgClass_2_5;
  late final import3.NgClass _NgClass_7_5;
  Object? _expr_0;
  Object? _expr_2;
  Object? _expr_4;
  late final import4.DivElement _el_0;
  static import5.ComponentStyles? _componentStyles;
  ViewManualDialog0(import6.View parentView, int parentIndex) : super(parentView, parentIndex, import7.ChangeDetectionCheckedState.checkAlways) {
    this.initComponentStyles();
    this.rootElement = import8.unsafeCast(import4.document.createElement('manual-dialog'));
  }
  static String? get _debugComponentUrl {
    return (import8.isDevMode ? 'asset:np8080/lib/src/dialog/manual/manualdialog.dart' : null);
  }

  @override
  void build() {
    final _ctx = this.ctx;
    final parentRenderNode = this.initViewRoot();
    final doc = import4.document;
    this._el_0 = import9.appendDiv(doc, parentRenderNode);
    import9.setAttribute(this._el_0, 'id', 'overlay');
    import9.setAttribute(this._el_0, 'style', 'margin-top:-85px;');
    final _text_1 = import9.appendText(this._el_0, '\r\n    ');
    final _el_2 = import9.appendDiv(doc, this._el_0);
    this.updateChildClass(_el_2, 'dialogPanel');
    this._NgClass_2_5 = import3.NgClass(_el_2);
    if (import10.isDevToolsEnabled) {
      import10.Inspector.instance.registerDirective(_el_2, this._NgClass_2_5);
    }
    final _text_3 = import9.appendText(_el_2, '\r\n        ');
    final _el_4 = import9.appendDiv(doc, _el_2);
    this.updateChildClass(_el_4, 'closeCross');
    final _text_5 = import9.appendText(_el_4, 'X');
    final _text_6 = import9.appendText(_el_2, '\r\n        ');
    final _el_7 = import9.appendDiv(doc, _el_2);
    this.updateChildClass(_el_7, 'header');
    this._NgClass_7_5 = import3.NgClass(_el_7);
    if (import10.isDevToolsEnabled) {
      import10.Inspector.instance.registerDirective(_el_7, this._NgClass_7_5);
    }
    final _text_8 = import9.appendText(_el_7, 'Notepad 8080');
    final _text_9 = import9.appendText(_el_2, '\r\n');
    final _el_10 = import9.appendElement<import4.HtmlElement>(doc, _el_2, 'br');
    final _text_11 = import9.appendText(_el_2, '\r\n        ');
    final _el_12 = import9.appendElement<import4.TextAreaElement>(doc, _el_2, 'textarea');
    import9.setAttribute(_el_12, 'cols', '90');
    import9.setAttribute(_el_12, 'readonly', '');
    import9.setAttribute(_el_12, 'rows', '16');
    import9.setAttribute(_el_12, 'style', 'height:460px;font-size: small;text-align: left');
    _el_12.append(this._textBinding_13.element);
    final _text_14 = import9.appendText(_el_2, '\r\n\r\n        ');
    final _el_15 = import9.appendDiv(doc, _el_2);
    this.updateChildClass(_el_15, 'footer');
    final _text_16 = import9.appendText(_el_15, '\r\n            ');
    final _el_17 = import9.appendElement<import4.ButtonElement>(doc, _el_15, 'button');
    this.updateChildClass(_el_17, 'closeButton');
    final _text_18 = import9.appendText(_el_17, 'Close');
    final _text_19 = import9.appendText(_el_15, '\r\n        ');
    final _text_20 = import9.appendText(_el_2, '\r\n    ');
    final _text_21 = import9.appendText(this._el_0, '\r\n');
    final _text_22 = import9.appendText(parentRenderNode, '\r\n\r\n');
    _el_4.addEventListener('click', this.eventHandler0(_ctx.close));
    _el_17.addEventListener('click', this.eventHandler0(_ctx.close));
  }

  @override
  void detectChangesInternal() {
    final _ctx = this.ctx;
    bool firstCheck = this.firstCheck;
    if (firstCheck) {
      if (import10.isDevToolsEnabled) {
        import10.Inspector.instance.recordInput(this._NgClass_2_5, 'class', 'dialogPanel');
      }
      this._NgClass_2_5.initialClasses = 'dialogPanel' /* REF:package:np8080/src/dialog/manual/manual.tpl.html:81:100 */;
    }
    final currVal_2 = ((_ctx.getClass() + ' ') + _ctx.getBorderClass());
    if (import11.checkBinding(this._expr_2, currVal_2, 'getClass()+\' \'+getBorderClass()', 'package:np8080/src/dialog/manual/manual.tpl.html')) {
      if (import10.isDevToolsEnabled) {
        import10.Inspector.instance.recordInput(this._NgClass_2_5, 'ngClass', currVal_2);
      }
      this._NgClass_2_5.rawClass = currVal_2 /* REF:package:np8080/src/dialog/manual/manual.tpl.html:101:144 */;
      this._expr_2 = currVal_2;
    }
    if ((!import11.debugThrowIfChanged)) {
      this._NgClass_2_5.ngDoCheck();
    }
    if (firstCheck) {
      if (import10.isDevToolsEnabled) {
        import10.Inspector.instance.recordInput(this._NgClass_7_5, 'class', 'header');
      }
      this._NgClass_7_5.initialClasses = 'header' /* REF:package:np8080/src/dialog/manual/manual.tpl.html:219:233 */;
    }
    final currVal_4 = _ctx.getHeaderClass();
    if (import11.checkBinding(this._expr_4, currVal_4, 'getHeaderClass()', 'package:np8080/src/dialog/manual/manual.tpl.html')) {
      if (import10.isDevToolsEnabled) {
        import10.Inspector.instance.recordInput(this._NgClass_7_5, 'ngClass', currVal_4);
      }
      this._NgClass_7_5.rawClass = currVal_4 /* REF:package:np8080/src/dialog/manual/manual.tpl.html:234:262 */;
      this._expr_4 = currVal_4;
    }
    if ((!import11.debugThrowIfChanged)) {
      this._NgClass_7_5.ngDoCheck();
    }
    final currVal_0 = (!_ctx.showComponent);
    if (import11.checkBinding(this._expr_0, currVal_0, '!showComponent', 'package:np8080/src/dialog/manual/manual.tpl.html')) {
      import9.setProperty(this._el_0, 'hidden', currVal_0) /* REF:package:np8080/src/dialog/manual/manual.tpl.html:44:69 */;
      this._expr_0 = currVal_0;
    }
    this._textBinding_13.updateText(import12.interpolateString0(_ctx.manualText)) /* REF:package:np8080/src/dialog/manual/manual.tpl.html:392:406 */;
  }

  @override
  void destroyInternal() {
    this._NgClass_7_5.ngOnDestroy();
    this._NgClass_2_5.ngOnDestroy();
  }

  static void _debugClearComponentStyles() {
    _componentStyles = null;
  }

  void initComponentStyles() {
    var styles = _componentStyles;
    if ((styles == null)) {
      _componentStyles = (styles = import5.ComponentStyles.unscoped(styles$ManualDialog, _debugComponentUrl));
      if (import8.isDevMode) {
        import5.ComponentStyles.debugOnClear(_debugClearComponentStyles);
      }
    }
    this.componentStyles = styles;
  }
}

const _ManualDialogNgFactory = ComponentFactory<import1.ManualDialog>('manual-dialog', viewFactory_ManualDialogHost0);
ComponentFactory<import1.ManualDialog> get ManualDialogNgFactory {
  return _ManualDialogNgFactory;
}

ComponentFactory<import1.ManualDialog> createManualDialogFactory() {
  return ComponentFactory('manual-dialog', viewFactory_ManualDialogHost0);
}

final List<Object> styles$ManualDialogHost = const [];

class _ViewManualDialogHost0 extends import14.HostView<import1.ManualDialog> {
  @override
  void build() {
    this.componentView = ViewManualDialog0(this, 0);
    final _el_0 = this.componentView.rootElement;
    this.component = (import8.isDevMode
        ? import15.debugInjectorWrap(import1.ManualDialog, () {
            return import1.ManualDialog(this.injectorGet(import16.ThemeService, this.parentIndex), this.injectorGet(import17.EventBusService, this.parentIndex));
          })
        : import1.ManualDialog(this.injectorGet(import16.ThemeService, this.parentIndex), this.injectorGet(import17.EventBusService, this.parentIndex)));
    this.initRootNode(_el_0);
  }
}

import14.HostView<import1.ManualDialog> viewFactory_ManualDialogHost0() {
  return _ViewManualDialogHost0();
}
