// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'complaints_categories_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

Categories _$CategoriesFromJson(Map<String, dynamic> json) {
  return _Categories.fromJson(json);
}

/// @nodoc
mixin _$Categories {
  @JsonKey(name: "collectionId")
  String? get collectionId => throw _privateConstructorUsedError;
  @JsonKey(name: "collectionName")
  String? get collectionName => throw _privateConstructorUsedError;
  @JsonKey(name: "id")
  String? get id => throw _privateConstructorUsedError;
  @JsonKey(name: "name")
  String? get name => throw _privateConstructorUsedError;
  @JsonKey(name: "description")
  String? get description => throw _privateConstructorUsedError;
  @JsonKey(name: "assignedTo")
  String? get assignedTo => throw _privateConstructorUsedError;
  @JsonKey(name: "teamMembers")
  List<String>? get teamMembers => throw _privateConstructorUsedError;
  @JsonKey(name: "prefix")
  String? get prefix => throw _privateConstructorUsedError;
  @JsonKey(name: "code")
  String? get code => throw _privateConstructorUsedError;
  @JsonKey(name: "created")
  DateTime? get created => throw _privateConstructorUsedError;
  @JsonKey(name: "updated")
  DateTime? get updated => throw _privateConstructorUsedError;

  /// Serializes this Categories to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of Categories
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $CategoriesCopyWith<Categories> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CategoriesCopyWith<$Res> {
  factory $CategoriesCopyWith(
          Categories value, $Res Function(Categories) then) =
      _$CategoriesCopyWithImpl<$Res, Categories>;
  @useResult
  $Res call(
      {@JsonKey(name: "collectionId") String? collectionId,
      @JsonKey(name: "collectionName") String? collectionName,
      @JsonKey(name: "id") String? id,
      @JsonKey(name: "name") String? name,
      @JsonKey(name: "description") String? description,
      @JsonKey(name: "assignedTo") String? assignedTo,
      @JsonKey(name: "teamMembers") List<String>? teamMembers,
      @JsonKey(name: "prefix") String? prefix,
      @JsonKey(name: "code") String? code,
      @JsonKey(name: "created") DateTime? created,
      @JsonKey(name: "updated") DateTime? updated});
}

/// @nodoc
class _$CategoriesCopyWithImpl<$Res, $Val extends Categories>
    implements $CategoriesCopyWith<$Res> {
  _$CategoriesCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of Categories
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? collectionId = freezed,
    Object? collectionName = freezed,
    Object? id = freezed,
    Object? name = freezed,
    Object? description = freezed,
    Object? assignedTo = freezed,
    Object? teamMembers = freezed,
    Object? prefix = freezed,
    Object? code = freezed,
    Object? created = freezed,
    Object? updated = freezed,
  }) {
    return _then(_value.copyWith(
      collectionId: freezed == collectionId
          ? _value.collectionId
          : collectionId // ignore: cast_nullable_to_non_nullable
              as String?,
      collectionName: freezed == collectionName
          ? _value.collectionName
          : collectionName // ignore: cast_nullable_to_non_nullable
              as String?,
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      description: freezed == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
      assignedTo: freezed == assignedTo
          ? _value.assignedTo
          : assignedTo // ignore: cast_nullable_to_non_nullable
              as String?,
      teamMembers: freezed == teamMembers
          ? _value.teamMembers
          : teamMembers // ignore: cast_nullable_to_non_nullable
              as List<String>?,
      prefix: freezed == prefix
          ? _value.prefix
          : prefix // ignore: cast_nullable_to_non_nullable
              as String?,
      code: freezed == code
          ? _value.code
          : code // ignore: cast_nullable_to_non_nullable
              as String?,
      created: freezed == created
          ? _value.created
          : created // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      updated: freezed == updated
          ? _value.updated
          : updated // ignore: cast_nullable_to_non_nullable
              as DateTime?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$CategoriesImplCopyWith<$Res>
    implements $CategoriesCopyWith<$Res> {
  factory _$$CategoriesImplCopyWith(
          _$CategoriesImpl value, $Res Function(_$CategoriesImpl) then) =
      __$$CategoriesImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: "collectionId") String? collectionId,
      @JsonKey(name: "collectionName") String? collectionName,
      @JsonKey(name: "id") String? id,
      @JsonKey(name: "name") String? name,
      @JsonKey(name: "description") String? description,
      @JsonKey(name: "assignedTo") String? assignedTo,
      @JsonKey(name: "teamMembers") List<String>? teamMembers,
      @JsonKey(name: "prefix") String? prefix,
      @JsonKey(name: "code") String? code,
      @JsonKey(name: "created") DateTime? created,
      @JsonKey(name: "updated") DateTime? updated});
}

