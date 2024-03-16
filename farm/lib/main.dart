import 'package:flutter/material.dart';
// import 'package:farm/splash.dart';
import 'package:sqflite/sqflite.dart';
import 'package:path/path.dart';
import 'logindatabase.dart';
import 'home.dart';
// import 'loginmodel.dart';

void main() async {
  runApp(const MyApp());

  database = openDatabase(
    join(await getDatabasesPath(), "login1DB.db"),
    version: 1,
    onCreate: (db, version) async {
      await db.execute('''CREATE TABLE Sign(
        name TEXT,
        phone TEXT PRIMARY KEY,
        username TEXT,
        password TEXT
      )''');
    },
  );
  print("Print data");
  print(await retData());
}

// print(await retData());
class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: HomePage(),
      // home: SplashScreen(),
      debugShowCheckedModeBanner: false,
    );
  }
}
