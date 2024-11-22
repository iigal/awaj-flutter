import 'package:awaj/features/complaints/api/categories_repository.dart';
import 'package:awaj/features/complaints/models/complaints_categories_model.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'categories_notifier.g.dart';

@riverpod
class CategoriesNotifier extends _$CategoriesNotifier {
  @override
  FutureOr<List<Categories>> build() {
    var data = ref.watch(categoriesRepositoryProvider).getAllCategories();
    return data;
  }
}