/// @nodoc
class __$$CategoriesImplCopyWithImpl<$Res>
    extends _$CategoriesCopyWithImpl<$Res, _$CategoriesImpl>
    implements _$$CategoriesImplCopyWith<$Res> {
  __$$CategoriesImplCopyWithImpl(
      _$CategoriesImpl _value, $Res Function(_$CategoriesImpl) _then)
      : super(_value, _then);

  /// Create a copy of Categories
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? collectionId = freezed,
    Object? collectionName = freezed,
    Object? id = freezed,
    Object? name = freezed,
    Object? description = freezed,
    Object? assignedTo = freezed,
    Object? teamMembers = freezed,
    Object? prefix = freezed,
    Object? code = freezed,
    Object? created = freezed,
    Object? updated = freezed,
  }) {
    return _then(_$CategoriesImpl(
      collectionId: freezed == collectionId
          ? _value.collectionId
          : collectionId // ignore: cast_nullable_to_non_nullable
              as String?,
      collectionName: freezed == collectionName
          ? _value.collectionName
          : collectionName // ignore: cast_nullable_to_non_nullable
              as String?,
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      description: freezed == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
      assignedTo: freezed == assignedTo
          ? _value.assignedTo
          : assignedTo // ignore: cast_nullable_to_non_nullable
              as String?,
      teamMembers: freezed == teamMembers
          ? _value._teamMembers
          : teamMembers // ignore: cast_nullable_to_non_nullable
              as List<String>?,
      prefix: freezed == prefix
          ? _value.prefix
          : prefix // ignore: cast_nullable_to_non_nullable
              as String?,
      code: freezed == code
          ? _value.code
          : code // ignore: cast_nullable_to_non_nullable
              as String?,
      created: freezed == created
          ? _value.created
          : created // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      updated: freezed == updated
          ? _value.updated
          : updated // ignore: cast_nullable_to_non_nullable
              as DateTime?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$CategoriesImpl implements _Categories {
  const _$CategoriesImpl(
      {@JsonKey(name: "collectionId") this.collectionId,
      @JsonKey(name: "collectionName") this.collectionName,
      @JsonKey(name: "id") this.id,
      @JsonKey(name: "name") this.name,
      @JsonKey(name: "description") this.description,
      @JsonKey(name: "assignedTo") this.assignedTo,
      @JsonKey(name: "teamMembers") final List<String>? teamMembers,
      @JsonKey(name: "prefix") this.prefix,
      @JsonKey(name: "code") this.code,
      @JsonKey(name: "created") this.created,
      @JsonKey(name: "updated") this.updated})
      : _teamMembers = teamMembers;

  factory _$CategoriesImpl.fromJson(Map<String, dynamic> json) =>
      _$$CategoriesImplFromJson(json);

  @override
  @JsonKey(name: "collectionId")
  final String? collectionId;
  @override
  @JsonKey(name: "collectionName")
  final String? collectionName;
  @override
  @JsonKey(name: "id")
  final String? id;
  @override
  @JsonKey(name: "name")
  final String? name;
  @override
  @JsonKey(name: "description")
  final String? description;
  @override
  @JsonKey(name: "assignedTo")
  final String? assignedTo;
  final List<String>? _teamMembers;
  @override
  @JsonKey(name: "teamMembers")
  List<String>? get teamMembers {
    final value = _teamMembers;
    if (value == null) return null;
    if (_teamMembers is EqualUnmodifiableListView) return _teamMembers;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  @JsonKey(name: "prefix")
  final String? prefix;
  @override
  @JsonKey(name: "code")
  final String? code;
  @override
  @JsonKey(name: "created")
  final DateTime? created;
  @override
  @JsonKey(name: "updated")
  final DateTime? updated;

  @override
  String toString() {
    return 'Categories(collectionId: $collectionId, collectionName: $collectionName, id: $id, name: $name, description: $description, assignedTo: $assignedTo, teamMembers: $teamMembers, prefix: $prefix, code: $code, created: $created, updated: $updated)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CategoriesImpl &&
            (identical(other.collectionId, collectionId) ||
                other.collectionId == collectionId) &&
            (identical(other.collectionName, collectionName) ||
                other.collectionName == collectionName) &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.description, description) ||
                other.description == description) &&
            (identical(other.assignedTo, assignedTo) ||
                other.assignedTo == assignedTo) &&
            const DeepCollectionEquality()
                .equals(other._teamMembers, _teamMembers) &&
            (identical(other.prefix, prefix) || other.prefix == prefix) &&
            (identical(other.code, code) || other.code == code) &&
            (identical(other.created, created) || other.created == created) &&
            (identical(other.updated, updated) || other.updated == updated));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      collectionId,
      collectionName,
      id,
      name,
      description,
      assignedTo,
      const DeepCollectionEquality().hash(_teamMembers),
      prefix,
      code,
      created,
      updated);

  /// Create a copy of Categories
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$CategoriesImplCopyWith<_$CategoriesImpl> get copyWith =>
      __$$CategoriesImplCopyWithImpl<_$CategoriesImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$CategoriesImplToJson(
      this,
    );
  }
}

