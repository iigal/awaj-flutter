import 'package:awaj/features/main/complaints/models/complaints_categories_model.dart';

abstract class CategoriesRepositoryInterface {
  Future<List<Categories>> getAllCategories();
}
