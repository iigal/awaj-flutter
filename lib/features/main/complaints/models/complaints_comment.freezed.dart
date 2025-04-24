// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'complaints_comment.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

ComplaintsComment _$ComplaintsCommentFromJson(Map<String, dynamic> json) {
  return _ComplaintsComment.fromJson(json);
}

/// @nodoc
mixin _$ComplaintsComment {
  String get id => throw _privateConstructorUsedError;
  String get complaintId => throw _privateConstructorUsedError;
  String? get commentBy => throw _privateConstructorUsedError;
  String? get parentId => throw _privateConstructorUsedError;
  String get message => throw _privateConstructorUsedError;
  DateTime get created => throw _privateConstructorUsedError;
  DateTime get updated => throw _privateConstructorUsedError;
  @JsonKey(defaultValue: [])
  List<ComplaintsComment>? get reply => throw _privateConstructorUsedError;

  /// Serializes this ComplaintsComment to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of ComplaintsComment
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $ComplaintsCommentCopyWith<ComplaintsComment> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ComplaintsCommentCopyWith<$Res> {
  factory $ComplaintsCommentCopyWith(
          ComplaintsComment value, $Res Function(ComplaintsComment) then) =
      _$ComplaintsCommentCopyWithImpl<$Res, ComplaintsComment>;
  @useResult
  $Res call(
      {String id,
      String complaintId,
      String? commentBy,
      String? parentId,
      String message,
      DateTime created,
      DateTime updated,
      @JsonKey(defaultValue: []) List<ComplaintsComment>? reply});
}

/// @nodoc
class _$ComplaintsCommentCopyWithImpl<$Res, $Val extends ComplaintsComment>
    implements $ComplaintsCommentCopyWith<$Res> {
  _$ComplaintsCommentCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of ComplaintsComment
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? complaintId = null,
    Object? commentBy = freezed,
    Object? parentId = freezed,
    Object? message = null,
    Object? created = null,
    Object? updated = null,
    Object? reply = freezed,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      complaintId: null == complaintId
          ? _value.complaintId
          : complaintId // ignore: cast_nullable_to_non_nullable
              as String,
      commentBy: freezed == commentBy
          ? _value.commentBy
          : commentBy // ignore: cast_nullable_to_non_nullable
              as String?,
      parentId: freezed == parentId
          ? _value.parentId
          : parentId // ignore: cast_nullable_to_non_nullable
              as String?,
      message: null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
      created: null == created
          ? _value.created
          : created // ignore: cast_nullable_to_non_nullable
              as DateTime,
      updated: null == updated
          ? _value.updated
          : updated // ignore: cast_nullable_to_non_nullable
              as DateTime,
      reply: freezed == reply
          ? _value.reply
          : reply // ignore: cast_nullable_to_non_nullable
              as List<ComplaintsComment>?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ComplaintsCommentImplCopyWith<$Res>
    implements $ComplaintsCommentCopyWith<$Res> {
  factory _$$ComplaintsCommentImplCopyWith(_$ComplaintsCommentImpl value,
          $Res Function(_$ComplaintsCommentImpl) then) =
      __$$ComplaintsCommentImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String id,
      String complaintId,
      String? commentBy,
      String? parentId,
      String message,
      DateTime created,
      DateTime updated,
      @JsonKey(defaultValue: []) List<ComplaintsComment>? reply});
}

