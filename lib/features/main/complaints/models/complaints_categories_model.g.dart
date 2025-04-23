// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'complaints_categories_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$CategoriesImpl _$$CategoriesImplFromJson(Map<String, dynamic> json) =>
    _$CategoriesImpl(
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

Map<String, dynamic> _$$CategoriesImplToJson(_$CategoriesImpl instance) =>
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

_$ComplaintsCountImpl _$$ComplaintsCountImplFromJson(
        Map<String, dynamic> json) =>
    _$ComplaintsCountImpl(
      count: (json['count'] as num).toInt(),
    );

Map<String, dynamic> _$$ComplaintsCountImplToJson(
        _$ComplaintsCountImpl instance) =>
    <String, dynamic>{
      'count': instance.count,
    };

_$ComplaintsImpl _$$ComplaintsImplFromJson(Map<String, dynamic> json) =>
    _$ComplaintsImpl(
      id: (json['id'] as num).toInt(),
      title: json['title'] as String,
      description: json['description'] as String,
      images: (json['images'] as List<dynamic>?)
              ?.map((e) => e as String)
              .toList() ??
          [],
      userId: (json['user_id'] as num).toInt(),
      status: json['status'] as String,
      progress: (json['progress'] as num).toInt(),
      isPublished: (json['is_published'] as num?)?.toInt(),
      createdAt: DateTime.parse(json['created_at'] as String),
      updatedAt: DateTime.parse(json['updated_at'] as String),
      categories: (json['categories'] as List<dynamic>)
          .map((e) => Categories.fromJson(e as Map<String, dynamic>))
          .toList(),
      subcategories: (json['subcategories'] as List<dynamic>?)
          ?.map((e) => Categories.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$ComplaintsImplToJson(_$ComplaintsImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'title': instance.title,
      'description': instance.description,
      'images': instance.images,
      'user_id': instance.userId,
      'status': instance.status,
      'progress': instance.progress,
      'is_published': instance.isPublished,
      'created_at': instance.createdAt.toIso8601String(),
      'updated_at': instance.updatedAt.toIso8601String(),
      'categories': instance.categories,
      'subcategories': instance.subcategories,
    };

_$ComplaintsRequestImpl _$$ComplaintsRequestImplFromJson(
        Map<String, dynamic> json) =>
    _$ComplaintsRequestImpl(
      title: json['title'] as String,
      description: json['description'] as String,
      complaintBy: json['complaint_by'] as String?,
      images: (json['images'] as List<dynamic>?)
              ?.map((e) => e as String)
              .toList() ??
          [],
      status: json['status'] as String? ?? 'pending',
      complaintCategoryId: json['complaint_category_id'] as String?,
      complaintSubCategoryId: json['complaint_sub_category_id'] as String?,
    );

Map<String, dynamic> _$$ComplaintsRequestImplToJson(
        _$ComplaintsRequestImpl instance) =>
    <String, dynamic>{
      'title': instance.title,
      'description': instance.description,
      'complaint_by': instance.complaintBy,
      'images': instance.images,
      'status': instance.status,
      'complaint_category_id': instance.complaintCategoryId,
      'complaint_sub_category_id': instance.complaintSubCategoryId,
    };

_$ComplaintCommentRequestImpl _$$ComplaintCommentRequestImplFromJson(
        Map<String, dynamic> json) =>
    _$ComplaintCommentRequestImpl(
      message: json['message'] as String,
      userId: (json['user_id'] as num?)?.toInt(),
      parentId: (json['parent_id'] as num?)?.toInt(),
      issueId: (json['issue_id'] as num).toInt(),
    );

Map<String, dynamic> _$$ComplaintCommentRequestImplToJson(
        _$ComplaintCommentRequestImpl instance) =>
    <String, dynamic>{
      'message': instance.message,
      'user_id': instance.userId,
      'parent_id': instance.parentId,
      'issue_id': instance.issueId,
    };
