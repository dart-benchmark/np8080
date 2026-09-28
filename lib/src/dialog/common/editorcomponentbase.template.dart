// **************************************************************************
// Generator: AngularDart Compiler
// **************************************************************************

import 'editorcomponentbase.dart';
import 'package:ngdart/src/core/linker/views/component_view.dart' as import0;
import 'editorcomponentbase.dart' as import1;
import 'package:ngdart/src/core/linker/style_encapsulation.dart' as import2;
import 'package:ngdart/src/core/linker/views/view.dart' as import3;
import 'package:ngdart/src/meta/change_detection_constants.dart' as import4;
import 'package:ngdart/src/utilities.dart' as import5;
import 'dart:html' as import6;
import 'package:ngdart/angular.dart';
import 'package:ngdart/src/core/linker/views/host_view.dart' as import8;
import 'package:ngdart/src/di/errors.dart' as import9;
import '../../services/textprocessingservice.dart' as import10;
import '../../services/textareadomservice.dart' as import11;
import '../../services/themeservice.dart' as import12;
import '../../services/eventbusservice.dart' as import13;

final List<Object> styles$EditorComponentBase = const [];

class ViewEditorComponentBase0 extends import0.ComponentView<import1.EditorComponentBase> {
  static import2.ComponentStyles? _componentStyles;
  ViewEditorComponentBase0(import3.View parentView, int parentIndex) : super(parentView, parentIndex, import4.ChangeDetectionCheckedState.checkAlways) {
    this.initComponentStyles();
    this.rootElement = import5.unsafeCast(import6.document.createElement('base_dialog'));
  }
  static String? get _debugComponentUrl {
    return (import5.isDevMode ? 'asset:np8080/lib/src/dialog/common/editorcomponentbase.dart' : null);
  }

  @override
  void build() {
    final parentRenderNode = this.initViewRoot();
  }

  static void _debugClearComponentStyles() {
    _componentStyles = null;
  }

  void initComponentStyles() {
    var styles = _componentStyles;
    if ((styles == null)) {
      _componentStyles = (styles = import2.ComponentStyles.unscoped(styles$EditorComponentBase, _debugComponentUrl));
      if (import5.isDevMode) {
        import2.ComponentStyles.debugOnClear(_debugClearComponentStyles);
      }
    }
    this.componentStyles = styles;
  }
}

const _EditorComponentBaseNgFactory = ComponentFactory<import1.EditorComponentBase>('base_dialog', viewFactory_EditorComponentBaseHost0);
ComponentFactory<import1.EditorComponentBase> get EditorComponentBaseNgFactory {
  return _EditorComponentBaseNgFactory;
}

ComponentFactory<import1.EditorComponentBase> createEditorComponentBaseFactory() {
  return ComponentFactory('base_dialog', viewFactory_EditorComponentBaseHost0);
}

final List<Object> styles$EditorComponentBaseHost = const [];

class _ViewEditorComponentBaseHost0 extends import8.HostView<import1.EditorComponentBase> {
  @override
  void build() {
    this.componentView = ViewEditorComponentBase0(this, 0);
    final _el_0 = this.componentView.rootElement;
    this.component = (import5.isDevMode
        ? import9.debugInjectorWrap(import1.EditorComponentBase, () {
            return import1.EditorComponentBase(this.injectorGet(import10.TextProcessingService, this.parentIndex), this.injectorGet(import11.TextareaDomService, this.parentIndex), this.injectorGet(import12.ThemeService, this.parentIndex), this.injectorGet(import13.EventBusService, this.parentIndex));
          })
        : import1.EditorComponentBase(this.injectorGet(import10.TextProcessingService, this.parentIndex), this.injectorGet(import11.TextareaDomService, this.parentIndex), this.injectorGet(import12.ThemeService, this.parentIndex), this.injectorGet(import13.EventBusService, this.parentIndex)));
    this.initRootNode(_el_0);
  }
}

import8.HostView<import1.EditorComponentBase> viewFactory_EditorComponentBaseHost0() {
  return _ViewEditorComponentBaseHost0();
}
