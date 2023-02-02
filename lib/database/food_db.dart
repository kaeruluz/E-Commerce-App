import 'dart:async';

import 'package:flutter/widgets.dart';
import 'package:path/path.dart';
import 'package:sqflite/sqflite.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  final database = openDatabase(
    join(await getDatabasesPath(), 'food_detail.db'),
    onCreate: (db, version) {
      return db.execute(
        'CREATE TABLE foods(name STRING PRIMARY KEY, quantity INTEGER, date DOUBLE , time INTEGER)',
      );
    },
    version: 1,
  );

  Future<void> insertFood(FoodDb foodDb) async {
    final db = await database;

    await db.insert(
      'foods',
      foodDb.toMap(),
      conflictAlgorithm: ConflictAlgorithm.replace,
    );
  }

  Future<List<FoodDb>> food() async {
    final db = await database;

    final List<Map<String, dynamic>> maps = await db.query('food');

    return List.generate(maps.length, (i) {
      return FoodDb(
        name: maps[i]['name'],
        quantity: maps[i]['quantity'],
        date: maps[i]['date'],
        time: maps[i]['time'],
      );
    });
  }

  Future<void> updateFood(FoodDb foodDb) async {
    final db = await database;

    await db.update(
      'food',
      foodDb.toMap(),
      where: 'name = ?',
      whereArgs: [foodDb.name],
    );
  }

  Future<void> deleteFood(String name) async {
    final db = await database;

    await db.delete(
      'food',
      where: 'name = ?',
      whereArgs: [name],
    );
  }

  var fido = const FoodDb(
    name: 'Fido',
    quantity: 5,
    date: 20 / 01 / 2023,
    time: 12 - 45 - 50,
  );

  await insertFood(fido);

  print(await food());

  fido = FoodDb(
      name: fido.name,
      quantity: fido.quantity + 7,
      date: fido.date,
      time: fido.time);
  await updateFood(fido);

  print(await food());

  // await deleteFood(fido.quantity);

  //print(await food());
}

class FoodDb {
  final String name;
  final int quantity;
  final double date;
  final int time;

  const FoodDb(
      {required this.name,
      required this.quantity,
      required this.date,
      required this.time});

  Map<String, dynamic> toMap() {
    return {
      'name': name,
      'quantity': quantity,
      'date': date,
      'time': time,
    };
  }

  @override
  String toString() {
    return 'Food{ name: $name, quantity : $quantity, date : $date, time: $time}';
  }
}
