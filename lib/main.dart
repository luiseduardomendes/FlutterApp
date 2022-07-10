import 'package:flutter/material.dart';
import 'package:my_app/appWidget.dart';
import 'package:my_app/login_page.dart';
import 'package:my_app/post.dart';
import 'discussion_forum.dart';
import 'body_text.dart';
import 'datetime.dart';

var likedStatus = [
  [105, 1],
  [120, 0],
  [108, 0],
  [107, 1]
];

var usersRegistered = [
  [0, ''],
  [102, 'João Silva'],
  [108, 'José Augusto'],
  [203, 'Claudiane Lesnik'],
  [205, 'Júlia Guterres'],
];

var usersPassword = [
  ['a', 203, '1'],
  ['joao.silva@educar.br', 102, 'jpSilva2005'],
  ['jose.augusto@educar.br', 108, 'joseAug2007'],
];

int getEmailId (String email){
  for (var i = 0; i < usersPassword.length; i++) {
    if (usersPassword[i][0] == email) {
      return int.parse('${usersPassword[i][1]}');
    }
  }
  return -1;
}

String getPassword(int id){
  for (var i = 0; i < usersPassword.length; i++) {
    if (usersPassword[i][1] == id) {
      return '${usersPassword[i][2]}';
    }
  }
  return '';
}

var posts = [
  // postID, userID, topic, message, datetime(csv)
  [
    105,
    108,
  ],
  [
    102,
    108,
  ],
  ['Química', 'Química'],
  [
    'Qual é a carga elementar do elétron?',
    'Qual é a massa molar do gás oxigênio?'
  ],
  ['7,8,2022,11,45', '7,8,2022,11,45']
];

String getName(int id) {
  for (var i = 0; i < usersRegistered.length; i++) {
    if (usersRegistered[i][0] == id) {
      return '${usersRegistered[i][1]}';
    }
  }
  return '';
}

DateTime getDatetime(String str) {
  var split = str.split(',');
  return DateTime(
      int.parse(split[0]),
      int.parse(split[1]),
      int.parse(split[2]),
      int.parse(split[3]),
      int.parse(split[4])
  );
}

Post getPost(int postId, int viewerId) {
  for (var i = 0; i < usersRegistered.length; i++) {
    if (posts[0][i] == postId) {
      return Post(
        BodyMessage(
          User(int.parse('${posts[1][i]}'),),
          '${posts[2][i]}',
          '${posts[3][i]}',
          getDatetime('${posts[4][i]}'),
        ),
        User(viewerId),
        postId,
      );
    }
  }
  return Post(BodyMessage(User(0), '', '', DateTime(0,0,0,0,0)), User(0), 0);
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
        theme:
            ThemeData(primarySwatch: Colors.blue, brightness: Brightness.dark),
        //home: const MyHomePage(title: 'S.O.S. Help Studies'),
        //home: const DiscussionForum(title: 'Fórum de Dúvidas')
        home: AppWidget(),
    );

  }
}
