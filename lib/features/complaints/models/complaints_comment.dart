import 'package:awaj/model/user_model.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'complaints_comment.freezed.dart';
part 'complaints_comment.g.dart';

@freezed
class ComplaintsComment with _$ComplaintsComment {
  @JsonSerializable(fieldRename: FieldRename.snake)
  const factory ComplaintsComment({
    required int id,
    required int issueId,
    int? userId,
    int? parentId,
    required String message,
    required int sorting,
    required DateTime createdAt,
    required DateTime updatedAt,
    User? user,
    @JsonKey(defaultValue: []) List<ComplaintsComment>? reply,
  }) = _ComplaintsComment;

  factory ComplaintsComment.fromJson(Map<String, dynamic> json) => _$ComplaintsCommentFromJson(json);
}
