// **************************************************************************
// Generator: AngularDart Compiler
// **************************************************************************

import 'statuspanel.dart';
import 'package:ngdart/src/core/linker/views/component_view.dart' as import0;
import 'statuspanel.dart' as import1;
import 'package:ngdart/src/runtime/text_binding.dart' as import2;
import 'package:ngdart/src/common/directives/ng_class.dart' as import3;
import 'package:ngdart/src/core/linker/view_container.dart';
import 'package:ngdart/src/common/directives/ng_if.dart';
import 'package:ngdart/src/common/pipes/date_pipe.dart' as import6;
import 'package:ngdart/src/common/pipes/uppercase_pipe.dart' as import7;
import 'dart:html' as import8;
import 'package:ngdart/src/core/linker/style_encapsulation.dart' as import9;
import 'package:ngdart/src/core/linker/views/view.dart' as import10;
import 'package:ngdart/src/meta/change_detection_constants.dart' as import11;
import 'package:ngdart/src/utilities.dart' as import12;
import 'package:ngdart/src/runtime/dom_helpers.dart' as import13;
import 'package:ngdart/src/devtools.dart' as import14;
import 'package:ngdart/src/core/linker/template_ref.dart';
import 'package:ngdart/src/runtime/check_binding.dart' as import16;
import 'package:ngdart/src/runtime/interpolate.dart' as import17;
import 'package:ngdart/angular.dart';
import 'package:ngdart/src/core/linker/views/embedded_view.dart' as import19;
import 'dart:core';
import 'package:ngdart/src/core/linker/views/render_view.dart' as import21;
import 'package:ngdart/src/runtime/proxies.dart' as import22;
import 'package:ngdart/src/core/linker/views/host_view.dart' as import23;
import 'package:ngdart/src/di/errors.dart' as import24;
import '../services/textprocessingservice.dart' as import25;
import '../services/textareadomservice.dart' as import26;
import '../services/themeservice.dart' as import27;
import '../services/eventbusservice.dart' as import28;

final List<Object> styles$StatusPanel = const [];

class ViewStatusPanel0 extends import0.ComponentView<import1.StatusPanel> {
  final import2.TextBinding _textBinding_3 = import2.TextBinding();
  final import2.TextBinding _textBinding_5 = import2.TextBinding();
  final import2.TextBinding _textBinding_7 = import2.TextBinding();
  final import2.TextBinding _textBinding_9 = import2.TextBinding();
  late final import3.NgClass _NgClass_0_5;
  late final ViewContainer _appEl_14;
  late final NgIf _NgIf_14_9;
  Object? _expr_1;
  Object? _expr_2;
  late final import6.DatePipe _pipe_date_0;
  late final import7.UpperCasePipe _pipe_uppercase_1;
  late final import8.HtmlElement _el_11;
  static import9.ComponentStyles? _componentStyles;
  ViewStatusPanel0(import10.View parentView, int parentIndex) : super(parentView, parentIndex, import11.ChangeDetectionCheckedState.checkAlways) {
    this.initComponentStyles();
    this.rootElement = import12.unsafeCast(import8.document.createElement('text-status'));
  }
  static String? get _debugComponentUrl {
    return (import12.isDevMode ? 'asset:np8080/lib/src/editor/statuspanel.dart' : null);
  }

