import 'package:farm/Login/loginmodel.dart';
import 'package:sqflite/sqflite.dart';

dynamic database;

Future<void> insertData(Login obj) async {
  final localDB = await database;

  await localDB.insert(
    'Sign',
    obj.loginMap(),
    conflictAlgorithm: ConflictAlgorithm.replace,
  );
}

Future<List<Login>> retData() async {
  final localDB = await database;
  List<Map<String, dynamic>> retList = await localDB.query("Sign");
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
