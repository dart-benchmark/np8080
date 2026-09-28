// **************************************************************************
// Generator: AngularDart Compiler
// **************************************************************************

import 'markdownpreview.dart';
import 'package:ngdart/src/core/linker/views/component_view.dart' as import0;
import 'markdownpreview.dart' as import1;
import 'package:ngdart/src/common/directives/ng_class.dart' as import2;
import 'dart:html' as import3;
import 'package:ngdart/src/core/linker/style_encapsulation.dart' as import4;
import 'package:ngdart/src/core/linker/views/view.dart' as import5;
import 'package:ngdart/src/meta/change_detection_constants.dart' as import6;
import 'package:ngdart/src/utilities.dart' as import7;
import 'package:ngdart/src/runtime/dom_helpers.dart' as import8;
import 'package:ngdart/src/devtools.dart' as import9;
import 'package:ngdart/src/runtime/check_binding.dart' as import10;
import 'package:ngdart/angular.dart';
import 'package:ngdart/src/core/linker/views/host_view.dart' as import12;
import 'package:ngdart/src/di/errors.dart' as import13;
import '../../services/textprocessingservice.dart' as import14;
import '../../services/textareadomservice.dart' as import15;
import '../../services/themeservice.dart' as import16;
import '../../services/eventbusservice.dart' as import17;

final List<Object> styles$MarkdownPreview = const [];

class ViewMarkdownPreview0 extends import0.ComponentView<import1.MarkdownPreview> {
  late final import2.NgClass _NgClass_0_5;
  Object? _expr_0;
  Object? _expr_1;
  Object? _expr_3;
  late final import3.DivElement _el_0;
  static import4.ComponentStyles? _componentStyles;
  ViewMarkdownPreview0(import5.View parentView, int parentIndex) : super(parentView, parentIndex, import6.ChangeDetectionCheckedState.checkAlways) {
    this.initComponentStyles();
    this.rootElement = import7.unsafeCast(import3.document.createElement('markdown-preview'));
  }
  static String? get _debugComponentUrl {
    return (import7.isDevMode ? 'asset:np8080/lib/src/editor/views/markdownpreview.dart' : null);
  }

  @override
  void build() {
    final parentRenderNode = this.initViewRoot();
    final doc = import3.document;
    this._el_0 = import8.appendDiv(doc, parentRenderNode);
    this.updateChildClass(this._el_0, 'preview');
    import8.setAttribute(this._el_0, 'id', 'previewPane');
    this._NgClass_0_5 = import2.NgClass(this._el_0);
    if (import9.isDevToolsEnabled) {
      import9.Inspector.instance.registerDirective(this._el_0, this._NgClass_0_5);
    }
  }

  @override
  void detectChangesInternal() {
    final _ctx = this.ctx;
    bool firstCheck = this.firstCheck;
    if (firstCheck) {
      if (import9.isDevToolsEnabled) {
        import9.Inspector.instance.recordInput(this._NgClass_0_5, 'class', 'preview');
      }
      this._NgClass_0_5.initialClasses = 'preview' /* REF:package:np8080/src/editor/views/markdownpreview.html:5:20 */;
    }
    final currVal_3 = _ctx.getDocumentClass();
    if (import10.checkBinding(this._expr_3, currVal_3, 'getDocumentClass()', 'package:np8080/src/editor/views/markdownpreview.html')) {
      if (import9.isDevToolsEnabled) {
        import9.Inspector.instance.recordInput(this._NgClass_0_5, 'ngClass', currVal_3);
      }
      this._NgClass_0_5.rawClass = currVal_3 /* REF:package:np8080/src/editor/views/markdownpreview.html:118:148 */;
      this._expr_3 = currVal_3;
    }
    if ((!import10.debugThrowIfChanged)) {
      this._NgClass_0_5.ngDoCheck();
    }
    final currVal_0 = (_ctx.active ? '48%' : '0px');
    if (import10.checkBinding(this._expr_0, currVal_0, 'active ? \'48%\':\'0px\'', 'package:np8080/src/editor/views/markdownpreview.html')) {
      this._el_0.style.setProperty('width', currVal_0?.toString()) /* REF:package:np8080/src/editor/views/markdownpreview.html:21:57 */;
      this._expr_0 = currVal_0;
    }
    final currVal_1 = (_ctx.active ? '1' : '0');
    if (import10.checkBinding(this._expr_1, currVal_1, 'active ? \'1\' : \'0\'', 'package:np8080/src/editor/views/markdownpreview.html')) {
      this._el_0.style.setProperty('opacity', currVal_1?.toString()) /* REF:package:np8080/src/editor/views/markdownpreview.html:58:94 */;
      this._expr_1 = currVal_1;
    }
  }

  @override
  void destroyInternal() {
    this._NgClass_0_5.ngOnDestroy();
  }

  static void _debugClearComponentStyles() {
    _componentStyles = null;
  }

  void initComponentStyles() {
    var styles = _componentStyles;
    if ((styles == null)) {
      _componentStyles = (styles = import4.ComponentStyles.unscoped(styles$MarkdownPreview, _debugComponentUrl));
      if (import7.isDevMode) {
        import4.ComponentStyles.debugOnClear(_debugClearComponentStyles);
      }
    }
    this.componentStyles = styles;
  }
}

const _MarkdownPreviewNgFactory = ComponentFactory<import1.MarkdownPreview>('markdown-preview', viewFactory_MarkdownPreviewHost0);
ComponentFactory<import1.MarkdownPreview> get MarkdownPreviewNgFactory {
  return _MarkdownPreviewNgFactory;
}

ComponentFactory<import1.MarkdownPreview> createMarkdownPreviewFactory() {
  return ComponentFactory('markdown-preview', viewFactory_MarkdownPreviewHost0);
}

final List<Object> styles$MarkdownPreviewHost = const [];

class _ViewMarkdownPreviewHost0 extends import12.HostView<import1.MarkdownPreview> {
  @override
  void build() {
    this.componentView = ViewMarkdownPreview0(this, 0);
    final _el_0 = this.componentView.rootElement;
    this.component = (import7.isDevMode
        ? import13.debugInjectorWrap(import1.MarkdownPreview, () {
            return import1.MarkdownPreview(this.injectorGet(import14.TextProcessingService, this.parentIndex), this.injectorGet(import15.TextareaDomService, this.parentIndex), this.injectorGet(import16.ThemeService, this.parentIndex), this.injectorGet(import17.EventBusService, this.parentIndex));
          })
        : import1.MarkdownPreview(this.injectorGet(import14.TextProcessingService, this.parentIndex), this.injectorGet(import15.TextareaDomService, this.parentIndex), this.injectorGet(import16.ThemeService, this.parentIndex), this.injectorGet(import17.EventBusService, this.parentIndex)));
    this.initRootNode(_el_0);
  }

  @override
  void detectChangesInternal() {
    bool firstCheck = this.firstCheck;
    if ((!import10.debugThrowIfChanged)) {
      if (firstCheck) {
        this.component.ngAfterContentInit();
      }
    }
    this.componentView.detectChanges();
  }
}

import12.HostView<import1.MarkdownPreview> viewFactory_MarkdownPreviewHost0() {
  return _ViewMarkdownPreviewHost0();
}