  @override
  void build() {
    final _ctx = this.ctx;
    final parentRenderNode = this.initViewRoot();
    final doc = import8.document;
    final _el_0 = import13.appendDiv(doc, parentRenderNode);
    this.updateChildClass(_el_0, 'statusPanel');
    this._NgClass_0_5 = import3.NgClass(_el_0);
    if (import14.isDevToolsEnabled) {
      import14.Inspector.instance.registerDirective(_el_0, this._NgClass_0_5);
    }
    final _el_1 = import13.appendSpan(doc, _el_0);
    this.updateChildClass(_el_1, 'lhsStatus');
    import13.setAttribute(_el_1, 'title', 'Peek at note');
    final _text_2 = import13.appendText(_el_1, 'Chars: ');
    _el_1.append(this._textBinding_3.element);
    final _text_4 = import13.appendText(_el_1, '      Lines: ');
    _el_1.append(this._textBinding_5.element);
    final _text_6 = import13.appendText(_el_1, '      Words: ');
    _el_1.append(this._textBinding_7.element);
    final _text_8 = import13.appendText(_el_1, '      Sentences: ');
    _el_1.append(this._textBinding_9.element);
    final _text_10 = import13.appendText(_el_0, ' ');
    this._el_11 = import13.appendSpan(doc, _el_0);
    import13.setAttribute(this._el_11, 'style', 'background-color:#119011;color:white');
    final _text_12 = import13.appendText(this._el_11, 'WARNING : Please download your doc & update the Url to HTTPS!');
    final _text_13 = import13.appendText(_el_0, ' ');
    final _anchor_14 = import13.appendAnchor(_el_0);
    this._appEl_14 = ViewContainer(14, 0, this, _anchor_14);
    var _TemplateRef_14_8 = TemplateRef(this._appEl_14, viewFactory_StatusPanel1);
    this._NgIf_14_9 = NgIf(this._appEl_14, _TemplateRef_14_8);
    if (import14.isDevToolsEnabled) {
      import14.Inspector.instance.registerDirective(_anchor_14, this._NgIf_14_9);
    }
    final _text_15 = import13.appendText(_el_0, ' ');
    final _el_16 = import13.appendSpan(doc, _el_0);
    this.updateChildClass(_el_16, 'rhsStatus');
    import13.setAttribute(_el_16, 'title', 'Peek at note (safe)');
    final _text_17 = import13.appendText(_el_16, '🔍');
    _el_1.addEventListener('click', this.eventHandler0(_ctx.showPeek));
    _el_16.addEventListener('click', this.eventHandler0(_ctx.showPeekSafe));
    this._pipe_date_0 = import6.DatePipe();
    this._pipe_uppercase_1 = import7.UpperCasePipe();
  }

  @override
  void detectChangesInternal() {
    final _ctx = this.ctx;
    bool firstCheck = this.firstCheck;
    if (firstCheck) {
      if (import14.isDevToolsEnabled) {
        import14.Inspector.instance.recordInput(this._NgClass_0_5, 'class', 'statusPanel');
      }
      this._NgClass_0_5.initialClasses = 'statusPanel' /* REF:package:np8080/src/editor/statuspanel.html:5:24 */;
    }
    final currVal_1 = _ctx.getBackgroundClass();
    if (import16.checkBinding(this._expr_1, currVal_1, 'getBackgroundClass()', 'package:np8080/src/editor/statuspanel.html')) {
      if (import14.isDevToolsEnabled) {
        import14.Inspector.instance.recordInput(this._NgClass_0_5, 'ngClass', currVal_1);
      }
      this._NgClass_0_5.rawClass = currVal_1 /* REF:package:np8080/src/editor/statuspanel.html:25:57 */;
      this._expr_1 = currVal_1;
    }
    if ((!import16.debugThrowIfChanged)) {
      this._NgClass_0_5.ngDoCheck();
    }
    if (import14.isDevToolsEnabled) {
      import14.Inspector.instance.recordInput(this._NgIf_14_9, 'ngIf', (_ctx.modified != null));
    }
    this._NgIf_14_9.ngIf = (_ctx.modified != null) /* REF:package:np8080/src/editor/statuspanel.html:547:569 */;
    this._appEl_14.detectChangesInNestedViews();
    this._textBinding_3.updateText(import17.interpolateString0(_ctx.length)) /* REF:package:np8080/src/editor/statuspanel.html:141:151 */;
    this._textBinding_5.updateText(import17.interpolateString0(_ctx.lineCount)) /* REF:package:np8080/src/editor/statuspanel.html:206:219 */;
    this._textBinding_7.updateText(import17.interpolateString0(_ctx.wordCount)) /* REF:package:np8080/src/editor/statuspanel.html:274:287 */;
    this._textBinding_9.updateText(import17.interpolateString0(_ctx.sentenceCount)) /* REF:package:np8080/src/editor/statuspanel.html:346:363 */;
    final currVal_2 = _ctx.isHttps();
    if (import16.checkBinding(this._expr_2, currVal_2, 'isHttps()', 'package:np8080/src/editor/statuspanel.html')) {
      import13.setProperty(this._el_11, 'hidden', currVal_2) /* REF:package:np8080/src/editor/statuspanel.html:383:403 */;
      this._expr_2 = currVal_2;
    }
  }

