import 'package:sqflite/sqflite.dart';

class AlbaTrakDB {
  String dbPath;
  Database database;

  setup() async {
    dbPath = await getDatabasesPath();
    await _initDb();
  }

  _delete() async {
    assert(dbPath != null);
    await deleteDatabase(dbPath);
  }

  _initDb() async {
    assert(dbPath != null);

    database = await openDatabase(dbPath, version: 1,
        onCreate: (Database db, int version) async {
      // When creating the db, create the table
      await db.execute(
          'CREATE TABLE Test (id INTEGER PRIMARY KEY, name TEXT, value INTEGER, num REAL)');
    });
  }
}
