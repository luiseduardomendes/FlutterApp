import 'package:flutter/material.dart';
import 'discussion_forum.dart';

var likedStatus = [
  [105, 1],
  [120,1],
  [108,1],
  [107,1]
];

var usersRegistered = [
  [102, 'João Silva'],
  [108, 'José Augusto'],
  [203, 'Claudiane Lesnik']
];

String getName(int id){
  for (var i = 0; i < usersRegistered.length; i ++){
    if (usersRegistered[i][0] == id){
      return '${usersRegistered[i][1]}';
    }
  }
  return '';
}

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



