import 'package:flutter/material.dart';
import 'package:flutter/foundation.dart';

class ExampleOneProvidor with ChangeNotifier {
  double _value = 1.0;
  double get value => _value;
  void setValue(double val) {
    _value = val;
    notifyListeners();
  }
}
