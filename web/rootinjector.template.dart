// **************************************************************************
// Generator: AngularDart Compiler
// **************************************************************************

import 'rootinjector.dart';
import 'package:ngdart/src/di/injector.dart' as _i1;
import 'package:np8080/src/services/documentservice.dart' as _i2;
import 'package:np8080/src/services/themeservice.dart' as _i3;
import 'package:np8080/src/services/textareadomservice.dart' as _i4;
import 'package:np8080/src/services/textprocessingservice.dart' as _i5;
import 'package:np8080/src/services/eventbusservice.dart' as _i6;

// ignore_for_file: no_leading_underscores_for_library_prefixes

_i1.Injector rootInjector$Injector(_i1.Injector parent) => _Injector$rootInjector._(parent);

class _Injector$rootInjector extends _i1.HierarchicalInjector implements _i1.Injector {
  _Injector$rootInjector._(_i1.Injector parent) : super(parent);

  _i2.DocumentService? _field0;

  _i3.ThemeService? _field1;

  _i4.TextareaDomService? _field2;

  _i5.TextProcessingService? _field3;

  _i6.EventBusService? _field4;

  _i2.DocumentService _getDocumentService$0() => _field0 ??= _i2.DocumentService(this.get(_i4.TextareaDomService));

  _i3.ThemeService _getThemeService$1() => _field1 ??= _i3.ThemeService();

  _i4.TextareaDomService _getTextareaDomService$2() => _field2 ??= _i4.TextareaDomService();

  _i5.TextProcessingService _getTextProcessingService$3() => _field3 ??= _i5.TextProcessingService();

  _i6.EventBusService _getEventBusService$4() => _field4 ??= _i6.EventBusService();

  _i1.Injector _getInjector$5() => this;

  @override
  Object? injectFromSelfOptional(
    Object token, [
    Object? orElse = _i1.throwIfNotFound,
  ]) {
    if (identical(token, _i2.DocumentService)) {
      return _getDocumentService$0();
    }
    if (identical(token, _i3.ThemeService)) {
      return _getThemeService$1();
    }
    if (identical(token, _i4.TextareaDomService)) {
      return _getTextareaDomService$2();
    }
    if (identical(token, _i5.TextProcessingService)) {
      return _getTextProcessingService$3();
    }
    if (identical(token, _i6.EventBusService)) {
      return _getEventBusService$4();
    }
    if (identical(token, _i1.Injector)) {
      return _getInjector$5();
    }
    return orElse;
  }
}
