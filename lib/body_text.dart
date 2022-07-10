import 'package:flutter/material.dart';
import 'package:my_app/main.dart';
import 'datetime.dart';
class User{
  String name = '';
  int id = 1;
  User(this.id){
    name = getName(id);
  }
}

class BodyMessage{
  User user;
  String topic;
  String message;
  DateTime datetime;

  BodyMessage(this.user, this.topic, this.message, this.datetime);
}
