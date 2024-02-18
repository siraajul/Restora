import 'package:dio/dio.dart';

import '../../constants/app_constants.dart';

BaseOptions baseOptions = BaseOptions(
  //baseUrl: APIEndpoints.baseUrl,
  connectTimeout: const Duration(seconds: AppConstants.connectionTimeOut),
  receiveTimeout: const Duration(seconds: AppConstants.connectionTimeOut),
);
