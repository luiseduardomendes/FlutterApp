import 'package:flutter/cupertino.dart';
import 'package:my_app/data.dart';

class AppController extends ChangeNotifier {
  static AppController instance = AppController();
  bool isThemeDark = true;
  Database db = Database();
  appendPost(int userId, String msg) {
    db.appendPost(userId, msg);
    notifyListeners();
  }

  checkLikedStatus(int postId) {
    for (var i = 0; i < db.likedStatus.length; i++) {
      if (db.likedStatus[i][0] == postId) {
        return db.likedStatus[i][1];
      }
    }
  }

  changeLikedState(int postId) {
    for (var i = 0; i < db.likedStatus.length; i++) {
      if (db.likedStatus[i][0] == postId) {
        db.likedStatus[i][1] =
            !(db.likedStatus[i][1]);
        return;
      }
    }
    notifyListeners();
  }

  changeTheme() {
    isThemeDark = !isThemeDark;
    notifyListeners();
  }
}
