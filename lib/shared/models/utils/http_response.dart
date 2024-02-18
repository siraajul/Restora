import 'error_info.dart';

class HttpResponse {
  HttpResponse({
    this.data,
    this.statusCode,
    this.error,
  });

  dynamic data;
  int? statusCode;
  ErrorInfo? error;
}
