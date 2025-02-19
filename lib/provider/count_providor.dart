import 'package:flutter/foundation.dart';

class CountProvidor with ChangeNotifier {
  int _count = 68;
  int get count => _count;
  void setCount() {
    _count++;
    notifyListeners();
  }
}
