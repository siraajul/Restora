// ignore_for_file: lines_longer_than_80_chars

import 'package:restora/shared/models/utils/http_response.dart';
import '../http_service.dart';

class CategoryService {
  Future<HttpResponse> getAllOnboardingCategories() async {
    const url = 'http://54.203.205.46:5219/api/v1/GetAllMobileMenuCategorty';
    final response = await HttpService.get(
      url,
    );
    return response;
  }
}
