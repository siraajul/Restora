import 'dart:io';

import 'package:hive/hive.dart';

import '../constants/app_local_tables.dart';

class DbHelper {
  static Future<void> init() async {
    var path = Directory.current.path;

    Hive.init(path);
    await createTables();
  }

  static Future<void> createTables() async {
    await Hive.openBox<String>(Tables.appUtils);
    await Hive.openBox<String>(Tables.userInfo);
    await Hive.openBox<String>(Tables.locationInfo);
  }

  static void saveData(
    String table,
    String key,
    String value,
  ) {
    final box = Hive.box<String>(table);
    // ignore: cascade_invocations
    box.put(key, value);
  }

  static String getData(
    String table,
    String key,
  ) {
    // final box = Hive.box<String>(table);
    // final data = box.get(key);

    // return data ?? '';
    return '';
  }

  static void clearTableData(String table) {
    Hive.box<String>(table).clear();
  }
}
