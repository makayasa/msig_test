import 'dart:io';

import 'package:drift/drift.dart';
import 'package:drift/native.dart';
import 'package:path/path.dart' as p;
import 'package:path_provider/path_provider.dart';
import 'package:skeleton/config/function_utils.dart';
import 'package:skeleton/entity/food_entity.dart';
import 'package:sqlite3/sqlite3.dart';
import 'package:sqlite3_flutter_libs/sqlite3_flutter_libs.dart';

part 'app_db.g.dart';

LazyDatabase _openConnection() {
  return LazyDatabase(() async {
    final dbFolder = await getApplicationDocumentsDirectory();
    final file = File(p.join(dbFolder.path, 'db.sqlite'));

    if (Platform.isAndroid) {
      await applyWorkaroundToOpenSqlite3OnOldAndroidVersions();
    }

    final cacheDatabase = (await getTemporaryDirectory()).path;

    sqlite3.tempDirectory = cacheDatabase;

    return NativeDatabase.createInBackground(file);
  });
}

@DriftDatabase(tables: [FoodEntity])
class AppDb extends _$AppDb {
  AppDb() : super(_openConnection());

  @override
  int get schemaVersion => 1;

  Future<List<FoodEntityData>> getFavoriteFoods() async {
    return await select(foodEntity).get();
  }

  Future<FoodEntityData> getFavoriteFood(String id) async {
    final res = await (select(foodEntity)..where((tbl) => tbl.idMeal.equals(id))).getSingle();
    return res;
  }

  Future<int> deleteFavoriteFood(String id) async {
    final res = await (delete(foodEntity)..where((tbl) => tbl.idMeal.equals(id))).go();
    return res;
  }

  Future<int> insertFavoriteFood(FoodEntityCompanion food) async {
    final res = await into(foodEntity).insert(food);
    return res;
  }
}
