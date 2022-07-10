import 'package:flutter/material.dart';

class DiscussionForumButton extends StatefulWidget {
  int userId;
  DiscussionForumButton({Key? key, required this.userId})
      : super(key: key);

  @override
  State<DiscussionForumButton> createState() => _DiscussionForumButtonState();
}

class _DiscussionForumButtonState extends State<DiscussionForumButton> {
  @override
  Widget build(BuildContext context) {
    return (ElevatedButton(
        onPressed: () {
          Navigator.of(context)
              .pushNamed('/home/discussion', arguments: widget.userId);
        },
        child: Column(
          children: const [
            Spacer(),
            Icon(Icons.forum, size: 50),
            Text('Fórum de\ndiscussões'),
            Spacer(),
          ],
        )));
  }
}
