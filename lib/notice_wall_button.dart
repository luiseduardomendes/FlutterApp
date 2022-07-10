import 'package:flutter/material.dart';

class NoticeWallButton extends StatefulWidget {
  const NoticeWallButton({Key? key}) : super(key: key);

  @override
  State<NoticeWallButton> createState() => _NoticeWallButtonState();
}

class _NoticeWallButtonState extends State<NoticeWallButton> {
  @override
  Widget build(BuildContext context) {
    return (ElevatedButton(
        onPressed: () {
          Navigator.of(context)
              .pushNamed('/home/notice_wall');
        },
        child: Column(
          children: const [
            Spacer(),
            Icon(Icons.notification_important_outlined, size: 50),
            Text('Mural de\navisos'),
            Spacer(),
          ],
        )));
  }
}
