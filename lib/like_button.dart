import 'package:flutter/material.dart';
import 'post.dart';

class Like_button extends StatefulWidget {
  Post post;
  Like_button({Key? key, required this.post}) : super(key: key);


  @override
  State<Like_button> createState() => _Like_button_state();
}

class _Like_button_state extends State<Like_button> {
  late String text;
  late Color color;

  @override
  Widget build(BuildContext context) {
    if (widget.post.checkLikedStatus()) {
      color = Theme.of(context).colorScheme.primary;
      text = 'Curtido';
    } else {
      color = Theme.of(context).colorScheme.onPrimary;
      text = 'Curtir';
    }
    return Container(
      child: ElevatedButton(
        style: ButtonStyle(
          backgroundColor: MaterialStateProperty.all<Color>(
              Theme.of(context).colorScheme.background),
        ),
        onPressed: () {
          setState(() {
            if (widget.post.checkLikedStatus()) {
              widget.post.changeLikedState();
              color = Theme.of(context).colorScheme.onPrimary;
              text = 'Curtir';
            } else {
              widget.post.changeLikedState();
              color = Theme.of(context).colorScheme.primary;
              text = 'Curtido';
            }
          });
        },
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.all(5.0),
              child:Icon(
                Icons.arrow_upward,
                color: color,
                ),
            ),
            Padding(
              padding: const EdgeInsets.all(5.0),
              child:Text(
                text,
                style: TextStyle(
                color: color,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
