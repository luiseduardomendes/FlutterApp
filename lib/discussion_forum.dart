import 'package:flutter/material.dart';
import 'package:my_app/app_controller.dart';
import 'package:my_app/message.dart';
import 'package:my_app/data.dart';

class DiscussionForum extends StatefulWidget {
  var viewerId = 0;
  DiscussionForum({Key? key}) : super(key: key);

  @override
  State<DiscussionForum> createState() => _DiscussionForumState();
}

class _DiscussionForumState extends State<DiscussionForum> {
  TextEditingController customController = TextEditingController();

  Future createMessageDialog(BuildContext context){
    return showDialog(context: context, builder: (context){
      return AlertDialog(
        title: const Text("Digite sua mensagem..."),
        content: TextField(
          controller: customController,
        ),
        actions: <Widget>[
          ElevatedButton(
            onPressed: () {
              Navigator.of(context).pop(customController.text.toString());
              customController.clear();
            },
            child: const Text("Publicar",),
          )
        ],
      );
    });
  }



  @override
  Widget build(BuildContext context) {
    int viewerId = ModalRoute.of(context)?.settings.arguments as int;
    var posts = AppController.instance.db.getTimeline(viewerId);
    var timeline = <Widget>[];
    for (var post in posts){
      timeline.add(MessageBox(
        post: AppController.instance.db.getPost(post, viewerId),
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
          setState(() {
            createMessageDialog(context).then((onValue){
              AppController.instance.db.appendPost(viewerId, onValue);
            });
          });
        }
      ),
    );
  }
}
