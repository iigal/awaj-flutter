import 'package:awaj/model/user_model.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'complaints_comment.freezed.dart';
part 'complaints_comment.g.dart';

@freezed
class ComplaintsComment with _$ComplaintsComment {
  const factory ComplaintsComment({
    required String id,
    required String complaintId,
    String? commentBy,
    String? parentId,
    required String message,
    required DateTime created,
    required DateTime updated,
    @JsonKey(defaultValue: []) List<ComplaintsComment>? reply,
  }) = _ComplaintsComment;

  factory ComplaintsComment.fromJson(Map<String, dynamic> json) => _$ComplaintsCommentFromJson(json);
}
