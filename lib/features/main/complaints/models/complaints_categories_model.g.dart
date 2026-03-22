// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'complaints_categories_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_Categories _$CategoriesFromJson(Map<String, dynamic> json) => _Categories(
  collectionId: json['collectionId'] as String?,
  collectionName: json['collectionName'] as String?,
  id: json['id'] as String?,
  name: json['name'] as String?,
  description: json['description'] as String?,
  assignedTo: json['assignedTo'] as String?,
  teamMembers: (json['teamMembers'] as List<dynamic>?)
      ?.map((e) => e as String)
      .toList(),
  prefix: json['prefix'] as String?,
  code: json['code'] as String?,
  created: json['created'] == null
      ? null
      : DateTime.parse(json['created'] as String),
  updated: json['updated'] == null
      ? null
      : DateTime.parse(json['updated'] as String),
);

Map<String, dynamic> _$CategoriesToJson(_Categories instance) =>
    <String, dynamic>{
      'collectionId': instance.collectionId,
      'collectionName': instance.collectionName,
      'id': instance.id,
      'name': instance.name,
      'description': instance.description,
      'assignedTo': instance.assignedTo,
      'teamMembers': instance.teamMembers,
      'prefix': instance.prefix,
      'code': instance.code,
      'created': instance.created?.toIso8601String(),
      'updated': instance.updated?.toIso8601String(),
    };

_ComplaintsCount _$ComplaintsCountFromJson(Map<String, dynamic> json) =>
    _ComplaintsCount(count: (json['count'] as num).toInt());

Map<String, dynamic> _$ComplaintsCountToJson(_ComplaintsCount instance) =>
    <String, dynamic>{'count': instance.count};

_Complaints _$ComplaintsFromJson(Map<String, dynamic> json) => _Complaints(
  collectionId: json['collectionId'] as String,
  collectionName: json['collectionName'] as String,
  id: json['id'] as String,
  title: json['title'] as String,
  description: json['description'] as String,
  images: (json['images'] as List<dynamic>?)?.map((e) => e as String).toList(),
  complaintBy: json['complaintBy'] as String?,
  complaintSubCateogryId: json['complaintSubCateogryId'] as String?,
  complaintCategoryId: json['complaintCategoryId'] as String?,
  progress: (json['progress'] as num?)?.toDouble() ?? 0.0,
  status: json['status'] as String?,
  created: DateTime.parse(json['created'] as String),
  updated: DateTime.parse(json['updated'] as String),
);

Map<String, dynamic> _$ComplaintsToJson(_Complaints instance) =>
    <String, dynamic>{
      'collectionId': instance.collectionId,
      'collectionName': instance.collectionName,
      'id': instance.id,
      'title': instance.title,
      'description': instance.description,
      'images': instance.images,
      'complaintBy': instance.complaintBy,
      'complaintSubCateogryId': instance.complaintSubCateogryId,
      'complaintCategoryId': instance.complaintCategoryId,
      'progress': instance.progress,
      'status': instance.status,
      'created': instance.created.toIso8601String(),
      'updated': instance.updated.toIso8601String(),
    };

_ComplaintsRequest _$ComplaintsRequestFromJson(Map<String, dynamic> json) =>
    _ComplaintsRequest(
      title: json['title'] as String,
      description: json['description'] as String,
      complaintBy: json['complaint_by'] as String?,
      images:
          (json['images'] as List<dynamic>?)
              ?.map((e) => e as String)
              .toList() ??
          [],
      status: json['status'] as String? ?? 'pending',
      complaintCategoryId: json['complaint_category_id'] as String?,
      complaintSubCategoryId: json['complaint_sub_category_id'] as String?,
    );

Map<String, dynamic> _$ComplaintsRequestToJson(_ComplaintsRequest instance) =>
    <String, dynamic>{
      'title': instance.title,
      'description': instance.description,
      'complaint_by': instance.complaintBy,
      'images': instance.images,
      'status': instance.status,
      'complaint_category_id': instance.complaintCategoryId,
      'complaint_sub_category_id': instance.complaintSubCategoryId,
    };

_ComplaintCommentRequest _$ComplaintCommentRequestFromJson(
  Map<String, dynamic> json,
) => _ComplaintCommentRequest(
  message: json['message'] as String,
  commentBy: json['commentBy'] as String,
  parentId: json['parentId'] as String?,
  complaintId: json['complaintId'] as String,
);

Map<String, dynamic> _$ComplaintCommentRequestToJson(
  _ComplaintCommentRequest instance,
) => <String, dynamic>{
  'message': instance.message,
  'commentBy': instance.commentBy,
  'parentId': instance.parentId,
  'complaintId': instance.complaintId,
};