abstract class _Categories implements Categories {
  const factory _Categories(
      {@JsonKey(name: "collectionId") final String? collectionId,
      @JsonKey(name: "collectionName") final String? collectionName,
      @JsonKey(name: "id") final String? id,
      @JsonKey(name: "name") final String? name,
      @JsonKey(name: "description") final String? description,
      @JsonKey(name: "assignedTo") final String? assignedTo,
      @JsonKey(name: "teamMembers") final List<String>? teamMembers,
      @JsonKey(name: "prefix") final String? prefix,
      @JsonKey(name: "code") final String? code,
      @JsonKey(name: "created") final DateTime? created,
      @JsonKey(name: "updated") final DateTime? updated}) = _$CategoriesImpl;

  factory _Categories.fromJson(Map<String, dynamic> json) =
      _$CategoriesImpl.fromJson;

  @override
  @JsonKey(name: "collectionId")
  String? get collectionId;
  @override
  @JsonKey(name: "collectionName")
  String? get collectionName;
  @override
  @JsonKey(name: "id")
  String? get id;
  @override
  @JsonKey(name: "name")
  String? get name;
  @override
  @JsonKey(name: "description")
  String? get description;
  @override
  @JsonKey(name: "assignedTo")
  String? get assignedTo;
  @override
  @JsonKey(name: "teamMembers")
  List<String>? get teamMembers;
  @override
  @JsonKey(name: "prefix")
  String? get prefix;
  @override
  @JsonKey(name: "code")
  String? get code;
  @override
  @JsonKey(name: "created")
  DateTime? get created;
  @override
  @JsonKey(name: "updated")
  DateTime? get updated;

