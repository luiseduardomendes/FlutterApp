import 'package:my_app/data_export.dart';
import 'package:my_app/datetime.dart';

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
  ['b', 205, '2'],
  ['joao.silva@educar.br', 102, 'jpSilva2005'],
  ['jose.augusto@educar.br', 108, 'joseAug2007'],
];

Map posts = {
  'postId': <int>[
    105,
    108,
  ],
  'userId': <int>[
    102,
    108,
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

Map postToShow = {
  102: <int>[105,108,105],
  108: <int>[108,],
  203: <int>[105,108],
  205: <int>[105,108,105,108,],
  0: <int>[],
};