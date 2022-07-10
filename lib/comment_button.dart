import 'package:flutter/material.dart';

class CommentButton extends StatefulWidget {
  const CommentButton({Key? key}) : super(key: key);

  @override
  State<CommentButton> createState() => _CommentButtonState();
}

class _CommentButtonState extends State<CommentButton> {
  @override
  Widget build(BuildContext context) {
    return (ElevatedButton(
      style: ButtonStyle(
        backgroundColor: MaterialStateProperty.all<Color>(
            Theme.of(context).colorScheme.background),
      ),
      onPressed: () {
        setState(() {});
      },
      child: Row(
        mainAxisSize: MainAxisSize.min,
        children: <Widget>[
          Padding(
            padding: const EdgeInsets.all(5.0),
            child: Icon(
              Icons.mode_comment_outlined,
              color: Theme.of(context).colorScheme.onPrimary,
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(5.0),
            child: Text(
              'Comentar',
              style: TextStyle(
                color: Theme.of(context).colorScheme.onPrimary,
              ),
            ),
          ),
        ],
      ),
    ));
  }
}
