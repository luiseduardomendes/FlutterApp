import 'package:flutter/material.dart';
import 'body_text.dart';

class Post{
  BodyMessage bodyMessage;
  User userViewer;
  int postId;
  Post(this.bodyMessage, this.userViewer, this.postId);
}