  /// Create a copy of Categories
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$CategoriesImplCopyWith<_$CategoriesImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

ComplaintsCount _$ComplaintsCountFromJson(Map<String, dynamic> json) {
  return _ComplaintsCount.fromJson(json);
}

/// @nodoc
mixin _$ComplaintsCount {
  int get count => throw _privateConstructorUsedError;

  /// Serializes this ComplaintsCount to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of ComplaintsCount
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $ComplaintsCountCopyWith<ComplaintsCount> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ComplaintsCountCopyWith<$Res> {
  factory $ComplaintsCountCopyWith(
          ComplaintsCount value, $Res Function(ComplaintsCount) then) =
      _$ComplaintsCountCopyWithImpl<$Res, ComplaintsCount>;
  @useResult
  $Res call({int count});
}

/// @nodoc
class _$ComplaintsCountCopyWithImpl<$Res, $Val extends ComplaintsCount>
    implements $ComplaintsCountCopyWith<$Res> {
  _$ComplaintsCountCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of ComplaintsCount
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? count = null,
  }) {
    return _then(_value.copyWith(
      count: null == count
          ? _value.count
          : count // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ComplaintsCountImplCopyWith<$Res>
    implements $ComplaintsCountCopyWith<$Res> {
  factory _$$ComplaintsCountImplCopyWith(_$ComplaintsCountImpl value,
          $Res Function(_$ComplaintsCountImpl) then) =
      __$$ComplaintsCountImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int count});
}

/// @nodoc
class __$$ComplaintsCountImplCopyWithImpl<$Res>
    extends _$ComplaintsCountCopyWithImpl<$Res, _$ComplaintsCountImpl>
    implements _$$ComplaintsCountImplCopyWith<$Res> {
  __$$ComplaintsCountImplCopyWithImpl(
      _$ComplaintsCountImpl _value, $Res Function(_$ComplaintsCountImpl) _then)
      : super(_value, _then);

  /// Create a copy of ComplaintsCount
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? count = null,
  }) {
    return _then(_$ComplaintsCountImpl(
      count: null == count
          ? _value.count
          : count // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

@JsonSerializable(fieldRename: FieldRename.snake)
class _$ComplaintsCountImpl implements _ComplaintsCount {
  const _$ComplaintsCountImpl({required this.count});

  factory _$ComplaintsCountImpl.fromJson(Map<String, dynamic> json) =>
      _$$ComplaintsCountImplFromJson(json);

  @override
  final int count;

  @override
  String toString() {
    return 'ComplaintsCount(count: $count)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ComplaintsCountImpl &&
            (identical(other.count, count) || other.count == count));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, count);

  /// Create a copy of ComplaintsCount
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ComplaintsCountImplCopyWith<_$ComplaintsCountImpl> get copyWith =>
      __$$ComplaintsCountImplCopyWithImpl<_$ComplaintsCountImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ComplaintsCountImplToJson(
      this,
    );
  }
}

abstract class _ComplaintsCount implements ComplaintsCount {
  const factory _ComplaintsCount({required final int count}) =
      _$ComplaintsCountImpl;

  factory _ComplaintsCount.fromJson(Map<String, dynamic> json) =
      _$ComplaintsCountImpl.fromJson;

  @override
  int get count;

  /// Create a copy of ComplaintsCount
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ComplaintsCountImplCopyWith<_$ComplaintsCountImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

Complaints _$ComplaintsFromJson(Map<String, dynamic> json) {
  return _Complaints.fromJson(json);
}

/// @nodoc
mixin _$Complaints {
  int get id => throw _privateConstructorUsedError;
  String get title => throw _privateConstructorUsedError;
  String get description => throw _privateConstructorUsedError;
  @JsonKey(defaultValue: [])
  List<String>? get images => throw _privateConstructorUsedError;
  int get userId => throw _privateConstructorUsedError;
  String get status => throw _privateConstructorUsedError;
  int get progress => throw _privateConstructorUsedError;
  int? get isPublished => throw _privateConstructorUsedError;
  DateTime get createdAt => throw _privateConstructorUsedError;
  DateTime get updatedAt => throw _privateConstructorUsedError;
  List<Categories> get categories => throw _privateConstructorUsedError;
  List<Categories>? get subcategories => throw _privateConstructorUsedError;

  /// Serializes this Complaints to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of Complaints
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $ComplaintsCopyWith<Complaints> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ComplaintsCopyWith<$Res> {
  factory $ComplaintsCopyWith(
          Complaints value, $Res Function(Complaints) then) =
      _$ComplaintsCopyWithImpl<$Res, Complaints>;
  @useResult
  $Res call(
      {int id,
      String title,
      String description,
      @JsonKey(defaultValue: []) List<String>? images,
      int userId,
      String status,
      int progress,
      int? isPublished,
      DateTime createdAt,
      DateTime updatedAt,
      List<Categories> categories,
      List<Categories>? subcategories});
}

/// @nodoc
class _$ComplaintsCopyWithImpl<$Res, $Val extends Complaints>
    implements $ComplaintsCopyWith<$Res> {
  _$ComplaintsCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of Complaints
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? title = null,
    Object? description = null,
    Object? images = freezed,
    Object? userId = null,
    Object? status = null,
    Object? progress = null,
    Object? isPublished = freezed,
    Object? createdAt = null,
    Object? updatedAt = null,
    Object? categories = null,
    Object? subcategories = freezed,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      description: null == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
      images: freezed == images
          ? _value.images
          : images // ignore: cast_nullable_to_non_nullable
              as List<String>?,
      userId: null == userId
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as int,
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as String,
      progress: null == progress
          ? _value.progress
          : progress // ignore: cast_nullable_to_non_nullable
              as int,
      isPublished: freezed == isPublished
          ? _value.isPublished
          : isPublished // ignore: cast_nullable_to_non_nullable
              as int?,
      createdAt: null == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
      updatedAt: null == updatedAt
          ? _value.updatedAt
          : updatedAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
      categories: null == categories
          ? _value.categories
          : categories // ignore: cast_nullable_to_non_nullable
              as List<Categories>,
      subcategories: freezed == subcategories
          ? _value.subcategories
          : subcategories // ignore: cast_nullable_to_non_nullable
              as List<Categories>?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ComplaintsImplCopyWith<$Res>
    implements $ComplaintsCopyWith<$Res> {
  factory _$$ComplaintsImplCopyWith(
          _$ComplaintsImpl value, $Res Function(_$ComplaintsImpl) then) =
      __$$ComplaintsImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int id,
      String title,
      String description,
      @JsonKey(defaultValue: []) List<String>? images,
      int userId,
      String status,
      int progress,
      int? isPublished,
      DateTime createdAt,
      DateTime updatedAt,
      List<Categories> categories,
      List<Categories>? subcategories});
}

/// @nodoc
class __$$ComplaintsImplCopyWithImpl<$Res>
    extends _$ComplaintsCopyWithImpl<$Res, _$ComplaintsImpl>
    implements _$$ComplaintsImplCopyWith<$Res> {
  __$$ComplaintsImplCopyWithImpl(
      _$ComplaintsImpl _value, $Res Function(_$ComplaintsImpl) _then)
      : super(_value, _then);

  /// Create a copy of Complaints
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? title = null,
    Object? description = null,
    Object? images = freezed,
    Object? userId = null,
    Object? status = null,
    Object? progress = null,
    Object? isPublished = freezed,
    Object? createdAt = null,
    Object? updatedAt = null,
    Object? categories = null,
    Object? subcategories = freezed,
  }) {
    return _then(_$ComplaintsImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      description: null == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
      images: freezed == images
          ? _value._images
          : images // ignore: cast_nullable_to_non_nullable
              as List<String>?,
      userId: null == userId
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as int,
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as String,
      progress: null == progress
          ? _value.progress
          : progress // ignore: cast_nullable_to_non_nullable
              as int,
      isPublished: freezed == isPublished
          ? _value.isPublished
          : isPublished // ignore: cast_nullable_to_non_nullable
              as int?,
      createdAt: null == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
      updatedAt: null == updatedAt
          ? _value.updatedAt
          : updatedAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
      categories: null == categories
          ? _value._categories
          : categories // ignore: cast_nullable_to_non_nullable
              as List<Categories>,
      subcategories: freezed == subcategories
          ? _value._subcategories
          : subcategories // ignore: cast_nullable_to_non_nullable
              as List<Categories>?,
    ));
  }
}

