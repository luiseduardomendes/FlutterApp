import 'package:flutter/material.dart';
import 'package:my_app/discussion_forum.dart';
import 'package:my_app/login_page.dart';
import 'home_page.dart';

class AppWidget extends StatelessWidget {
  const AppWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        primarySwatch: Colors.blue,
        brightness: Brightness.dark,
      ),
      routes: {
        '/': (context) => LoginPage(),
        '/home': (context) => MyHomePage(),
        '/home/discussion': (context) => DiscussionForum()
      },
    );
  }
}
