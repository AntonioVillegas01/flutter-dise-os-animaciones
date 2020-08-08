import 'package:flutter/material.dart';


class SliderModel with ChangeNotifier{
  double _currentPage = 0;
  double get currentPage => this._currentPage;

  set currentPage(double currenPage){
    this._currentPage  = currenPage;
    notifyListeners();
  }
}