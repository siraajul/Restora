import 'dart:convert';
import 'dart:io' show Platform;
import 'package:flutter/services.dart';
import '../constants/app_keys.dart';
import '../constants/app_local_tables.dart';

import '../models/user/user.dart';
import 'local_db_helper.dart';

class AppHelper {
  static int currentTimeStamp() => DateTime.now().microsecondsSinceEpoch;

  static int appPlatform() => Platform.isAndroid ? 2 : 3; //2 Android and 3 Ios

  static User? userBasicInfo() {
    User? userInfo;
    final response = DbHelper.getData(Tables.userInfo, AppKeys.userInfo);

    if (response.isNotEmpty) {
      final data = jsonDecode(response);
      if (data != null) {
        userInfo = User.fromJson(data);
      }
    }

    return userInfo;
  }

  static String userID() =>
      userBasicInfo() != null ? userBasicInfo()?.id ?? '' : '';

  static String userEmail() =>
      userBasicInfo() != null ? '${userBasicInfo()!.email}' : '';

  static String userPassword() =>
      userBasicInfo() != null ? '${userBasicInfo()!.password}' : '';

  static void clearUserInfo() {
    DbHelper.saveData(Tables.userInfo, AppKeys.userInfo, '');
  }

  static void closeApp() =>
      SystemChannels.platform.invokeMethod('SystemNavigator.pop');
}
