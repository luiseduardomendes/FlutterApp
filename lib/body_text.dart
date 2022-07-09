import 'package:flutter/material.dart';
import 'datetime.dart';
class User{
  String name;
  int id;
  User(this.name, this.id);
}

class BodyMessage{
  User user;
  String topic;
  String message;
  DateTime datetime;

  BodyMessage(this.user, this.topic, this.message, this.datetime);
}
