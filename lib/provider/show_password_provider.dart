import 'package:flutter/material.dart';

class ShowPasswordProvider extends ChangeNotifier {
  bool show = true;

  void showPasswordProwider() {
    show = !show;
    notifyListeners();
  }
}
