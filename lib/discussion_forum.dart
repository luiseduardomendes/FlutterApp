import 'package:flutter/material.dart';
import 'package:my_app/main.dart';
import 'message.dart';
import 'body_text.dart';
import 'datetime.dart';
import 'post.dart';

class DiscussionForum extends StatefulWidget {
  const DiscussionForum({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  State<DiscussionForum> createState() => _DiscussionForumState();
}

class _DiscussionForumState extends State<DiscussionForum> {

  getData(){
    // TODO: implemente this function in python
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Column(
        children: <Widget> [
          Message(
            post: Post(
              BodyMessage(
                User(getName(102), 102),
                'Física',
                'Qual é a carga elementar do elétron?',
                DateTime(
                    7, 8, 2022, 11, 45
                ),
              ),
              User(getName(108), 108),
              105,
            ),
          ),
          Message(
            post: Post(
              BodyMessage(
                User(getName(108), 108),
                'Química',
                'Qual é a massa molar do gás oxigênio?',
                DateTime(
                    7, 8, 2022, 11, 45
                ),
              ),
              User(getName(108), 108),
              120,
            )

          ),
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