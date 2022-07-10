import 'datetime.dart';
import 'user.dart';

class BodyMessage {
  User user;
  String topic;
  String message;
  DateTime datetime;

  BodyMessage(this.user, this.topic, this.message, this.datetime);
}
