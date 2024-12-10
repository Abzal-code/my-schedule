import 'package:my_shedule/core/services/database/base_database.dart';
import 'package:sqflite/sqflite.dart';

class ScheduleDb extends BaseDatabase {
  ScheduleDb._privateConstructor();

  static final ScheduleDb instance = ScheduleDb._privateConstructor();

  @override
  Future<void> onCreate(Database db, int version) async {
    await db.execute('''
      CREATE TABLE schedule (
        id INTEGER PRIMARY KEY,
        title TEXT NOT NULL,
        description TEXT,
        eventDate TEXT NOT NULL,
        eventTime TEXT NOT NULL,
        isCompleted INTEGER NOT NULL DEFAULT 0
      )
    ''');
  }

  @override
  Future<void> onUpgrade(Database db, int oldVersion, int newVersion) async {
    if (oldVersion < newVersion) {
      await db.execute('ALTER TABLE schedule ADD COLUMN location TEXT');
    }
  }

  @override
  Future<void> onDowngrade(Database db, int oldVersion, int newVersion) async {
    if (oldVersion > newVersion) {
      await db.execute('ALTER TABLE schedule DROP COLUMN location');
    }
  }
}
