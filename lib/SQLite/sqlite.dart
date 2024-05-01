import 'package:path_provider/path_provider.dart';
import 'package:sqflite/sqflite.dart';
import 'package:path/path.dart';
import 'package:projetenfant/JsonModels/users.dart'; // Importez la classe Users depuis le fichier users.dart

class DatabaseProvider {
  static Database? _database;

  static Future<Database> get database async {
    if (_database != null) return _database!;

    _database = await _initDatabase();
    return _database!;
  }

  static Future<Database> _initDatabase() async {
    final databasesPath = await getDatabasesPath();
    final path = join(databasesPath, 'users_database.db');

    return await openDatabase(path, version: 1, onCreate: _createDatabase);
  }

  static Future<void> _createDatabase(Database db, int version) async {
    await db.execute('''
      CREATE TABLE users(
        usrId INTEGER PRIMARY KEY AUTOINCREMENT,
        usrName TEXT,
        usrPassword TEXT
      )
    ''');
  }

  static Future<void> insertUser(Users user) async {
    final db = await database;
    await db.insert('users', user.toMap(),
        conflictAlgorithm: ConflictAlgorithm.replace);
  }

  static Future<List<Users>> getUsers() async {
    final db = await database;
    final List<Map<String, dynamic>> maps = await db.query('users');
    print("getusersdata $maps");

    return List.generate(maps.length, (i) {
      return Users(
        usrId: maps[i]['usrId'],
        usrName: maps[i]['usrName'],
        usrPassword: maps[i]['usrPassword'],
      );
    });
  }
}