/// @nodoc
class __$$ComplaintsCommentImplCopyWithImpl<$Res>
    extends _$ComplaintsCommentCopyWithImpl<$Res, _$ComplaintsCommentImpl>
    implements _$$ComplaintsCommentImplCopyWith<$Res> {
  __$$ComplaintsCommentImplCopyWithImpl(_$ComplaintsCommentImpl _value,
      $Res Function(_$ComplaintsCommentImpl) _then)
      : super(_value, _then);

  /// Create a copy of ComplaintsComment
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? complaintId = null,
    Object? commentBy = freezed,
    Object? parentId = freezed,
    Object? message = null,
    Object? created = null,
    Object? updated = null,
    Object? reply = freezed,
  }) {
    return _then(_$ComplaintsCommentImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      complaintId: null == complaintId
          ? _value.complaintId
          : complaintId // ignore: cast_nullable_to_non_nullable
              as String,
      commentBy: freezed == commentBy
          ? _value.commentBy
          : commentBy // ignore: cast_nullable_to_non_nullable
              as String?,
      parentId: freezed == parentId
          ? _value.parentId
          : parentId // ignore: cast_nullable_to_non_nullable
              as String?,
      message: null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
      created: null == created
          ? _value.created
          : created // ignore: cast_nullable_to_non_nullable
              as DateTime,
      updated: null == updated
          ? _value.updated
          : updated // ignore: cast_nullable_to_non_nullable
              as DateTime,
      reply: freezed == reply
          ? _value._reply
          : reply // ignore: cast_nullable_to_non_nullable
              as List<ComplaintsComment>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ComplaintsCommentImpl implements _ComplaintsComment {
  const _$ComplaintsCommentImpl(
      {required this.id,
      required this.complaintId,
      this.commentBy,
      this.parentId,
      required this.message,
      required this.created,
      required this.updated,
      @JsonKey(defaultValue: []) final List<ComplaintsComment>? reply})
      : _reply = reply;

  factory _$ComplaintsCommentImpl.fromJson(Map<String, dynamic> json) =>
      _$$ComplaintsCommentImplFromJson(json);

  @override
  final String id;
  @override
  final String complaintId;
  @override
  final String? commentBy;
  @override
  final String? parentId;
  @override
  final String message;
  @override
  final DateTime created;
  @override
  final DateTime updated;
  final List<ComplaintsComment>? _reply;
  @override
  @JsonKey(defaultValue: [])
  List<ComplaintsComment>? get reply {
    final value = _reply;
    if (value == null) return null;
    if (_reply is EqualUnmodifiableListView) return _reply;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  String toString() {
    return 'ComplaintsComment(id: $id, complaintId: $complaintId, commentBy: $commentBy, parentId: $parentId, message: $message, created: $created, updated: $updated, reply: $reply)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ComplaintsCommentImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.complaintId, complaintId) ||
                other.complaintId == complaintId) &&
            (identical(other.commentBy, commentBy) ||
                other.commentBy == commentBy) &&
            (identical(other.parentId, parentId) ||
                other.parentId == parentId) &&
            (identical(other.message, message) || other.message == message) &&
            (identical(other.created, created) || other.created == created) &&
            (identical(other.updated, updated) || other.updated == updated) &&
            const DeepCollectionEquality().equals(other._reply, _reply));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      id,
      complaintId,
      commentBy,
      parentId,
      message,
      created,
      updated,
      const DeepCollectionEquality().hash(_reply));

  /// Create a copy of ComplaintsComment
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ComplaintsCommentImplCopyWith<_$ComplaintsCommentImpl> get copyWith =>
      __$$ComplaintsCommentImplCopyWithImpl<_$ComplaintsCommentImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ComplaintsCommentImplToJson(
      this,
    );
  }
}

abstract class _ComplaintsComment implements ComplaintsComment {
  const factory _ComplaintsComment(
          {required final String id,
          required final String complaintId,
          final String? commentBy,
          final String? parentId,
          required final String message,
          required final DateTime created,
          required final DateTime updated,
          @JsonKey(defaultValue: []) final List<ComplaintsComment>? reply}) =
      _$ComplaintsCommentImpl;

  factory _ComplaintsComment.fromJson(Map<String, dynamic> json) =
      _$ComplaintsCommentImpl.fromJson;

  @override
  String get id;
  @override
  String get complaintId;
  @override
  String? get commentBy;
  @override
  String? get parentId;
  @override
  String get message;
  @override
  DateTime get created;
  @override
  DateTime get updated;
  @override
  @JsonKey(defaultValue: [])
  List<ComplaintsComment>? get reply;

  /// Create a copy of ComplaintsComment
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ComplaintsCommentImplCopyWith<_$ComplaintsCommentImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
