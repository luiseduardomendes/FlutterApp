import 'package:flutter/material.dart';
import 'package:my_app/Like_button.dart';
import 'package:my_app/comment_button.dart';
import 'package:my_app/body_text.dart';
import 'post.dart';

class MessageBox extends StatelessWidget {
  Post post;
  MessageBox({Key? key, required this.post}) : super(key: key);

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
                      child: LikeCommentButton(
                        post: post,
                    )
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

class LikeCommentButton extends StatefulWidget {
  Post post;
  LikeCommentButton({Key? key, required this.post}) : super(key: key);

  @override
  State<StatefulWidget> createState() => LikeCommentButtonState();
}

class LikeCommentButtonState extends State<LikeCommentButton> {
  @override
  Widget build(BuildContext context) {
    return Row(
      children: <Widget>[
        Padding(
            padding: const EdgeInsets.all(5.0),
            child: LikeButton(
              post: widget.post,
            )),
        const Spacer(),
        const Padding(
          padding: EdgeInsets.all(5.0),
          child: CommentButton(),
        ),
      ],
    );
  }
}

class MessageTextBody extends StatelessWidget {
  BodyMessage msg;

  MessageTextBody({Key? key, required this.msg}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return (Expanded(
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
    ));
  }
}
