import 'package:freezed_annotation/freezed_annotation.dart';

part 'complaints_categories_model.freezed.dart';
part 'complaints_categories_model.g.dart';

@freezed
class Categories with _$Categories {
  const factory Categories({
    @JsonKey(name: "collectionId") String? collectionId,
    @JsonKey(name: "collectionName") String? collectionName,
    @JsonKey(name: "id") String? id,
    @JsonKey(name: "name") String? name,
    @JsonKey(name: "description") String? description,
    @JsonKey(name: "assignedTo") String? assignedTo,
    @JsonKey(name: "teamMembers") List<String>? teamMembers,
    @JsonKey(name: "prefix") String? prefix,
    @JsonKey(name: "code") String? code,
    @JsonKey(name: "created") DateTime? created,
    @JsonKey(name: "updated") DateTime? updated,
  }) = _Categories;

  factory Categories.fromJson(Map<String, dynamic> json) => _$CategoriesFromJson(json);
}

@freezed
class ComplaintsCount with _$ComplaintsCount {
  @JsonSerializable(fieldRename: FieldRename.snake)
  const factory ComplaintsCount({
    required int count,
  }) = _ComplaintsCount;

  factory ComplaintsCount.fromJson(Map<String, dynamic> json) => _$ComplaintsCountFromJson(json);
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
    required int progress,
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
    required String? complaintBy,
    @JsonKey(defaultValue: []) List<String>? images,
    @JsonKey(defaultValue: "pending") String? status,
    String? complaintCategoryId,
    String? complaintSubCategoryId,
  }) = _ComplaintsRequest;

  factory ComplaintsRequest.fromJson(Map<String, dynamic> json) => _$ComplaintsRequestFromJson(json);
}

@freezed
class ComplaintCommentRequest with _$ComplaintCommentRequest {
  @JsonSerializable(fieldRename: FieldRename.snake)
  const factory ComplaintCommentRequest({
    required String message,
    required int? userId,
    int? parentId,
    required int issueId,
  }) = _ComplaintCommentRequest;

  factory ComplaintCommentRequest.fromJson(Map<String, dynamic> json) => _$ComplaintCommentRequestFromJson(json);
}
