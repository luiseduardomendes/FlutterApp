import 'package:flutter/material.dart';
import 'discussion_forum.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        brightness: Brightness.dark
      ),
      //home: const MyHomePage(title: 'S.O.S. Help Studies'),
      home: const DiscussionForum(title: 'Fórum de Dúvidas')
    );
  }
}



