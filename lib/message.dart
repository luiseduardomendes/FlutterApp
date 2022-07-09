import 'package:flutter/material.dart';
import 'package:my_app/like_button.dart';
import 'package:my_app/comment_button.dart';
import 'package:my_app/body_text.dart';
import 'post.dart';

class Message extends StatelessWidget {
  Post post;
  Message({Key? key, required this.post}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.topCenter,
      child: Padding(
        padding: const EdgeInsets.all(8.0),

        child: Container(
          color: Theme.of(context).focusColor,
          child: Center(
              child: Padding(
                padding: const EdgeInsets.all(5.0),
                child: Column(
                  children: <Widget>[
                    Row(
                      children: <Widget>[
                        const Icon(
                          Icons.person,
                          size: 50,
                        ),
                        MessageTextBody(msg: post.bodyMessage)
                      ],
                    ),
                    Align(
                        alignment: Alignment.topCenter,
                        child: Like_comment_button(post: post,)
                    )
                  ],
                ),
              ),
          ),
        ),
      ),
    );
  }
}

class Like_comment_button extends StatefulWidget{
  Post post;
  Like_comment_button({Key? key, required this.post}) : super(key: key);

  @override
  State<StatefulWidget> createState() => Like_comment_button_state();
}

class Like_comment_button_state extends State<Like_comment_button> {
  @override
  Widget build(BuildContext context) {

    return Row(

      children: <Widget>[
        Padding(
          padding: const EdgeInsets.all(5.0),
          child: Like_button(post: widget.post,)
        ),
        const Spacer(),
        Padding(
          padding: const EdgeInsets.all(5.0),
          child: Comment_button()
        ),
      ],
    );
  }
}



class MessageTextBody extends StatelessWidget{
  BodyMessage msg;

  MessageTextBody({Key? key, required this.msg}) : super(key: key);

  @override
  Widget build(BuildContext context){
    return(
      Container(
        child: Expanded(
          child: Padding(
            padding: const EdgeInsets.all(15.0),
            child: Column(
              children: <Widget>[
                Align(
                  alignment: Alignment.topRight,
                  child: Text(
                    msg.topic,
                    style: Theme.of(context).textTheme.caption,
                  ),
                ),
                Align(
                  alignment: Alignment.topLeft,
                  child: Text(
                    msg.user.name,
                    style: Theme.of(context).textTheme.headline6,
                  ),
                ),
                Align(
                  alignment: Alignment.topLeft,
                  child: Text(
                    msg.message,
                    style: Theme.of(context).textTheme.bodyText1,
                  ),
                ),
                Align(
                  alignment: Alignment.bottomRight,
                  child: Text(
                    msg.datetime.getDate(),
                    style: Theme.of(context).textTheme.caption,
                  ),
                ),
              ],
            ),
          ),
        ),
      )
    );
  }
}