import 'package:flutter/material.dart';
import 'message.dart';

class DiscussionForum extends StatefulWidget {
  const DiscussionForum({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  State<DiscussionForum> createState() => _DiscussionForumState();
}

class _DiscussionForumState extends State<DiscussionForum> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Column(
        children: const <Widget> [
          Message()
        ],
      ),
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.add),
        backgroundColor: Theme.of(context).focusColor,
        onPressed: () {
          setState((){print('Hello, World');});
        }
      ),

    );
  }
}