import 'package:flutter/material.dart';
import 'package:my_app/message.dart';
import 'package:my_app/data_export.dart';

class DiscussionForum extends StatefulWidget {
  var viewerId = 0;
  DiscussionForum({Key? key}) : super(key: key);

  @override
  State<DiscussionForum> createState() => _DiscussionForumState();
}

class _DiscussionForumState extends State<DiscussionForum> {

  @override
  Widget build(BuildContext context) {
    int viewerId = ModalRoute.of(context)?.settings.arguments as int;
    var posts = getTimeline(viewerId);
    var timeline = <Widget>[];
    for (var post in posts){
      timeline.add(Message(
        post: getPost(post, viewerId),
      ));
    }
    return Scaffold(
      appBar: AppBar(
        title: const Text('Fórum de Discussões'),
      ),
      body: ListView(
        children: timeline,
      ),
      floatingActionButton: FloatingActionButton(
          backgroundColor: Theme.of(context).focusColor,
          child: const Icon(Icons.add),
          onPressed: () {
            setState(() {});
          }),
    );
  }
}
