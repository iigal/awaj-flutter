import 'package:freezed_annotation/freezed_annotation.dart';

part 'complaints_categories_model.freezed.dart';
part 'complaints_categories_model.g.dart';

@freezed
abstract class Categories with _$Categories {
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
abstract class ComplaintsCount with _$ComplaintsCount {
  @JsonSerializable(fieldRename: FieldRename.snake)
  const factory ComplaintsCount({
    required int count,
  }) = _ComplaintsCount;

  factory ComplaintsCount.fromJson(Map<String, dynamic> json) => _$ComplaintsCountFromJson(json);
}

@freezed
abstract class Complaints with _$Complaints {
  const factory Complaints({
    @JsonKey(name: "collectionId") required String collectionId,
    @JsonKey(name: "collectionName") required String collectionName,
    @JsonKey(name: "id") required String id,
    @JsonKey(name: "title") required String title,
    @JsonKey(name: "description") required String description,
    @JsonKey(name: "images") List<String>? images,
    @JsonKey(name: "complaintBy") String? complaintBy,
    @JsonKey(name: "complaintSubCateogryId") String? complaintSubCateogryId,
    @JsonKey(name: "complaintCategoryId") String? complaintCategoryId,
    @JsonKey(name: "progress", defaultValue: 0.0) required double progress,
    @JsonKey(name: "status") String? status,
    @JsonKey(name: "created") required DateTime created,
    @JsonKey(name: "updated") required DateTime updated,
  }) = _Complaints;

  factory Complaints.fromJson(Map<String, dynamic> json) => _$ComplaintsFromJson(json);
}

@freezed
abstract class ComplaintsRequest with _$ComplaintsRequest {
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
abstract class ComplaintCommentRequest with _$ComplaintCommentRequest {
  const factory ComplaintCommentRequest({
    required String message,
    required String commentBy,
    String? parentId,
    required String complaintId,
  }) = _ComplaintCommentRequest;

  factory ComplaintCommentRequest.fromJson(Map<String, dynamic> json) => _$ComplaintCommentRequestFromJson(json);
}
