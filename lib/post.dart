import 'app_controller.dart';
import 'body_text.dart';
import 'user.dart';

class Post {
  BodyMessage bodyMessage;
  User userViewer;
  int postId;
  Post(this.bodyMessage, this.userViewer, this.postId);


}
