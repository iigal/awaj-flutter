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
  int get id => throw _privateConstructorUsedError;
  int get issueId => throw _privateConstructorUsedError;
  int? get userId => throw _privateConstructorUsedError;
  int? get parentId => throw _privateConstructorUsedError;
  String get message => throw _privateConstructorUsedError;
  int get sorting => throw _privateConstructorUsedError;
  DateTime get createdAt => throw _privateConstructorUsedError;
  DateTime get updatedAt => throw _privateConstructorUsedError;
  User? get user => throw _privateConstructorUsedError;
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
      {int id,
      int issueId,
      int? userId,
      int? parentId,
      String message,
      int sorting,
      DateTime createdAt,
      DateTime updatedAt,
      User? user,
      @JsonKey(defaultValue: []) List<ComplaintsComment>? reply});

  $UserCopyWith<$Res>? get user;
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
    Object? issueId = null,
    Object? userId = freezed,
    Object? parentId = freezed,
    Object? message = null,
    Object? sorting = null,
    Object? createdAt = null,
    Object? updatedAt = null,
    Object? user = freezed,
    Object? reply = freezed,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      issueId: null == issueId
          ? _value.issueId
          : issueId // ignore: cast_nullable_to_non_nullable
              as int,
      userId: freezed == userId
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as int?,
      parentId: freezed == parentId
          ? _value.parentId
          : parentId // ignore: cast_nullable_to_non_nullable
              as int?,
      message: null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
      sorting: null == sorting
          ? _value.sorting
          : sorting // ignore: cast_nullable_to_non_nullable
              as int,
      createdAt: null == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
      updatedAt: null == updatedAt
          ? _value.updatedAt
          : updatedAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
      user: freezed == user
          ? _value.user
          : user // ignore: cast_nullable_to_non_nullable
              as User?,
      reply: freezed == reply
          ? _value.reply
          : reply // ignore: cast_nullable_to_non_nullable
              as List<ComplaintsComment>?,
    ) as $Val);
  }

  /// Create a copy of ComplaintsComment
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $UserCopyWith<$Res>? get user {
    if (_value.user == null) {
      return null;
    }

    return $UserCopyWith<$Res>(_value.user!, (value) {
      return _then(_value.copyWith(user: value) as $Val);
    });
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
      {int id,
      int issueId,
      int? userId,
      int? parentId,
      String message,
      int sorting,
      DateTime createdAt,
      DateTime updatedAt,
      User? user,
      @JsonKey(defaultValue: []) List<ComplaintsComment>? reply});

  @override
  $UserCopyWith<$Res>? get user;
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
    Object? issueId = null,
    Object? userId = freezed,
    Object? parentId = freezed,
    Object? message = null,
    Object? sorting = null,
    Object? createdAt = null,
    Object? updatedAt = null,
    Object? user = freezed,
    Object? reply = freezed,
  }) {
    return _then(_$ComplaintsCommentImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      issueId: null == issueId
          ? _value.issueId
          : issueId // ignore: cast_nullable_to_non_nullable
              as int,
      userId: freezed == userId
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as int?,
      parentId: freezed == parentId
          ? _value.parentId
          : parentId // ignore: cast_nullable_to_non_nullable
              as int?,
      message: null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
      sorting: null == sorting
          ? _value.sorting
          : sorting // ignore: cast_nullable_to_non_nullable
              as int,
      createdAt: null == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
      updatedAt: null == updatedAt
          ? _value.updatedAt
          : updatedAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
      user: freezed == user
          ? _value.user
          : user // ignore: cast_nullable_to_non_nullable
              as User?,
      reply: freezed == reply
          ? _value._reply
          : reply // ignore: cast_nullable_to_non_nullable
              as List<ComplaintsComment>?,
    ));
  }
}

/// @nodoc

@JsonSerializable(fieldRename: FieldRename.snake)
class _$ComplaintsCommentImpl implements _ComplaintsComment {
  const _$ComplaintsCommentImpl(
      {required this.id,
      required this.issueId,
      this.userId,
      this.parentId,
      required this.message,
      required this.sorting,
      required this.createdAt,
      required this.updatedAt,
      this.user,
      @JsonKey(defaultValue: []) final List<ComplaintsComment>? reply})
      : _reply = reply;

  factory _$ComplaintsCommentImpl.fromJson(Map<String, dynamic> json) =>
      _$$ComplaintsCommentImplFromJson(json);

  @override
  final int id;
  @override
  final int issueId;
  @override
  final int? userId;
  @override
  final int? parentId;
  @override
  final String message;
  @override
  final int sorting;
  @override
  final DateTime createdAt;
  @override
  final DateTime updatedAt;
  @override
  final User? user;
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
    return 'ComplaintsComment(id: $id, issueId: $issueId, userId: $userId, parentId: $parentId, message: $message, sorting: $sorting, createdAt: $createdAt, updatedAt: $updatedAt, user: $user, reply: $reply)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ComplaintsCommentImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.issueId, issueId) || other.issueId == issueId) &&
            (identical(other.userId, userId) || other.userId == userId) &&
            (identical(other.parentId, parentId) ||
                other.parentId == parentId) &&
            (identical(other.message, message) || other.message == message) &&
            (identical(other.sorting, sorting) || other.sorting == sorting) &&
            (identical(other.createdAt, createdAt) ||
                other.createdAt == createdAt) &&
            (identical(other.updatedAt, updatedAt) ||
                other.updatedAt == updatedAt) &&
            (identical(other.user, user) || other.user == user) &&
            const DeepCollectionEquality().equals(other._reply, _reply));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      id,
      issueId,
      userId,
      parentId,
      message,
      sorting,
      createdAt,
      updatedAt,
      user,
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
          {required final int id,
          required final int issueId,
          final int? userId,
          final int? parentId,
          required final String message,
          required final int sorting,
          required final DateTime createdAt,
          required final DateTime updatedAt,
          final User? user,
          @JsonKey(defaultValue: []) final List<ComplaintsComment>? reply}) =
      _$ComplaintsCommentImpl;

  factory _ComplaintsComment.fromJson(Map<String, dynamic> json) =
      _$ComplaintsCommentImpl.fromJson;

  @override
  int get id;
  @override
  int get issueId;
  @override
  int? get userId;
  @override
  int? get parentId;
  @override
  String get message;
  @override
  int get sorting;
  @override
  DateTime get createdAt;
  @override
  DateTime get updatedAt;
  @override
  User? get user;
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
