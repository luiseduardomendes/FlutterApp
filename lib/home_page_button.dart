import 'package:flutter/material.dart';

class HomePageButton extends StatefulWidget {
  final String text;
  final IconData icon;
  final String navigator;
  final arguments;
  final double size;

  const HomePageButton({Key? key, required this.text,
    required this.icon,
    required this.navigator,
    required this.arguments,
    required this.size,
  }) : super(key: key);

  @override
  State<HomePageButton> createState() => _HomePageButtonState();
}

class _HomePageButtonState extends State<HomePageButton> {
  @override
  Widget build(BuildContext context) {
    return (ElevatedButton(
        onPressed: () {
          Navigator.of(context).pushNamed(widget.navigator, arguments: widget.arguments);
        },
        style: ButtonStyle(
            shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(widget.size/2),
                )
            )
        ),

        child: Column(
          children: [
            const Spacer(),
            Icon(widget.icon, size: widget.size/3),
            Text(
              widget.text,
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: widget.size/10
              ),
            ),
            const Spacer(),
          ],
        )));
  }
}
