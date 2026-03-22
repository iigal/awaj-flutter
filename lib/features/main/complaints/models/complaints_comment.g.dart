// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'complaints_comment.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_ComplaintsComment _$ComplaintsCommentFromJson(Map<String, dynamic> json) =>
    _ComplaintsComment(
      id: json['id'] as String,
      complaintId: json['complaintId'] as String,
      commentBy: json['commentBy'] as String?,
      parentId: json['parentId'] as String?,
      message: json['message'] as String,
      created: DateTime.parse(json['created'] as String),
      updated: DateTime.parse(json['updated'] as String),
      reply:
          (json['reply'] as List<dynamic>?)
              ?.map(
                (e) => ComplaintsComment.fromJson(e as Map<String, dynamic>),
              )
              .toList() ??
          [],
    );

Map<String, dynamic> _$ComplaintsCommentToJson(_ComplaintsComment instance) =>
    <String, dynamic>{
      'id': instance.id,
      'complaintId': instance.complaintId,
      'commentBy': instance.commentBy,
      'parentId': instance.parentId,
      'message': instance.message,
      'created': instance.created.toIso8601String(),
      'updated': instance.updated.toIso8601String(),
      'reply': instance.reply,
    };
