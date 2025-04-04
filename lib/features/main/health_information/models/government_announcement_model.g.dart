// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'government_announcement_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$AnnouncementImpl _$$AnnouncementImplFromJson(Map<String, dynamic> json) =>
    _$AnnouncementImpl(
      collectionId: json['collectionId'] as String?,
      collectionName: json['collectionName'] as String?,
      content: json['content'] as String,
      created: DateTime.parse(json['created'] as String),
      fullSummary: json['full_summary'] as String,
      id: json['id'] as String?,
      metaData: json['meta_data'],
      priority:
          (json['priority'] as List<dynamic>).map((e) => e as String).toList(),
      status: json['status'] as bool?,
      summary: json['summary'] as String?,
      title: json['title'] as String,
      updated: json['updated'] == null
          ? null
          : DateTime.parse(json['updated'] as String),
    );

Map<String, dynamic> _$$AnnouncementImplToJson(_$AnnouncementImpl instance) =>
    <String, dynamic>{
      'collectionId': instance.collectionId,
      'collectionName': instance.collectionName,
      'content': instance.content,
      'created': instance.created.toIso8601String(),
      'full_summary': instance.fullSummary,
      'id': instance.id,
      'meta_data': instance.metaData,
      'priority': instance.priority,
      'status': instance.status,
      'summary': instance.summary,
      'title': instance.title,
      'updated': instance.updated?.toIso8601String(),
    };
