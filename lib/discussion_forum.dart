import 'package:flutter/material.dart';
import 'message.dart';
import 'body_text.dart';
import 'datetime.dart';

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
        children: <Widget> [
          Message(
            Msg: BodyMessage(
              User('João Silva', 102),
              'Física',
              'Qual é a carga elementar do elétron?',
              DateTime(
                7, 8, 2022, 11, 45
              ),
            ),
          ),
          Message(
            Msg: BodyMessage(
              User('Claudiane Lesnik', 203),
              'Química',
              'Qual é a massa molar do gás oxigênio? Por favor estou desesperada!',
              DateTime(
                7, 8, 2022, 11, 45
              ),
            ),
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