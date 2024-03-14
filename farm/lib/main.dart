import 'package:flutter/material.dart';
import 'package:farm/splash.dart';
import 'package:sqflite/sqflite.dart';
import 'package:path/path.dart';
import 'logindatabase.dart';
import 'loginmodel.dart';

void main() async {
  runApp(const MyApp());

  database = openDatabase(
    join(await getDatabasesPath(), "login.db"),
    version: 1,
    onCreate: (db, version) {
      db.execute('''CREATE TABLE Login(
        username TEXT,
        password INT
      )''');
    },
  );

  Login user1 = Login(username: "Rushi", password: "1234");
  insertData(user1);

  // print(await retData());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: SplashScreen(),
      debugShowCheckedModeBanner: false,
    );
  }
}
