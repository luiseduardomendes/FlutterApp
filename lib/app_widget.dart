import 'package:flutter/material.dart';
import 'package:my_app/app_controller.dart';
import 'package:my_app/discussion_forum.dart';
import 'package:my_app/login_page.dart';
import 'package:my_app/notice_wall.dart';
import 'package:my_app/settings.dart';
import 'home_page.dart';

class AppWidget extends StatelessWidget {
  const AppWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AnimatedBuilder(
      animation: AppController.instance,
      builder: (context, child) { 
        return MaterialApp(
          theme: ThemeData(
            primarySwatch: Colors.blue,
            brightness: AppController.instance.isThemeDark ? Brightness.dark : Brightness.light,
          ),
          routes: {
            '/': (context) => const LoginPage(),
            '/home': (context) => HomePage(),
            '/home/discussion': (context) => DiscussionForum(),
            '/home/notice_wall': (context) => const NoticeWall(),
            '/home/settings': (context) => const Settings(),
            '/home/create_account': (context) => const LoginPage(),
            '/home/password_recover': (context) => const LoginPage(),
          },
        );
      },
    );
  }
}
