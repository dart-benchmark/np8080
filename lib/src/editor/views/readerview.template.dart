// **************************************************************************
// Generator: AngularDart Compiler
// **************************************************************************

import 'readerview.dart';
import 'package:ngdart/src/core/linker/views/component_view.dart' as import0;
import 'readerview.dart' as import1;
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

final List<Object> styles$ReaderView = const [];

class ViewReaderView0 extends import0.ComponentView<import1.ReaderView> {
  final import2.TextBinding _textBinding_4 = import2.TextBinding();
  late final import3.NgClass _NgClass_0_5;
  late final import3.NgClass _NgClass_3_5;
  Object? _expr_0;
  Object? _expr_2;
  Object? _expr_3;
  late final import4.DivElement _el_0;
  static import5.ComponentStyles? _componentStyles;
  ViewReaderView0(import6.View parentView, int parentIndex) : super(parentView, parentIndex, import7.ChangeDetectionCheckedState.checkAlways) {
    this.initComponentStyles();
    this.rootElement = import8.unsafeCast(import4.document.createElement('reader-view'));
  }
  static String? get _debugComponentUrl {
    return (import8.isDevMode ? 'asset:np8080/lib/src/editor/views/readerview.dart' : null);
  }

  @override
  void build() {
    final _ctx = this.ctx;
    final parentRenderNode = this.initViewRoot();
    final doc = import4.document;
    this._el_0 = import9.appendDiv(doc, parentRenderNode);
    this.updateChildClass(this._el_0, 'fullScreenViewPanel');
    this._NgClass_0_5 = import3.NgClass(this._el_0);
    if (import10.isDevToolsEnabled) {
      import10.Inspector.instance.registerDirective(this._el_0, this._NgClass_0_5);
    }
    final _el_1 = import9.appendDiv(doc, this._el_0);
    this.updateChildClass(_el_1, 'closeCross');
    final _text_2 = import9.appendText(_el_1, 'X');
    final _el_3 = import9.appendElement<import4.TextAreaElement>(doc, this._el_0, 'textarea');
    import9.setAttribute(_el_3, 'readonly', '');
    import9.setAttribute(_el_3, 'style', 'width:calc(100% - 30px);height:calc(100% - 50px);');
    this._NgClass_3_5 = import3.NgClass(_el_3);
    if (import10.isDevToolsEnabled) {
      import10.Inspector.instance.registerDirective(_el_3, this._NgClass_3_5);
    }
    _el_3.append(this._textBinding_4.element);
    _el_1.addEventListener('click', this.eventHandler0(_ctx.close));
  }

  @override
  void detectChangesInternal() {
    final _ctx = this.ctx;
    bool firstCheck = this.firstCheck;
    if (firstCheck) {
      if (import10.isDevToolsEnabled) {
        import10.Inspector.instance.recordInput(this._NgClass_0_5, 'class', 'fullScreenViewPanel');
      }
      this._NgClass_0_5.initialClasses = 'fullScreenViewPanel' /* REF:package:np8080/src/editor/views/readerview.html:5:32 */;
    }
    final currVal_2 = _ctx.getClass();
    if (import11.checkBinding(this._expr_2, currVal_2, 'getClass()', 'package:np8080/src/editor/views/readerview.html')) {
      if (import10.isDevToolsEnabled) {
        import10.Inspector.instance.recordInput(this._NgClass_0_5, 'ngClass', currVal_2);
      }
      this._NgClass_0_5.rawClass = currVal_2 /* REF:package:np8080/src/editor/views/readerview.html:59:81 */;
      this._expr_2 = currVal_2;
    }
    if ((!import11.debugThrowIfChanged)) {
      this._NgClass_0_5.ngDoCheck();
    }
    final currVal_3 = ((_ctx.getDocumentClass() + ' ') + _ctx.getBorderClass());
    if (import11.checkBinding(this._expr_3, currVal_3, 'getDocumentClass()+\' \'+getBorderClass()', 'package:np8080/src/editor/views/readerview.html')) {
      if (import10.isDevToolsEnabled) {
        import10.Inspector.instance.recordInput(this._NgClass_3_5, 'ngClass', currVal_3);
      }
      this._NgClass_3_5.rawClass = currVal_3 /* REF:package:np8080/src/editor/views/readerview.html:155:206 */;
      this._expr_3 = currVal_3;
    }
    if ((!import11.debugThrowIfChanged)) {
      this._NgClass_3_5.ngDoCheck();
    }
    final currVal_0 = (!_ctx.showComponent);
    if (import11.checkBinding(this._expr_0, currVal_0, '!showComponent', 'package:np8080/src/editor/views/readerview.html')) {
      import9.setProperty(this._el_0, 'hidden', currVal_0) /* REF:package:np8080/src/editor/views/readerview.html:33:58 */;
      this._expr_0 = currVal_0;
    }
    this._textBinding_4.updateText(import12.interpolateString0(_ctx.note.text)) /* REF:package:np8080/src/editor/views/readerview.html:289:302 */;
  }

  @override
  void destroyInternal() {
    this._NgClass_3_5.ngOnDestroy();
    this._NgClass_0_5.ngOnDestroy();
  }

  static void _debugClearComponentStyles() {
    _componentStyles = null;
  }

  void initComponentStyles() {
    var styles = _componentStyles;
    if ((styles == null)) {
      _componentStyles = (styles = import5.ComponentStyles.unscoped(styles$ReaderView, _debugComponentUrl));
      if (import8.isDevMode) {
        import5.ComponentStyles.debugOnClear(_debugClearComponentStyles);
      }
    }
    this.componentStyles = styles;
  }
}

const _ReaderViewNgFactory = ComponentFactory<import1.ReaderView>('reader-view', viewFactory_ReaderViewHost0);
ComponentFactory<import1.ReaderView> get ReaderViewNgFactory {
  return _ReaderViewNgFactory;
}

ComponentFactory<import1.ReaderView> createReaderViewFactory() {
  return ComponentFactory('reader-view', viewFactory_ReaderViewHost0);
}

final List<Object> styles$ReaderViewHost = const [];

class _ViewReaderViewHost0 extends import14.HostView<import1.ReaderView> {
  @override
  void build() {
    this.componentView = ViewReaderView0(this, 0);
    final _el_0 = this.componentView.rootElement;
    this.component = (import8.isDevMode
        ? import15.debugInjectorWrap(import1.ReaderView, () {
            return import1.ReaderView(this.injectorGet(import16.ThemeService, this.parentIndex), this.injectorGet(import17.EventBusService, this.parentIndex));
          })
        : import1.ReaderView(this.injectorGet(import16.ThemeService, this.parentIndex), this.injectorGet(import17.EventBusService, this.parentIndex)));
    this.initRootNode(_el_0);
  }
}

import14.HostView<import1.ReaderView> viewFactory_ReaderViewHost0() {
  return _ViewReaderViewHost0();
}
