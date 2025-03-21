import 'package:movie/core/data/model/movie_local.dart';
import 'package:path/path.dart';
import 'package:sqflite/sqflite.dart';

class LocalDatabase {
  late Database db;

  Future<void> init() async {
    var databasesPath = await getDatabasesPath();
    String path = join(databasesPath, 'movie.db');
    await deleteDatabase(path);
    db = await openDatabase(path, version: 1, onCreate: (
      Database db,
      int version,
    ) async {
      await db.execute(
          'CREATE TABLE Movie (id INTEGER PRIMARY KEY, title TEXT, image TEXT, vote REAL)');
    });
  }

  Future<bool> isMyMovie(int id) async {
    List<Map> data = await db.query(
      tableMovie,
      columns: [columnId],
      where: '$columnId = ?',
      whereArgs: [id],
    );
    return data.isNotEmpty;
  }

  Future<bool> insertMovie(MovieLocal model) async {
    List<Map> data = await db.query(
      tableMovie,
      columns: [columnId],
      where: '$columnId = ?',
      whereArgs: [model.id],
    );
    if (data.isNotEmpty) {
      await db.delete(
        tableMovie,
        where: '$columnId = ?',
        whereArgs: [model.id],
      );
      return false;
    }
    await db.insert(tableMovie, model.toMap());
    return true;
  }

  Future<List<MovieLocal>> getAllMovies() async {
    List<Map> data = await db.query(
      tableMovie,
      columns: [columnId, columnTitle, columnUrl, columnVote],
    );
    if (data.isNotEmpty) {
      return data
          .map((item) => MovieLocal.fromJson(item as Map<String, dynamic>))
          .toList();
    }
    return [];
  }
}
