import 'package:flutter/cupertino.dart';

class AppController extends ChangeNotifier {
  static AppController instance = AppController();
  bool isThemeDark = true;
  changeTheme() {
    isThemeDark = !isThemeDark;
    notifyListeners();
  }
}