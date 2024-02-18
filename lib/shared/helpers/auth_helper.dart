import 'dart:convert';

import '../constants/app_keys.dart';
import '../constants/app_local_tables.dart';
import '../models/auth/auth_dto.dart';
import 'app_helper.dart';
import 'local_db_helper.dart';

class AuthHelper {
  static bool isAuthenticated() => tokenInfo() != null;

  static String? accessToken() =>
      tokenInfo() != null ? tokenInfo()!.accessToken : '';

  static void clearToken() =>
      DbHelper.saveData(Tables.appUtils, AppKeys.tokenInfo, '');

  static AuthDTO? tokenInfo() {
    AuthDTO? tokenInfo;
    final response = DbHelper.getData(Tables.appUtils, AppKeys.tokenInfo);

    if (response.isNotEmpty) {
      final data = jsonDecode(response);
      if (data != null) {
        tokenInfo = AuthDTO.fromJson(data);
      }
    }

    return tokenInfo;
  }

  static void logOut() {
    clearToken();
    AppHelper.clearUserInfo();
  }
}