/// @nodoc

@JsonSerializable(fieldRename: FieldRename.snake)
class _$ComplaintsImpl implements _Complaints {
  const _$ComplaintsImpl(
      {required this.id,
      required this.title,
      required this.description,
      @JsonKey(defaultValue: []) final List<String>? images,
      required this.userId,
      required this.status,
      required this.progress,
      this.isPublished,
      required this.createdAt,
      required this.updatedAt,
      required final List<Categories> categories,
      final List<Categories>? subcategories})
      : _images = images,
        _categories = categories,
        _subcategories = subcategories;

  factory _$ComplaintsImpl.fromJson(Map<String, dynamic> json) =>
      _$$ComplaintsImplFromJson(json);

  @override
  final int id;
  @override
  final String title;
  @override
  final String description;
  final List<String>? _images;
  @override
  @JsonKey(defaultValue: [])
  List<String>? get images {
    final value = _images;
    if (value == null) return null;
    if (_images is EqualUnmodifiableListView) return _images;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  final int userId;
  @override
  final String status;
  @override
  final int progress;
  @override
  final int? isPublished;
  @override
  final DateTime createdAt;
  @override
  final DateTime updatedAt;
  final List<Categories> _categories;
  @override
  List<Categories> get categories {
    if (_categories is EqualUnmodifiableListView) return _categories;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_categories);
  }

  final List<Categories>? _subcategories;
  @override
  List<Categories>? get subcategories {
    final value = _subcategories;
    if (value == null) return null;
    if (_subcategories is EqualUnmodifiableListView) return _subcategories;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  String toString() {
    return 'Complaints(id: $id, title: $title, description: $description, images: $images, userId: $userId, status: $status, progress: $progress, isPublished: $isPublished, createdAt: $createdAt, updatedAt: $updatedAt, categories: $categories, subcategories: $subcategories)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ComplaintsImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.description, description) ||
                other.description == description) &&
            const DeepCollectionEquality().equals(other._images, _images) &&
            (identical(other.userId, userId) || other.userId == userId) &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.progress, progress) ||
                other.progress == progress) &&
            (identical(other.isPublished, isPublished) ||
                other.isPublished == isPublished) &&
            (identical(other.createdAt, createdAt) ||
                other.createdAt == createdAt) &&
            (identical(other.updatedAt, updatedAt) ||
                other.updatedAt == updatedAt) &&
            const DeepCollectionEquality()
                .equals(other._categories, _categories) &&
            const DeepCollectionEquality()
                .equals(other._subcategories, _subcategories));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      id,
      title,
      description,
      const DeepCollectionEquality().hash(_images),
      userId,
      status,
      progress,
      isPublished,
      createdAt,
      updatedAt,
      const DeepCollectionEquality().hash(_categories),
      const DeepCollectionEquality().hash(_subcategories));

  /// Create a copy of Complaints
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ComplaintsImplCopyWith<_$ComplaintsImpl> get copyWith =>
      __$$ComplaintsImplCopyWithImpl<_$ComplaintsImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ComplaintsImplToJson(
      this,
    );
  }
}

abstract class _Complaints implements Complaints {
  const factory _Complaints(
      {required final int id,
      required final String title,
      required final String description,
      @JsonKey(defaultValue: []) final List<String>? images,
      required final int userId,
      required final String status,
      required final int progress,
      final int? isPublished,
      required final DateTime createdAt,
      required final DateTime updatedAt,
      required final List<Categories> categories,
      final List<Categories>? subcategories}) = _$ComplaintsImpl;