  @override
  void destroyInternal() {
    this._appEl_14.destroyNestedViews();
    this._NgClass_0_5.ngOnDestroy();
  }

  static void _debugClearComponentStyles() {
    _componentStyles = null;
  }

  void initComponentStyles() {
    var styles = _componentStyles;
    if ((styles == null)) {
      _componentStyles = (styles = import9.ComponentStyles.unscoped(styles$StatusPanel, _debugComponentUrl));
      if (import12.isDevMode) {
        import9.ComponentStyles.debugOnClear(_debugClearComponentStyles);
      }
    }
    this.componentStyles = styles;
  }
}

const _StatusPanelNgFactory = ComponentFactory<import1.StatusPanel>('text-status', viewFactory_StatusPanelHost0);
ComponentFactory<import1.StatusPanel> get StatusPanelNgFactory {
  return _StatusPanelNgFactory;
}

ComponentFactory<import1.StatusPanel> createStatusPanelFactory() {
  return ComponentFactory('text-status', viewFactory_StatusPanelHost0);
}

class _ViewStatusPanel1 extends import19.EmbeddedView<import1.StatusPanel> {
  final import2.TextBinding _textBinding_2 = import2.TextBinding();
  late final String? Function(dynamic, String) _pipe_date_0_0;
  late final String? Function(String?) _pipe_uppercase_1_0;
  _ViewStatusPanel1(import21.RenderView parentView, int parentIndex) : super(parentView, parentIndex);
  @override
  void build() {
    final doc = import8.document;
    final _el_0 = import12.unsafeCast(doc.createElement('span'));
    this.updateChildClass(_el_0, 'rhsStatus');
    final _text_1 = import13.appendText(_el_0, 'Modified: ');
    _el_0.append(this._textBinding_2.element);
    this._pipe_date_0_0 = import22.pureProxy2(import12.unsafeCast<ViewStatusPanel0>((this.parentView!))._pipe_date_0.transform);
    this._pipe_uppercase_1_0 = import22.pureProxy1(import12.unsafeCast<ViewStatusPanel0>((this.parentView!))._pipe_uppercase_1.transform);
    this.initRootNode(_el_0);
  }

  @override
  void detectChangesInternal() {
    final _ctx = this.ctx;
    this._textBinding_2.updateText(import17.interpolate0(this._pipe_uppercase_1_0(this._pipe_date_0_0(_ctx.modified, 'mediumTime')))) /* REF:package:np8080/src/editor/statuspanel.html:580:635 */;
  }
}

import19.EmbeddedView<void> viewFactory_StatusPanel1(import21.RenderView parentView, int parentIndex) {
  return _ViewStatusPanel1(parentView, parentIndex);
}

final List<Object> styles$StatusPanelHost = const [];

class _ViewStatusPanelHost0 extends import23.HostView<import1.StatusPanel> {
  @override
  void build() {
    this.componentView = ViewStatusPanel0(this, 0);
    final _el_0 = this.componentView.rootElement;
    this.component = (import12.isDevMode
        ? import24.debugInjectorWrap(import1.StatusPanel, () {
            return import1.StatusPanel(this.injectorGet(import25.TextProcessingService, this.parentIndex), this.injectorGet(import26.TextareaDomService, this.parentIndex), this.injectorGet(import27.ThemeService, this.parentIndex), this.injectorGet(import28.EventBusService, this.parentIndex));
          })
        : import1.StatusPanel(this.injectorGet(import25.TextProcessingService, this.parentIndex), this.injectorGet(import26.TextareaDomService, this.parentIndex), this.injectorGet(import27.ThemeService, this.parentIndex), this.injectorGet(import28.EventBusService, this.parentIndex)));
    this.initRootNode(_el_0);
  }
}

import23.HostView<import1.StatusPanel> viewFactory_StatusPanelHost0() {
  return _ViewStatusPanelHost0();
}
