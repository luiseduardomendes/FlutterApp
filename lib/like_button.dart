import 'package:flutter/material.dart';

class Like_button extends StatefulWidget {
  const Like_button({Key? key, required this.liked}) : super(key: key);

  final bool liked;

  @override
  State<Like_button> createState() => _Like_button_state();
}

class _Like_button_state extends State<Like_button> {
  String text = 'Curtir';
  bool liked = false;
  Color color = Colors.white;

  @override
  Widget build(BuildContext context) {
    return Container(
      child: ElevatedButton(
        style: ButtonStyle(
          backgroundColor: MaterialStateProperty.all<Color>(
              Theme.of(context).colorScheme.background),
        ),
        onPressed: () {
          setState(() {
            if (liked) {
              liked = false;
              color = Theme.of(context).colorScheme.onPrimary;
              text = 'Like';
            } else {
              liked = true;
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
