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
