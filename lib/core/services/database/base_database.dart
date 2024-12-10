import 'package:sqflite/sqflite.dart';
import 'package:path/path.dart';

typedef Dictionary = Map<String, dynamic>;

/// Abstract class for managing the SQLite database
abstract class BaseDatabase {
  static const String dbName = 'app_database.db';
  static const int dbVersion = 1;

  Database? _database;

  /// Getter for the database instance
  Future<Database> get database async {
    if (_database != null) return _database!;
    _database = await initDatabase();
    return _database!;
  }

  /// Initialize the database
  Future<Database> initDatabase() async {
    final dbPath = await getDatabasesPath();
    final path = join(dbPath, dbName);

    return await openDatabase(
      path,
      version: dbVersion,
      onCreate: onCreate,
      onUpgrade: onUpgrade,
      onDowngrade: onDowngrade,
    );
  }

  /// Create the database schema
  Future<void> onCreate(Database db, int version);

  /// Upgrade the database schema when version increases
  Future<void> onUpgrade(Database db, int oldVersion, int newVersion);

  /// Downgrade the database schema when version decreases
  Future<void> onDowngrade(Database db, int oldVersion, int newVersion);

  /// Close the database connection
  Future<void> closeDatabase() async {
    if (_database != null) {
      await _database!.close();
      _database = null;
    }
  }

  /// Insert a record into a table
  Future<int> insert(
    String table,
    Dictionary data,
  ) async {
    final db = await database;
    return await db.insert(
      table,
      data,
      conflictAlgorithm: ConflictAlgorithm.replace,
    );
  }

  /// Update a record in a table
  Future<int> update(
    String table,
    Dictionary data,
    String whereClause,
    List<Object?> whereArgs,
  ) async {
    final db = await database;
    return await db.update(
      table,
      data,
      where: whereClause,
      whereArgs: whereArgs,
    );
  }

  /// Delete a record from a table
  Future<int> delete(
    String table,
    String whereClause,
    List<Object?> whereArgs,
  ) async {
    final db = await database;
    return await db.delete(
      table,
      where: whereClause,
      whereArgs: whereArgs,
    );
  }

  /// Query records from a table
  Future<List<Dictionary>> query(
    String table, {
    List<String>? columns,
    String? where,
    List<Object?>? whereArgs,
    String? orderBy,
  }) async {
    final db = await database;
    return await db.query(
      table,
      columns: columns,
      where: where,
      whereArgs: whereArgs,
      orderBy: orderBy,
    );
  }
}
