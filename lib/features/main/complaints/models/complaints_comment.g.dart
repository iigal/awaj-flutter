// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'complaints_comment.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$ComplaintsCommentImpl _$$ComplaintsCommentImplFromJson(
        Map<String, dynamic> json) =>
    _$ComplaintsCommentImpl(
      id: (json['id'] as num).toInt(),
      issueId: (json['issue_id'] as num).toInt(),
      userId: (json['user_id'] as num?)?.toInt(),
      parentId: (json['parent_id'] as num?)?.toInt(),
      message: json['message'] as String,
      sorting: (json['sorting'] as num).toInt(),
      createdAt: DateTime.parse(json['created_at'] as String),
      updatedAt: DateTime.parse(json['updated_at'] as String),
      user: json['user'] == null
          ? null
          : User.fromJson(json['user'] as Map<String, dynamic>),
      reply: (json['reply'] as List<dynamic>?)
              ?.map(
                  (e) => ComplaintsComment.fromJson(e as Map<String, dynamic>))
              .toList() ??
          [],
    );

Map<String, dynamic> _$$ComplaintsCommentImplToJson(
        _$ComplaintsCommentImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'issue_id': instance.issueId,
      'user_id': instance.userId,
      'parent_id': instance.parentId,
      'message': instance.message,
      'sorting': instance.sorting,
      'created_at': instance.createdAt.toIso8601String(),
      'updated_at': instance.updatedAt.toIso8601String(),
      'user': instance.user,
      'reply': instance.reply,
    };
