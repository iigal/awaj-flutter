// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'complaints_categories_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$CategoriesImpl _$$CategoriesImplFromJson(Map<String, dynamic> json) =>
    _$CategoriesImpl(
      id: (json['id'] as num).toInt(),
      title: json['title'] as String,
      parentId: (json['parent_id'] as num?)?.toInt(),
      sorting: (json['sorting'] as num?)?.toInt(),
      createdAt: DateTime.parse(json['created_at'] as String),
      updatedAt: DateTime.parse(json['updated_at'] as String),
      children: (json['children'] as List<dynamic>?)
              ?.map((e) => Categories.fromJson(e as Map<String, dynamic>))
              .toList() ??
          [],
    );

Map<String, dynamic> _$$CategoriesImplToJson(_$CategoriesImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'title': instance.title,
      'parent_id': instance.parentId,
      'sorting': instance.sorting,
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
      userId: (json['user_id'] as num?)?.toInt(),
      images: (json['images'] as List<dynamic>?)
              ?.map((e) => e as String)
              .toList() ??
          [],
      status: json['status'] as String? ?? 'pending',
      isPublished: (json['is_published'] as num?)?.toInt() ?? 0,
      categoryId: (json['category_id'] as num).toInt(),
      subCategoryId: (json['sub_category_id'] as num?)?.toInt(),
    );

Map<String, dynamic> _$$ComplaintsRequestImplToJson(
        _$ComplaintsRequestImpl instance) =>
    <String, dynamic>{
      'title': instance.title,
      'description': instance.description,
      'user_id': instance.userId,
      'images': instance.images,
      'status': instance.status,
      'is_published': instance.isPublished,
      'category_id': instance.categoryId,
      'sub_category_id': instance.subCategoryId,
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
