import 'package:flutter/material.dart';

class BottonNavigatorPr extends ChangeNotifier {
  int searchPage = 0;
  int? currentIndex = 0;

  void saxifaOzgar(int v) {
    searchPage = 0;
    currentIndex = v;
    notifyListeners();
  }

void showSearchPage(int v) {
    searchPage = v;
    notifyListeners();
  }
}


