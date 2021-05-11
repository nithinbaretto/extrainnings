import 'dart:io';

import 'package:path_provider/path_provider.dart';
import 'package:sqflite/sqflite.dart';
import 'package:path/path.dart';

class PlayerName {
  static final _dbname = "ExtraInnings";
  static final _dbversion = 1;
  static final _tablename = "PlayersName4";
  static final columId = "_id";
  static final columTeamId = "_id2";
  static final columName1 = "Striker";
  static final columName2 = "NonStriker";
  static final columName3 = "Bowler";

  //making it a singleton class
  PlayerName._privateConstructor();
  static final PlayerName instance = PlayerName._privateConstructor();
  static Database _database;

  Future<Database> get database async {
    _database = await _initiateDatabase();
    print(_database);
    print("don't have a table");
    return _database;
  }

  _initiateDatabase() async {
    print("called");
    Directory directory = await getApplicationDocumentsDirectory();
    String path = join(directory.path, _dbname);
    return await openDatabase(path, version: _dbversion, onCreate: _onCreatef);
  }

  Future _onCreatef(Database db, int version) async {
    print("called2");
    await db.execute('''
        CREATE TABLE IF NOT EXISTS $_tablename(
          $columId INTEGER PRIMARY KEY,
          $columTeamId INTEGER NOT NULL,
          $columName1 TEXT NOT NULL,
          $columName2 TEXT NOT NULL,
          $columName3 TEXT NOT NULL
          )
          ''');
  }

  Future<int> insert(Map<String, dynamic> row) async {
    print(_database);
    print(row);
    Database db = await instance.database;
    return await db.insert(_tablename, row);
  }

  Future<List<Map<String, dynamic>>> queryAll() async {
    Database db = await instance.database;
    return await db.query(_tablename);
  }

  // Future<int> update(Map<String, dynamic> row) async {
  //   Database db = await instance.database;
  //   int id = row[columId];
  //   return await db
  //       .update(_tablename, row, where: '$columId=?', whereArgs: [id]);
  // }
}
