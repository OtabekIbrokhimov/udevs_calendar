import 'package:sqflite/sqflite.dart';

class SqlDatabase {
  void init() async {
    var db = await openDatabase('my_db.db');
  }
}
