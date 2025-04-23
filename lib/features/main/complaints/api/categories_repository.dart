import 'package:awaj/db.dart';
import 'package:awaj/features/main/complaints/api/interfaces/categories_repository_interface.dart';
import 'package:awaj/features/main/complaints/models/complaints_categories_model.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:pocketbase/pocketbase.dart';

final categoriesRepositoryProvider = Provider<CategoriesRepository>((ref) {
  return CategoriesRepository();
});

class CategoriesRepository implements CategoriesRepositoryInterface {
  @override
  Future<List<Categories>> getAllCategories() async {
    List<RecordModel> result = await pocketBaseDB.collection("complaintCategories").getFullList();

    List<Categories> categories = [];
    for (int i = 0; i < result.length; i++) {
      categories.add(Categories.fromJson(result[i].data));
    }
    return categories;
  }
}
