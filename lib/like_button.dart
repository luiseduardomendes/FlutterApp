import 'package:flutter/material.dart';
import 'package:my_app/app_controller.dart';
import 'package:my_app/data.dart';
import 'post.dart';

class LikeButton extends StatefulWidget {
  Post post;
  LikeButton({Key? key, required this.post}) : super(key: key);

  @override
  State<LikeButton> createState() => LikeButtonState();
}

class LikeButtonState extends State<LikeButton> {
  late String text;
  late Color color;

  @override
  Widget build(BuildContext context) {
    int postId = widget.post.postId;
    if (AppController.instance.checkLikedStatus(postId)) {
      color = Theme.of(context).colorScheme.primary;
      text = 'Curtido';
    } else {
      color = Theme.of(context).colorScheme.onPrimary;
      text = 'Curtir';
    }
    return ElevatedButton(
      style: ButtonStyle(
        backgroundColor: MaterialStateProperty.all<Color>(
            Theme.of(context).colorScheme.background),
      ),
      onPressed: () {
        setState(() {
          if (AppController.instance.checkLikedStatus(postId)) {
            color = Theme.of(context).colorScheme.onPrimary;
            text = 'Curtir';
          } else {
            color = Theme.of(context).colorScheme.primary;
            text = 'Curtido';
          }
          AppController.instance.changeLikedState(postId);
        });
      },
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          Padding(
            padding: const EdgeInsets.all(5.0),
            child: Icon(
              Icons.arrow_upward,
              color: color,
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(5.0),
            child: Text(
              text,
              style: TextStyle(
                color: color,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
