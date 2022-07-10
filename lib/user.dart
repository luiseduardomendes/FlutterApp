import 'data_export.dart';

class User {
  String name = '';
  int id = 1;
  User(this.id) {
    name = getName(id);
  }
}
