import 'dart:convert';

import 'package:awaj/components/base_url.dart';
import 'package:awaj/data/response.dart';
import 'package:awaj/features/complaints/models/complaints_categories_model.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:http/http.dart' as http;

final categoriesRepositoryProvider = Provider<CategoriesRepository>((ref) {
  return CategoriesRepository();
});

class CategoriesRepository {
  Future<List<Categories>> getAllCategories() async {
    http.Response response = await http.get(Uri.parse("${BaseUrl.baseUrl}/categories?include_subcategories=true"));
    var jsonResponse = json.decode(response.body);
    ApiResponse responseJson = ApiResponse.fromJson(jsonResponse);
    List<Categories> categories = [];
    for (int i = 0; i < responseJson.data.length; i++) {
      categories.add(Categories.fromJson(responseJson.data[i]));
    }
    return categories;
  }
}
