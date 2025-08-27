import 'package:flutter/material.dart';

class RiverpodModel extends ChangeNotifier {
  bool islight;
  RiverpodModel({required this.islight});

  void changtheme({required bool newBool}) {
    islight = newBool;
    notifyListeners();
  }
}
