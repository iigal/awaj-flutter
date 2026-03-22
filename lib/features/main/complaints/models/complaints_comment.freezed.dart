// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'complaints_comment.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$ComplaintsComment {

 String get id; String get complaintId; String? get commentBy; String? get parentId; String get message; DateTime get created; DateTime get updated;@JsonKey(defaultValue: []) List<ComplaintsComment>? get reply;
/// Create a copy of ComplaintsComment
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ComplaintsCommentCopyWith<ComplaintsComment> get copyWith => _$ComplaintsCommentCopyWithImpl<ComplaintsComment>(this as ComplaintsComment, _$identity);

  /// Serializes this ComplaintsComment to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ComplaintsComment&&(identical(other.id, id) || other.id == id)&&(identical(other.complaintId, complaintId) || other.complaintId == complaintId)&&(identical(other.commentBy, commentBy) || other.commentBy == commentBy)&&(identical(other.parentId, parentId) || other.parentId == parentId)&&(identical(other.message, message) || other.message == message)&&(identical(other.created, created) || other.created == created)&&(identical(other.updated, updated) || other.updated == updated)&&const DeepCollectionEquality().equals(other.reply, reply));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,complaintId,commentBy,parentId,message,created,updated,const DeepCollectionEquality().hash(reply));

@override
String toString() {
  return 'ComplaintsComment(id: $id, complaintId: $complaintId, commentBy: $commentBy, parentId: $parentId, message: $message, created: $created, updated: $updated, reply: $reply)';
}


}

/// @nodoc
abstract mixin class $ComplaintsCommentCopyWith<$Res>  {
  factory $ComplaintsCommentCopyWith(ComplaintsComment value, $Res Function(ComplaintsComment) _then) = _$ComplaintsCommentCopyWithImpl;
@useResult
$Res call({
 String id, String complaintId, String? commentBy, String? parentId, String message, DateTime created, DateTime updated,@JsonKey(defaultValue: []) List<ComplaintsComment>? reply
});




}
/// @nodoc
class _$ComplaintsCommentCopyWithImpl<$Res>
    implements $ComplaintsCommentCopyWith<$Res> {
  _$ComplaintsCommentCopyWithImpl(this._self, this._then);

  final ComplaintsComment _self;
  final $Res Function(ComplaintsComment) _then;

/// Create a copy of ComplaintsComment
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? complaintId = null,Object? commentBy = freezed,Object? parentId = freezed,Object? message = null,Object? created = null,Object? updated = null,Object? reply = freezed,}) {
  return _then(_self.copyWith(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,complaintId: null == complaintId ? _self.complaintId : complaintId // ignore: cast_nullable_to_non_nullable
as String,commentBy: freezed == commentBy ? _self.commentBy : commentBy // ignore: cast_nullable_to_non_nullable
as String?,parentId: freezed == parentId ? _self.parentId : parentId // ignore: cast_nullable_to_non_nullable
as String?,message: null == message ? _self.message : message // ignore: cast_nullable_to_non_nullable
as String,created: null == created ? _self.created : created // ignore: cast_nullable_to_non_nullable
as DateTime,updated: null == updated ? _self.updated : updated // ignore: cast_nullable_to_non_nullable
as DateTime,reply: freezed == reply ? _self.reply : reply // ignore: cast_nullable_to_non_nullable
as List<ComplaintsComment>?,
  ));
}

}


