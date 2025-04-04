import 'package:freezed_annotation/freezed_annotation.dart';

part 'government_announcement_model.freezed.dart';
part 'government_announcement_model.g.dart';

@freezed
class Announcement with _$Announcement {
  const factory Announcement({
    @JsonKey(name: "collectionId") String? collectionId,
    @JsonKey(name: "collectionName") String? collectionName,
    @JsonKey(name: "content") required String content,
    @JsonKey(name: "created") required DateTime created,
    @JsonKey(name: "full_summary") required String fullSummary,
    @JsonKey(name: "id") String? id,
    @JsonKey(name: "meta_data") dynamic metaData,
    @JsonKey(name: "priority") required List<String> priority,
    @JsonKey(name: "status") bool? status,
    @JsonKey(name: "summary") String? summary,
    @JsonKey(name: "title") required String title,
    @JsonKey(name: "updated") DateTime? updated,
  }) = _Announcement;

  factory Announcement.fromJson(Map<String, dynamic> json) => _$AnnouncementFromJson(json);
}
