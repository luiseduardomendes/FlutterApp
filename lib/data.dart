import 'post.dart';
import 'body_text.dart';
import 'datetime.dart';
import 'user.dart';
import 'package:my_app/datetime.dart';
import 'package:my_app/user.dart';

class Database {

  List likedStatus = [];

  List usersRegistered = [];

  List usersPassword = [];

  Map posts = {
    'postId': <int>[],
    'userId': <int>[],
    'topic': <String>[],
    'msg': <String>[],
    'datetime': <DateTime>[],
  };

  Map postToShow = {
    0: <int>[],
  };
  
  Database(){

    likedStatus = [
      [101, true],
      [102, false],
    ];

    usersRegistered = [
      [0, ''],
      [101, 'João Silva'],
      [102, 'José Augusto'],
      [103, 'Claudiane Lesnik'],
      [104, 'Júlia Guterres'],
    ];

    usersPassword = [
      ['a', 103, '1'],
      ['b', 104, '2'],
      ['joao.silva@educar.br', 101, 'jpSilva2005'],
      ['jose.augusto@educar.br', 102, 'joseAug2007'],
    ];

    posts = {
      'postId': <int>[
        101,
        102,
      ],
      'userId': <int>[
        101,
        102,
      ],
      'topic': <String>[
        'Física',
        'Química',
      ],
      'msg': <String>[
        'Qual é a carga elementar do elétron?',
        'Qual é a massa molar do gás oxigênio?',
      ],
      'datetime': <DateTime>[
        getDatetime('7,8,2022,11,45'),
        getDatetime('7,8,2022,11,45'),
      ],
    };

    postToShow = {
      101: <int>[101,102,102],
      102: <int>[102,],
      103: <int>[101,102],
      104: <int>[101,102,101,102,],
      0: <int>[],
    };
  }

  void appendPost(int userId, String msg){
    int postId = posts['postId'][posts['postId'].length - 1] + 1;
    posts['postId'].add(postId);
    posts['userId'].add(userId);
    posts['topic'].add("Tópico");
    posts['msg'].add(msg);
    posts['datetime'].add(getDatetime('7,8,2022,11,45'));
    likedStatus.add([postId, false]);
  }

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
    return DateTime(int.parse(split[0]), int.parse(split[1]), int.parse(split[2]),
        int.parse(split[3]), int.parse(split[4]));
  }

  Post getPost(int postId, int viewerId) {
    for (var i = 0; i < posts.length; i ++) {
      if (posts['postId'][i] == postId) {
        return Post(
          BodyMessage(
            User(
              posts['userId'][i],
            ),
            posts['topic'][i],
            posts['msg'][i],
            posts['datetime'][i],
          ),
          User(viewerId),
          postId,
        );
      }
    }
    return Post(
        BodyMessage(User(0), '', '', DateTime(0, 0, 0, 0, 0)), User(0), 0);
  }

  List<int> getTimeline(int userId){
    return posts['postId'];
  }

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
}

