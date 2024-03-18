import 'dart:developer';

import 'package:farm/loginmodel.dart';
import 'package:sqflite/sqflite.dart';
import 'package:sqflite/sql.dart';
import 'package:sqflite/sqlite_api.dart';

dynamic database;
//Login Database.
Future<void> insertData(Login obj) async {
  final localDB = await database;

  await localDB.insert(
    'Sign',
    obj.loginMap(),
    conflictAlgorithm: ConflictAlgorithm.replace,
  );
}

Future<List> retData() async {
  final localDB = await database;
  List retList = await localDB.query("Sign");
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

Future<void> insertTomatoData(Tomato obj) async {
  final localDB = await database;
  await localDB.insert(
    'Tomato',
    obj.tomatoMap(),
    conflictAlgorithm: ConflictAlgorithm.replace,
  );
}

//Tomato database.
Future<List<Tomato>> retTomatoData() async {
  final localDB = await database;

  List retList = await localDB.query('Tomato');
  log("IN RET TOMATO DATA");
  log(retList.toString());
  return List.generate(
    retList.length,
    (i) {
      return Tomato(
        orderId: retList[i]['orderId'],
        name: retList[i]['name'],
        quantity: retList[i]['quantity'],
        address: retList[i]['address'],
      );
    },
  );
}

//Lady finger database.
Future<void> insertLady(LadyfingerModel obj) async {
  final localDB = await database;

  await localDB.insert(
    'Ladyfinger',
    obj.ladyMap(),
    conflictAlgorithm: ConflictAlgorithm.replace,
  );
}

Future<List<LadyfingerModel>> retLadyData() async {
  final localDB = await database;

  List retLadyList = await localDB.query('Ladyfinger');
  return List.generate(
    retLadyList.length,
    (i) {
      return LadyfingerModel(
        orderId: retLadyList[i]['orderId'],
        custname: retLadyList[i]['custname'],
        quantity: retLadyList[i]['quantity'],
        address: retLadyList[i]['address'],
      );
    },
  );
}

//pineapple database.
Future<void> insertPin(PineAppleModel obj) async {
  final localDB = await database;

  await localDB.insert(
    'Pineapple',
    obj.pineappleMap(),
    conflictAlgorithm: ConflictAlgorithm.replace,
  );
}

Future<List<PineAppleModel>> retPinData() async {
  final localDB = await database;
  List<Map<String, dynamic>> retPinList = await localDB.query('Pineapple');
  return List.generate(retPinList.length, (i) {
    return PineAppleModel(
        orderId: retPinList[i]['orderId'],
        custname: retPinList[i]['custname'],
        quantity: retPinList[i]['quantity'],
        address: retPinList[i]['address']);
  });
}

//banana Database
Future<void> insertBanana(BananaModel obj) async {
  final localDB = await database;

  await localDB.insert(
    'Banana',
    obj.bananaMap(),
    conflictAlgorithm: ConflictAlgorithm.replace,
  );
}

Future<List<BananaModel>> retBananaData() async {
  final localDB = await database;

  List<Map<String, dynamic>> retBananaList = await localDB.query('Banana');
  return List.generate(
    retBananaList.length,
    (i) {
      return BananaModel(
          orderId: retBananaList[i]['orderId'],
          custname: retBananaList[i]['custname'],
          quantity: retBananaList[i]['quantity'],
          address: retBananaList[i]['address']);
    },
  );
}

Future<void> updateBananaData(BananaModel obj) async {
  final localDB = await database;

  await localDB.update(
    'Banana',
    obj.bananaMap(),
    where: 'orderId=?',
    whereArgs: [obj.orderId],
  );
}

Future<void> deleteBananaData(BananaModel obj) async {
  final localDB = await database;
  await localDB.delete(
    'Banana',
    obj.bananaMap(),
    where: 'orderId=?',
    whereArgs: [obj.orderId],
  );
}