  factory _Complaints.fromJson(Map<String, dynamic> json) =
      _$ComplaintsImpl.fromJson;

  @override
  int get id;
  @override
  String get title;
  @override
  String get description;
  @override
  @JsonKey(defaultValue: [])
  List<String>? get images;
  @override
  int get userId;
  @override
  String get status;
  @override
  int get progress;
  @override
  int? get isPublished;
  @override
  DateTime get createdAt;
  @override
  DateTime get updatedAt;
  @override
  List<Categories> get categories;
  @override
  List<Categories>? get subcategories;

  /// Create a copy of Complaints
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ComplaintsImplCopyWith<_$ComplaintsImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

ComplaintsRequest _$ComplaintsRequestFromJson(Map<String, dynamic> json) {
  return _ComplaintsRequest.fromJson(json);
}

/// @nodoc
mixin _$ComplaintsRequest {
  String get title => throw _privateConstructorUsedError;
  String get description => throw _privateConstructorUsedError;
  String? get complaintBy => throw _privateConstructorUsedError;
  @JsonKey(defaultValue: [])
  List<String>? get images => throw _privateConstructorUsedError;
  @JsonKey(defaultValue: "pending")
  String? get status => throw _privateConstructorUsedError;
  String? get complaintCategoryId => throw _privateConstructorUsedError;
  String? get complaintSubCategoryId => throw _privateConstructorUsedError;

  /// Serializes this ComplaintsRequest to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of ComplaintsRequest
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $ComplaintsRequestCopyWith<ComplaintsRequest> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ComplaintsRequestCopyWith<$Res> {
  factory $ComplaintsRequestCopyWith(
          ComplaintsRequest value, $Res Function(ComplaintsRequest) then) =
      _$ComplaintsRequestCopyWithImpl<$Res, ComplaintsRequest>;
  @useResult
  $Res call(
      {String title,
      String description,
      String? complaintBy,
      @JsonKey(defaultValue: []) List<String>? images,
      @JsonKey(defaultValue: "pending") String? status,
      String? complaintCategoryId,
      String? complaintSubCategoryId});
}

/// @nodoc
class _$ComplaintsRequestCopyWithImpl<$Res, $Val extends ComplaintsRequest>
    implements $ComplaintsRequestCopyWith<$Res> {
  _$ComplaintsRequestCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of ComplaintsRequest
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? title = null,
    Object? description = null,
    Object? complaintBy = freezed,
    Object? images = freezed,
    Object? status = freezed,
    Object? complaintCategoryId = freezed,
    Object? complaintSubCategoryId = freezed,
  }) {
    return _then(_value.copyWith(
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      description: null == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
      complaintBy: freezed == complaintBy
          ? _value.complaintBy
          : complaintBy // ignore: cast_nullable_to_non_nullable
              as String?,
      images: freezed == images
          ? _value.images
          : images // ignore: cast_nullable_to_non_nullable
              as List<String>?,
      status: freezed == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as String?,
      complaintCategoryId: freezed == complaintCategoryId
          ? _value.complaintCategoryId
          : complaintCategoryId // ignore: cast_nullable_to_non_nullable
              as String?,
      complaintSubCategoryId: freezed == complaintSubCategoryId
          ? _value.complaintSubCategoryId
          : complaintSubCategoryId // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ComplaintsRequestImplCopyWith<$Res>
    implements $ComplaintsRequestCopyWith<$Res> {
  factory _$$ComplaintsRequestImplCopyWith(_$ComplaintsRequestImpl value,
          $Res Function(_$ComplaintsRequestImpl) then) =
      __$$ComplaintsRequestImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String title,
      String description,
      String? complaintBy,
      @JsonKey(defaultValue: []) List<String>? images,
      @JsonKey(defaultValue: "pending") String? status,
      String? complaintCategoryId,
      String? complaintSubCategoryId});
}

/// @nodoc
class __$$ComplaintsRequestImplCopyWithImpl<$Res>
    extends _$ComplaintsRequestCopyWithImpl<$Res, _$ComplaintsRequestImpl>
    implements _$$ComplaintsRequestImplCopyWith<$Res> {
  __$$ComplaintsRequestImplCopyWithImpl(_$ComplaintsRequestImpl _value,
      $Res Function(_$ComplaintsRequestImpl) _then)
      : super(_value, _then);

  /// Create a copy of ComplaintsRequest
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? title = null,
    Object? description = null,
    Object? complaintBy = freezed,
    Object? images = freezed,
    Object? status = freezed,
    Object? complaintCategoryId = freezed,
    Object? complaintSubCategoryId = freezed,
  }) {
    return _then(_$ComplaintsRequestImpl(
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      description: null == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
      complaintBy: freezed == complaintBy
          ? _value.complaintBy
          : complaintBy // ignore: cast_nullable_to_non_nullable
              as String?,
      images: freezed == images
          ? _value._images
          : images // ignore: cast_nullable_to_non_nullable
              as List<String>?,
      status: freezed == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as String?,
      complaintCategoryId: freezed == complaintCategoryId
          ? _value.complaintCategoryId
          : complaintCategoryId // ignore: cast_nullable_to_non_nullable
              as String?,
      complaintSubCategoryId: freezed == complaintSubCategoryId
          ? _value.complaintSubCategoryId
          : complaintSubCategoryId // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

@JsonSerializable(fieldRename: FieldRename.snake)
class _$ComplaintsRequestImpl implements _ComplaintsRequest {
  const _$ComplaintsRequestImpl(
      {required this.title,
      required this.description,
      required this.complaintBy,
      @JsonKey(defaultValue: []) final List<String>? images,
      @JsonKey(defaultValue: "pending") this.status,
      this.complaintCategoryId,
      this.complaintSubCategoryId})
      : _images = images;

  factory _$ComplaintsRequestImpl.fromJson(Map<String, dynamic> json) =>
      _$$ComplaintsRequestImplFromJson(json);

  @override
  final String title;
  @override
  final String description;
  @override
  final String? complaintBy;
  final List<String>? _images;
  @override
  @JsonKey(defaultValue: [])
  List<String>? get images {
    final value = _images;
    if (value == null) return null;
    if (_images is EqualUnmodifiableListView) return _images;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  @JsonKey(defaultValue: "pending")
  final String? status;
  @override
  final String? complaintCategoryId;
  @override
  final String? complaintSubCategoryId;

  @override
  String toString() {
    return 'ComplaintsRequest(title: $title, description: $description, complaintBy: $complaintBy, images: $images, status: $status, complaintCategoryId: $complaintCategoryId, complaintSubCategoryId: $complaintSubCategoryId)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ComplaintsRequestImpl &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.description, description) ||
                other.description == description) &&
            (identical(other.complaintBy, complaintBy) ||
                other.complaintBy == complaintBy) &&
            const DeepCollectionEquality().equals(other._images, _images) &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.complaintCategoryId, complaintCategoryId) ||
                other.complaintCategoryId == complaintCategoryId) &&
            (identical(other.complaintSubCategoryId, complaintSubCategoryId) ||
                other.complaintSubCategoryId == complaintSubCategoryId));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      title,
      description,
      complaintBy,
      const DeepCollectionEquality().hash(_images),
      status,
      complaintCategoryId,
      complaintSubCategoryId);

  /// Create a copy of ComplaintsRequest
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ComplaintsRequestImplCopyWith<_$ComplaintsRequestImpl> get copyWith =>
      __$$ComplaintsRequestImplCopyWithImpl<_$ComplaintsRequestImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ComplaintsRequestImplToJson(
      this,
    );
  }
}

