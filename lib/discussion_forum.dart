import 'package:flutter/material.dart';
import 'package:my_app/main.dart';
import 'message.dart';

class DiscussionForum extends StatefulWidget {
  const DiscussionForum({Key? key}) : super(key: key);
  @override
  State<DiscussionForum> createState() => _DiscussionForumState();
}
getData(){
  // TODO: implemente this function in python
  return [
    105, 108, 108, 108, 105, 105
  ];
}
class _DiscussionForumState extends State<DiscussionForum> {


  var postIds = getData();
  var userViewer = 108;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Fórum de Discussões'),
      ),
      body: ListView(
        children: <Widget> [
          for (var i in postIds)
            Message(post: getPost(i,userViewer),),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        backgroundColor: Theme.of(context).focusColor,
        child: const Icon(Icons.add),
        onPressed: () {
          setState((){});
        }
      ),
    );
  }
}