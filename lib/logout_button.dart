import 'package:flutter/material.dart';

class LogoutButton extends StatefulWidget {
  const LogoutButton({Key? key}) : super(key: key);

  @override
  State<LogoutButton> createState() => _LogoutButtonState();
}

class _LogoutButtonState extends State<LogoutButton> {
  @override
  Widget build(BuildContext context) {
    return (ElevatedButton(
        onPressed: () {
          Navigator.of(context).pushNamed('/');
        },
        child: Column(
          children: const [
            Spacer(),
            Icon(Icons.logout, size: 50),
            Text('Log out'),
            Spacer(),
          ],
        )));
  }
}
