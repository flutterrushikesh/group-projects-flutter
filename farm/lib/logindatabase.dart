import 'package:farm/loginmodel.dart';
import 'package:sqflite/sqflite.dart';

dynamic database;

Future<void> insertData(Login obj) async {
  final localDB = await database;

  await localDB.insert(
    'Login',
    obj.loginMap(),
    conflictAlgorithm: ConflictAlgorithm.replace,
  );
}

Future<List<Login>> retData() async {
  final localDB = await database;
  List<Map<String, dynamic>> retList = await localDB.query("Login");
  return List.generate(
    retList.length,
    (i) {
      return Login(
        name: retList[i]['name'],
        phone: retList[i]['phone'],
        username: retList[i]['username'],
        password: retList[i]['password'],
      );
    },
  );
}
