import 'dart:async';
import 'dart:html';
import 'package:ngdart/angular.dart';

@Injectable()
class InputFocusService {
  void setFocus(String id) {
    Timer(Duration(seconds: 1), () => querySelector(id)?.focus());
  }
}
