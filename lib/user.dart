import 'app_controller.dart';

class User {
  String name = '';
  int id = 1;
  User(this.id) {
    name = AppController.instance.db.getName(id);
  }
}
