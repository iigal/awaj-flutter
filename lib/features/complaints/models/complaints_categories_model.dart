import 'package:freezed_annotation/freezed_annotation.dart';
part 'complaints_categories_model.freezed.dart';
part 'complaints_categories_model.g.dart';

@freezed
class Categories with _$Categories {
  @JsonSerializable(fieldRename: FieldRename.snake)
  const factory Categories({
    required int id,
    required String title,
    required int? parentId,
    required int? sorting,
    @JsonKey(includeToJson: false) required DateTime createdAt,
    @JsonKey(includeToJson: false) required DateTime updatedAt,
    @JsonKey(defaultValue: [], includeToJson: false) List<Categories>? children,
  }) = _Categories;

  factory Categories.fromJson(Map<String, dynamic> json) => _$CategoriesFromJson(json);
}

@freezed
class Complaints with _$Complaints {
  @JsonSerializable(fieldRename: FieldRename.snake)
  const factory Complaints({
    required int id,
    required String title,
    required String description,
    @JsonKey(defaultValue: []) List<String>? images,
    required int userId,
    required String status,
    int? isPublished,
    required DateTime createdAt,
    required DateTime updatedAt,
    required List<Categories> categories,
    List<Categories>? subcategories,
  }) = _Complaints;

  factory Complaints.fromJson(Map<String, dynamic> json) => _$ComplaintsFromJson(json);
}

@freezed
class ComplaintsRequest with _$ComplaintsRequest {
  @JsonSerializable(fieldRename: FieldRename.snake)
  const factory ComplaintsRequest({
    required String title,
    required String description,
    required int? userId,
    @JsonKey(defaultValue: []) List<String>? images,
    @JsonKey(defaultValue: "pending") String? status,
    @JsonKey(defaultValue: 0) int? isPublished,
    required int categoryId,
    int? subCategoryId,
  }) = _ComplaintsRequest;

  factory ComplaintsRequest.fromJson(Map<String, dynamic> json) => _$ComplaintsRequestFromJson(json);
}