abstract class _ComplaintsRequest implements ComplaintsRequest {
  const factory _ComplaintsRequest(
      {required final String title,
      required final String description,
      required final String? complaintBy,
      @JsonKey(defaultValue: []) final List<String>? images,
      @JsonKey(defaultValue: "pending") final String? status,
      final String? complaintCategoryId,
      final String? complaintSubCategoryId}) = _$ComplaintsRequestImpl;

  factory _ComplaintsRequest.fromJson(Map<String, dynamic> json) =
      _$ComplaintsRequestImpl.fromJson;

  @override
  String get title;
  @override
  String get description;
  @override
  String? get complaintBy;
  @override
  @JsonKey(defaultValue: [])
  List<String>? get images;
  @override
  @JsonKey(defaultValue: "pending")
  String? get status;
  @override
  String? get complaintCategoryId;
  @override
  String? get complaintSubCategoryId;

  /// Create a copy of ComplaintsRequest
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ComplaintsRequestImplCopyWith<_$ComplaintsRequestImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

ComplaintCommentRequest _$ComplaintCommentRequestFromJson(
    Map<String, dynamic> json) {
  return _ComplaintCommentRequest.fromJson(json);
}

/// @nodoc
mixin _$ComplaintCommentRequest {
  String get message => throw _privateConstructorUsedError;
  int? get userId => throw _privateConstructorUsedError;
  int? get parentId => throw _privateConstructorUsedError;
  int get issueId => throw _privateConstructorUsedError;

  /// Serializes this ComplaintCommentRequest to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of ComplaintCommentRequest
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $ComplaintCommentRequestCopyWith<ComplaintCommentRequest> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ComplaintCommentRequestCopyWith<$Res> {
  factory $ComplaintCommentRequestCopyWith(ComplaintCommentRequest value,
          $Res Function(ComplaintCommentRequest) then) =
      _$ComplaintCommentRequestCopyWithImpl<$Res, ComplaintCommentRequest>;
  @useResult
  $Res call({String message, int? userId, int? parentId, int issueId});
}

/// @nodoc
class _$ComplaintCommentRequestCopyWithImpl<$Res,
        $Val extends ComplaintCommentRequest>
    implements $ComplaintCommentRequestCopyWith<$Res> {
  _$ComplaintCommentRequestCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of ComplaintCommentRequest
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? message = null,
    Object? userId = freezed,
    Object? parentId = freezed,
    Object? issueId = null,
  }) {
    return _then(_value.copyWith(
      message: null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
      userId: freezed == userId
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as int?,
      parentId: freezed == parentId
          ? _value.parentId
          : parentId // ignore: cast_nullable_to_non_nullable
              as int?,
      issueId: null == issueId
          ? _value.issueId
          : issueId // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ComplaintCommentRequestImplCopyWith<$Res>
    implements $ComplaintCommentRequestCopyWith<$Res> {
  factory _$$ComplaintCommentRequestImplCopyWith(
          _$ComplaintCommentRequestImpl value,
          $Res Function(_$ComplaintCommentRequestImpl) then) =
      __$$ComplaintCommentRequestImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String message, int? userId, int? parentId, int issueId});
}

/// @nodoc
class __$$ComplaintCommentRequestImplCopyWithImpl<$Res>
    extends _$ComplaintCommentRequestCopyWithImpl<$Res,
        _$ComplaintCommentRequestImpl>
    implements _$$ComplaintCommentRequestImplCopyWith<$Res> {
  __$$ComplaintCommentRequestImplCopyWithImpl(
      _$ComplaintCommentRequestImpl _value,
      $Res Function(_$ComplaintCommentRequestImpl) _then)
      : super(_value, _then);

  /// Create a copy of ComplaintCommentRequest
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? message = null,
    Object? userId = freezed,
    Object? parentId = freezed,
    Object? issueId = null,
  }) {
    return _then(_$ComplaintCommentRequestImpl(
      message: null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
      userId: freezed == userId
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as int?,
      parentId: freezed == parentId
          ? _value.parentId
          : parentId // ignore: cast_nullable_to_non_nullable
              as int?,
      issueId: null == issueId
          ? _value.issueId
          : issueId // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

@JsonSerializable(fieldRename: FieldRename.snake)
class _$ComplaintCommentRequestImpl implements _ComplaintCommentRequest {
  const _$ComplaintCommentRequestImpl(
      {required this.message,
      required this.userId,
      this.parentId,
      required this.issueId});

  factory _$ComplaintCommentRequestImpl.fromJson(Map<String, dynamic> json) =>
      _$$ComplaintCommentRequestImplFromJson(json);

  @override
  final String message;
  @override
  final int? userId;
  @override
  final int? parentId;
  @override
  final int issueId;

  @override
  String toString() {
    return 'ComplaintCommentRequest(message: $message, userId: $userId, parentId: $parentId, issueId: $issueId)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ComplaintCommentRequestImpl &&
            (identical(other.message, message) || other.message == message) &&
            (identical(other.userId, userId) || other.userId == userId) &&
            (identical(other.parentId, parentId) ||
                other.parentId == parentId) &&
            (identical(other.issueId, issueId) || other.issueId == issueId));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode =>
      Object.hash(runtimeType, message, userId, parentId, issueId);

  /// Create a copy of ComplaintCommentRequest
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ComplaintCommentRequestImplCopyWith<_$ComplaintCommentRequestImpl>
      get copyWith => __$$ComplaintCommentRequestImplCopyWithImpl<
          _$ComplaintCommentRequestImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ComplaintCommentRequestImplToJson(
      this,
    );
  }
}

abstract class _ComplaintCommentRequest implements ComplaintCommentRequest {
  const factory _ComplaintCommentRequest(
      {required final String message,
      required final int? userId,
      final int? parentId,
      required final int issueId}) = _$ComplaintCommentRequestImpl;

  factory _ComplaintCommentRequest.fromJson(Map<String, dynamic> json) =
      _$ComplaintCommentRequestImpl.fromJson;

  @override
  String get message;
  @override
  int? get userId;
  @override
  int? get parentId;
  @override
  int get issueId;

  /// Create a copy of ComplaintCommentRequest
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ComplaintCommentRequestImplCopyWith<_$ComplaintCommentRequestImpl>
      get copyWith => throw _privateConstructorUsedError;
}
