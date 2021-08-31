import 'package:apex_wiki_mini/model/legends.dart';
import 'package:path/path.dart';
import 'package:sqflite/sqflite.dart';
import 'package:apex_wiki_mini/model/legends_data.dart';

class LegendDatabase {
  var database;

  Future<void> init() async{

    if(database==null){
      await createDatabase();
    }
    if (!await checkData('legends')) {
      Future.forEach(listLegend, (Legend legend) async {
        await addLegend(legend);
      });
    }

  }
  Future<void> createDatabase() async {
    database = openDatabase(
      // Set the path to the database. Note: Using the `join` function from the
      // `path` package is best practice to ensure the path is correctly
      // constructed for each platform.
      join(await getDatabasesPath(), 'legend_database.db'),
      onCreate: (db, version) {
        return db.execute(
            "CREATE TABLE legends(id INTEGER PRIMARY KEY, Legend_Name TEXT, Real_Name TEXT, Gender TEXT, "
            "Age INTEGER, Height INTEGER, Home TEXT, Image TEXT)");
      },
      version: 1,
    );
  }
  Future<void> addLegend(Legend legend) async {
    final db = await database;

    await db.insert(
      'legends',
      legend.toMap(),
      conflictAlgorithm: ConflictAlgorithm.replace,
    );
  }

  Future<List<Legend>> legends() async {
    final db = await database;

    final List<Map<String, dynamic>> maps = await db.query("legends");

    return List.generate(
        maps.length,
        (i) => Legend(
              id: maps[i]['id'],
              legendName: maps[i]['Legend_Name'],
              realName: maps[i]['Real_Name'],
              gender: maps[i]['Gender'],
              age: maps[i]['Age'],
              height: maps[i]['Height'],
              home: maps[i]['Home'],
              path: maps[i]['Image'],
            ));
  }

  Future<Legend> getLegendById(int id) async {
    final db = await database;

    final List<Map<String, dynamic>> maps =
        await db.query("legends", where: "id = ?", whereArgs: [id]);
    int i = 0;
    return Legend(
      id: maps[i]['id'],
      legendName: maps[i]['Legend_Name'],
      realName: maps[i]['Real_Name'],
      gender: maps[i]['Gender'],
      age: maps[i]['Age'],
      height: maps[i]['Height'],
      home: maps[i]['Home'],
      path: maps[i]['Image'],
    );
  }

  Future<void> updateLegend(Legend legend) async {
    final db = await database;

    await db.update(
      'legends',
      legend.toMap(),
      where: 'id = ?',
      whereArgs: [legend.id],
    );
  }

  Future<void> deleteLegend(int id) async {
    final db = await database;

    await db.delete(
      'legends',
      where: 'id = ?',
      whereArgs: [id],
    );
  }

  Future<void> createTable(String tableName) async {
    final db = await database;
    await db.execute("CREATE TABLE $tableName($queryCreate_Legends)");
  }

  Future<void> dropTable(String tableName) async {
    final db = await database;
    await db.execute("DROP TABLE IF EXISTS $tableName");
  }

  Future<void> cleanTable(String tableName) async {
    final db = await database;
    await db.execute('DELETE FROM $tableName');
  }

  Future<bool> checkData(String tableName) async{
    final db = await database;
    int count;
    try{
      var res = await db.rawQuery('SELECT COUNT(*) FROM $tableName');
      count = res.first['COUNT(*)'];
    }catch(e){
      throw('Cant retrieved the data');
    }

    if(count > 0){
      return true;
    }
    else{
      return false;
    }

  }

  // Future.forEach(listLegend, (Legend legend) async {
  //   await addLegend(legend);
  // });

  // for(int i = 0; i< listLegend.length; i++){
  //   await addLegend(listLegend[i]);
  // }

  // await legends().then((list) {
  //   for (Legend legend in list) {
  //     print(legend);
  //   }
  // });

  //print(await legends());
}
