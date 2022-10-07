import 'package:flutter/material.dart';

class HomeViewModel extends ChangeNotifier {
  int _counter = 0;

  int get counter => _counter;

  void incrementCounter() {
    _counter++;
    notifyListeners();
  }

  void decrementCounter() {
    if (_counter <= 0) {
    } else {
      _counter--;
      notifyListeners();
    }
  }
}
