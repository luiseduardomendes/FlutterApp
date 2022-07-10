import 'body_text.dart';
import 'user.dart';
import 'data.dart';

class Post {
  BodyMessage bodyMessage;
  User userViewer;
  int postId;
  Post(this.bodyMessage, this.userViewer, this.postId);

  checkLikedStatus() {
    for (var i = 0; i < likedStatus.length; i++) {
      if (likedStatus[i][0] == postId) {
        if (likedStatus[i][1] == 1) {
          return true;
        } else {
          return false;
        }
      }
    }
  }

  changeLikedState() {
    for (var i = 0; i < likedStatus.length; i++) {
      if (likedStatus[i][0] == postId) {
        if (likedStatus[i][1] == 1) {
          likedStatus[i][1] = 0;
          return;
        } else {
          likedStatus[i][1] = 1;
          return;
        }
      }
    }
  }
}