/// Adds pattern-matching-related methods to [ComplaintsComment].
extension ComplaintsCommentPatterns on ComplaintsComment {
/// A variant of `map` that fallback to returning `orElse`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _ComplaintsComment value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _ComplaintsComment() when $default != null:
return $default(_that);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// Callbacks receives the raw object, upcasted.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case final Subclass2 value:
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _ComplaintsComment value)  $default,){
final _that = this;
switch (_that) {
case _ComplaintsComment():
return $default(_that);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `map` that fallback to returning `null`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _ComplaintsComment value)?  $default,){
final _that = this;
switch (_that) {
case _ComplaintsComment() when $default != null:
return $default(_that);case _:
  return null;

}
}
/// A variant of `when` that fallback to an `orElse` callback.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String id,  String complaintId,  String? commentBy,  String? parentId,  String message,  DateTime created,  DateTime updated, @JsonKey(defaultValue: [])  List<ComplaintsComment>? reply)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _ComplaintsComment() when $default != null:
return $default(_that.id,_that.complaintId,_that.commentBy,_that.parentId,_that.message,_that.created,_that.updated,_that.reply);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// As opposed to `map`, this offers destructuring.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case Subclass2(:final field2):
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String id,  String complaintId,  String? commentBy,  String? parentId,  String message,  DateTime created,  DateTime updated, @JsonKey(defaultValue: [])  List<ComplaintsComment>? reply)  $default,) {final _that = this;
switch (_that) {
case _ComplaintsComment():
return $default(_that.id,_that.complaintId,_that.commentBy,_that.parentId,_that.message,_that.created,_that.updated,_that.reply);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `when` that fallback to returning `null`
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String id,  String complaintId,  String? commentBy,  String? parentId,  String message,  DateTime created,  DateTime updated, @JsonKey(defaultValue: [])  List<ComplaintsComment>? reply)?  $default,) {final _that = this;
switch (_that) {
case _ComplaintsComment() when $default != null:
return $default(_that.id,_that.complaintId,_that.commentBy,_that.parentId,_that.message,_that.created,_that.updated,_that.reply);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _ComplaintsComment implements ComplaintsComment {
  const _ComplaintsComment({required this.id, required this.complaintId, this.commentBy, this.parentId, required this.message, required this.created, required this.updated, @JsonKey(defaultValue: []) final  List<ComplaintsComment>? reply}): _reply = reply;
  factory _ComplaintsComment.fromJson(Map<String, dynamic> json) => _$ComplaintsCommentFromJson(json);

@override final  String id;
@override final  String complaintId;
@override final  String? commentBy;
@override final  String? parentId;
@override final  String message;
@override final  DateTime created;
@override final  DateTime updated;
 final  List<ComplaintsComment>? _reply;
@override@JsonKey(defaultValue: []) List<ComplaintsComment>? get reply {
  final value = _reply;
  if (value == null) return null;
  if (_reply is EqualUnmodifiableListView) return _reply;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(value);
}


/// Create a copy of ComplaintsComment
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$ComplaintsCommentCopyWith<_ComplaintsComment> get copyWith => __$ComplaintsCommentCopyWithImpl<_ComplaintsComment>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$ComplaintsCommentToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _ComplaintsComment&&(identical(other.id, id) || other.id == id)&&(identical(other.complaintId, complaintId) || other.complaintId == complaintId)&&(identical(other.commentBy, commentBy) || other.commentBy == commentBy)&&(identical(other.parentId, parentId) || other.parentId == parentId)&&(identical(other.message, message) || other.message == message)&&(identical(other.created, created) || other.created == created)&&(identical(other.updated, updated) || other.updated == updated)&&const DeepCollectionEquality().equals(other._reply, _reply));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,complaintId,commentBy,parentId,message,created,updated,const DeepCollectionEquality().hash(_reply));

@override
String toString() {
  return 'ComplaintsComment(id: $id, complaintId: $complaintId, commentBy: $commentBy, parentId: $parentId, message: $message, created: $created, updated: $updated, reply: $reply)';
}


}

/// @nodoc
abstract mixin class _$ComplaintsCommentCopyWith<$Res> implements $ComplaintsCommentCopyWith<$Res> {
  factory _$ComplaintsCommentCopyWith(_ComplaintsComment value, $Res Function(_ComplaintsComment) _then) = __$ComplaintsCommentCopyWithImpl;
@override @useResult
$Res call({
 String id, String complaintId, String? commentBy, String? parentId, String message, DateTime created, DateTime updated,@JsonKey(defaultValue: []) List<ComplaintsComment>? reply
});




}
/// @nodoc
class __$ComplaintsCommentCopyWithImpl<$Res>
    implements _$ComplaintsCommentCopyWith<$Res> {
  __$ComplaintsCommentCopyWithImpl(this._self, this._then);

  final _ComplaintsComment _self;
  final $Res Function(_ComplaintsComment) _then;

/// Create a copy of ComplaintsComment
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? complaintId = null,Object? commentBy = freezed,Object? parentId = freezed,Object? message = null,Object? created = null,Object? updated = null,Object? reply = freezed,}) {
  return _then(_ComplaintsComment(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,complaintId: null == complaintId ? _self.complaintId : complaintId // ignore: cast_nullable_to_non_nullable
as String,commentBy: freezed == commentBy ? _self.commentBy : commentBy // ignore: cast_nullable_to_non_nullable
as String?,parentId: freezed == parentId ? _self.parentId : parentId // ignore: cast_nullable_to_non_nullable
as String?,message: null == message ? _self.message : message // ignore: cast_nullable_to_non_nullable
as String,created: null == created ? _self.created : created // ignore: cast_nullable_to_non_nullable
as DateTime,updated: null == updated ? _self.updated : updated // ignore: cast_nullable_to_non_nullable
as DateTime,reply: freezed == reply ? _self._reply : reply // ignore: cast_nullable_to_non_nullable
as List<ComplaintsComment>?,
  ));
}


}

// dart format on
