import 'package:flutter/material.dart';
import 'package:my_app/main.dart';
import 'body_text.dart';
import 'dart:io';
import 'main.dart';


class Post{
  BodyMessage bodyMessage;
  User userViewer;
  int postId;
  Post(this.bodyMessage, this.userViewer, this.postId);

  checkLikedStatus(){
    for (var i = 0; i < likedStatus.length; i ++){
      if (likedStatus[i][0] == postId){
        if (likedStatus[i][1] == 1){
          return true;
        }
        else{
          return false;
        }
      }
    }
  }
  changeLikedState(){
    for (var i = 0; i < likedStatus.length; i ++){
      if (likedStatus[i][0] == postId){
        if (likedStatus[i][1] == 1){
          likedStatus[i][1] = 0;
          return;
        }
        else{
          likedStatus[i][1] = 1;
          return;
        }
      }
    }
  }

  _checkLikedStatus(){
    var filename = 'database.csv';
    final lines = File(filename).readAsLinesSync();

    for (var line in lines){
      final values = line.split(',');
      if (int.parse(values[0]) == postId){
        if (int.parse(values[1]) == 1){
          return true;
        }
        else{
          return false;
        }
      }
    }
  }
}