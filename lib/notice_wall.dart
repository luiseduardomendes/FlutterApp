import 'package:flutter/material.dart';
import 'package:my_app/app_controller.dart';

class NoticeWall extends StatefulWidget {
  const NoticeWall({Key? key}) : super(key: key);

  @override
  State<NoticeWall> createState() => _NoticeWallState();
}

class _NoticeWallState extends State<NoticeWall> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('NoticeWall')),
      body: Container(),
    );
  }
}
