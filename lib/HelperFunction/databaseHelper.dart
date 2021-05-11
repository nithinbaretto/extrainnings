import 'dart:io';

import 'package:path_provider/path_provider.dart';
import 'package:sqflite/sqflite.dart';
import 'package:path/path.dart';

class DatabaseHelper {
  static final _dbname = "ExtraInnings1";
  static final _dbversion = 1;
  static final _tablename = "TeamsDetails1";
  static final _tablename2 = "PlayersNamee";
  static final _tablename3 = "StartMatch";
  static final columId = "_id";
  static final columName1 = "Hostname";
  static final columName2 = "Visitorname";
  static final columName3 = "TossBy";
  static final columName4 = "OptedTo";
  static final columName5 = "Overs";
  static final columTeamId = "_id2";
  static final columName6 = "Striker";
  static final columName7 = "NonStriker";
  static final columName8 = "Bowler";
  static final columName9 = "Score";
  static final columName10 = "over";
  static final columName11 = "CurrentRunRate";
  static final columName12 = "StrikerRuns";
  static final columName13 = "StrikerBallsFaced";
  static final columName14 = "StrikerFours";
  static final columName15 = "StrikerSixs";
  static final columName16 = "StrikerFours";
  static final columName17 = "StrikerStrikeRate";
  static final columName18 = "NonStrikerRuns";
  static final columName19 = "NonStrikerBallsFaced";
  static final columName20 = "NonStrikerFours";
  static final columName21 = "NonStrikerSixs";
  static final columName22 = "NonStrikerFours";
  static final columName23 = "NonStrikerStrikeRate";
  static final columName24 = "BowlerOver";
  static final columName25 = "BowlerRuns";
  static final columName26 = "BowlerWicket";
  static final columName27 = "BowlerER";
  static final columName28 = "StrikerFours";
  static final columName29 = "StrikerStrikeRate";

  //making it a singleton class
  DatabaseHelper._privateConstructor();
  static final DatabaseHelper instance = DatabaseHelper._privateConstructor();
  static Database _database;

  Future<Database> get database async {
    if (_database != null) {
      print("Already have a table");
      print(_database);
      return _database;
    }
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
        CREATE TABLE $_tablename2(
          $columId INTEGER PRIMARY KEY,
          $columTeamId TEXT NOT NULL,
          $columName6 TEXT NOT NULL,
          $columName7 TEXT NOT NULL,
          $columName8 TEXT NOT NULL
          )
          ''');
    await db.execute('''
          CREATE TABLE $_tablename(
            $columId INTEGER PRIMARY KEY,
            $columName1 TEXT NOT NULL,
            $columName2 TEXT NOT NULL,
            $columName3 TEXT NOT NULL,
            $columName4 TEXT NOT NULL,
            $columName5 INTEGER NOT NULL
            )
            ''');
  }

  Future<int> insert(Map<String, dynamic> row) async {
    Database db = await instance.database;
    return await db.insert(_tablename, row);
  }

  Future<int> insertPlayersName(Map<String, dynamic> row) async {
    print(_database);
    print(row);
    Database db = await instance.database;
    return await db.insert(_tablename2, row);
  }

  Future<List<Map<String, dynamic>>> queryAll() async {
    Database db = await instance.database;
    return await db.query(_tablename);
  }

  Future<List<Map<String, dynamic>>> queryAllPalyersName() async {
    Database db = await instance.database;
    return await db.query(_tablename2);
  }

  Future<int> update(Map<String, dynamic> row) async {
    Database db = await instance.database;
    int id = row[columId];
    return await db
        .update(_tablename, row, where: '$columId=?', whereArgs: [id]);
  }
}
