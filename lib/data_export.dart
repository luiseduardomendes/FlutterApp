import 'data.dart';
import 'post.dart';
import 'body_text.dart';
import 'datetime.dart';
import 'user.dart';

String getName(int id) {
  for (var i = 0; i < usersRegistered.length; i++) {
    if (usersRegistered[i][0] == id) {
      return '${usersRegistered[i][1]}';
    }
  }
  return '';
}

DateTime getDatetime(String str) {
  var split = str.split(',');
  return DateTime(int.parse(split[0]), int.parse(split[1]), int.parse(split[2]),
      int.parse(split[3]), int.parse(split[4]));
}

Post getPost(int postId, int viewerId) {
  for (var i = 0; i < posts.length; i ++) {
    if (posts['postId'][i] == postId) {
      return Post(
        BodyMessage(
          User(
            posts['userId'][i],
          ),
          posts['topic'][i],
          posts['msg'][i],
          posts['datetime'][i],
        ),
        User(viewerId),
        postId,
      );
    }
  }
  return Post(
      BodyMessage(User(0), '', '', DateTime(0, 0, 0, 0, 0)), User(0), 0);
}

List<int> getTimeline(int userId){
  return postToShow[userId];
}

int getEmailId (String email){
  for (var i = 0; i < usersPassword.length; i++) {
    if (usersPassword[i][0] == email) {
      return int.parse('${usersPassword[i][1]}');
    }
  }
  return -1;
}

String getPassword(int id){
  for (var i = 0; i < usersPassword.length; i++) {
    if (usersPassword[i][1] == id) {
      return '${usersPassword[i][2]}';
    }
  }
  return '';
}