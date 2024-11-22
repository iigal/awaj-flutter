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
  int get id => throw _privateConstructorUsedError;
  String get title => throw _privateConstructorUsedError;
  int? get parentId => throw _privateConstructorUsedError;
  int? get sorting => throw _privateConstructorUsedError;
  @JsonKey(includeToJson: false)
  DateTime get createdAt => throw _privateConstructorUsedError;
  @JsonKey(includeToJson: false)
  DateTime get updatedAt => throw _privateConstructorUsedError;
  @JsonKey(defaultValue: [], includeToJson: false)
  List<Categories>? get children => throw _privateConstructorUsedError;

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
      {int id,
      String title,
      int? parentId,
      int? sorting,
      @JsonKey(includeToJson: false) DateTime createdAt,
      @JsonKey(includeToJson: false) DateTime updatedAt,
      @JsonKey(defaultValue: [], includeToJson: false)
      List<Categories>? children});
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
    Object? id = null,
    Object? title = null,
    Object? parentId = freezed,
    Object? sorting = freezed,
    Object? createdAt = null,
    Object? updatedAt = null,
    Object? children = freezed,
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
      parentId: freezed == parentId
          ? _value.parentId
          : parentId // ignore: cast_nullable_to_non_nullable
              as int?,
      sorting: freezed == sorting
          ? _value.sorting
          : sorting // ignore: cast_nullable_to_non_nullable
              as int?,
      createdAt: null == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
      updatedAt: null == updatedAt
          ? _value.updatedAt
          : updatedAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
      children: freezed == children
          ? _value.children
          : children // ignore: cast_nullable_to_non_nullable
              as List<Categories>?,
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
      {int id,
      String title,
      int? parentId,
      int? sorting,
      @JsonKey(includeToJson: false) DateTime createdAt,
      @JsonKey(includeToJson: false) DateTime updatedAt,
      @JsonKey(defaultValue: [], includeToJson: false)
      List<Categories>? children});
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
    Object? id = null,
    Object? title = null,
    Object? parentId = freezed,
    Object? sorting = freezed,
    Object? createdAt = null,
    Object? updatedAt = null,
    Object? children = freezed,
  }) {
    return _then(_$CategoriesImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      parentId: freezed == parentId
          ? _value.parentId
          : parentId // ignore: cast_nullable_to_non_nullable
              as int?,
      sorting: freezed == sorting
          ? _value.sorting
          : sorting // ignore: cast_nullable_to_non_nullable
              as int?,
      createdAt: null == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
      updatedAt: null == updatedAt
          ? _value.updatedAt
          : updatedAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
      children: freezed == children
          ? _value._children
          : children // ignore: cast_nullable_to_non_nullable
              as List<Categories>?,
    ));
  }
}

/// @nodoc

@JsonSerializable(fieldRename: FieldRename.snake)
class _$CategoriesImpl implements _Categories {
  const _$CategoriesImpl(
      {required this.id,
      required this.title,
      required this.parentId,
      required this.sorting,
      @JsonKey(includeToJson: false) required this.createdAt,
      @JsonKey(includeToJson: false) required this.updatedAt,
      @JsonKey(defaultValue: [], includeToJson: false)
      final List<Categories>? children})
      : _children = children;

  factory _$CategoriesImpl.fromJson(Map<String, dynamic> json) =>
      _$$CategoriesImplFromJson(json);

  @override
  final int id;
  @override
  final String title;
  @override
  final int? parentId;
  @override
  final int? sorting;
  @override
  @JsonKey(includeToJson: false)
  final DateTime createdAt;
  @override
  @JsonKey(includeToJson: false)
  final DateTime updatedAt;
  final List<Categories>? _children;
  @override
  @JsonKey(defaultValue: [], includeToJson: false)
  List<Categories>? get children {
    final value = _children;
    if (value == null) return null;
    if (_children is EqualUnmodifiableListView) return _children;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  String toString() {
    return 'Categories(id: $id, title: $title, parentId: $parentId, sorting: $sorting, createdAt: $createdAt, updatedAt: $updatedAt, children: $children)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CategoriesImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.parentId, parentId) ||
                other.parentId == parentId) &&
            (identical(other.sorting, sorting) || other.sorting == sorting) &&
            (identical(other.createdAt, createdAt) ||
                other.createdAt == createdAt) &&
            (identical(other.updatedAt, updatedAt) ||
                other.updatedAt == updatedAt) &&
            const DeepCollectionEquality().equals(other._children, _children));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, id, title, parentId, sorting,
      createdAt, updatedAt, const DeepCollectionEquality().hash(_children));

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
      {required final int id,
      required final String title,
      required final int? parentId,
      required final int? sorting,
      @JsonKey(includeToJson: false) required final DateTime createdAt,
      @JsonKey(includeToJson: false) required final DateTime updatedAt,
      @JsonKey(defaultValue: [], includeToJson: false)
      final List<Categories>? children}) = _$CategoriesImpl;

  factory _Categories.fromJson(Map<String, dynamic> json) =
      _$CategoriesImpl.fromJson;

  @override
  int get id;
  @override
  String get title;
  @override
  int? get parentId;
  @override
  int? get sorting;
  @override
  @JsonKey(includeToJson: false)
  DateTime get createdAt;
  @override
  @JsonKey(includeToJson: false)
  DateTime get updatedAt;
  @override
  @JsonKey(defaultValue: [], includeToJson: false)
  List<Categories>? get children;

  /// Create a copy of Categories
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$CategoriesImplCopyWith<_$CategoriesImpl> get copyWith =>
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
    return 'Complaints(id: $id, title: $title, description: $description, images: $images, userId: $userId, status: $status, isPublished: $isPublished, createdAt: $createdAt, updatedAt: $updatedAt, categories: $categories, subcategories: $subcategories)';
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
  int? get userId => throw _privateConstructorUsedError;
  @JsonKey(defaultValue: [])
  List<String>? get images => throw _privateConstructorUsedError;
  @JsonKey(defaultValue: "pending")
  String? get status => throw _privateConstructorUsedError;
  @JsonKey(defaultValue: 0)
  int? get isPublished => throw _privateConstructorUsedError;
  int get categoryId => throw _privateConstructorUsedError;
  int? get subCategoryId => throw _privateConstructorUsedError;

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
      int? userId,
      @JsonKey(defaultValue: []) List<String>? images,
      @JsonKey(defaultValue: "pending") String? status,
      @JsonKey(defaultValue: 0) int? isPublished,
      int categoryId,
      int? subCategoryId});
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
    Object? userId = freezed,
    Object? images = freezed,
    Object? status = freezed,
    Object? isPublished = freezed,
    Object? categoryId = null,
    Object? subCategoryId = freezed,
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
      userId: freezed == userId
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as int?,
      images: freezed == images
          ? _value.images
          : images // ignore: cast_nullable_to_non_nullable
              as List<String>?,
      status: freezed == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as String?,
      isPublished: freezed == isPublished
          ? _value.isPublished
          : isPublished // ignore: cast_nullable_to_non_nullable
              as int?,
      categoryId: null == categoryId
          ? _value.categoryId
          : categoryId // ignore: cast_nullable_to_non_nullable
              as int,
      subCategoryId: freezed == subCategoryId
          ? _value.subCategoryId
          : subCategoryId // ignore: cast_nullable_to_non_nullable
              as int?,
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
      int? userId,
      @JsonKey(defaultValue: []) List<String>? images,
      @JsonKey(defaultValue: "pending") String? status,
      @JsonKey(defaultValue: 0) int? isPublished,
      int categoryId,
      int? subCategoryId});
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
    Object? userId = freezed,
    Object? images = freezed,
    Object? status = freezed,
    Object? isPublished = freezed,
    Object? categoryId = null,
    Object? subCategoryId = freezed,
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
      userId: freezed == userId
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as int?,
      images: freezed == images
          ? _value._images
          : images // ignore: cast_nullable_to_non_nullable
              as List<String>?,
      status: freezed == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as String?,
      isPublished: freezed == isPublished
          ? _value.isPublished
          : isPublished // ignore: cast_nullable_to_non_nullable
              as int?,
      categoryId: null == categoryId
          ? _value.categoryId
          : categoryId // ignore: cast_nullable_to_non_nullable
              as int,
      subCategoryId: freezed == subCategoryId
          ? _value.subCategoryId
          : subCategoryId // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }
}

/// @nodoc

@JsonSerializable(fieldRename: FieldRename.snake)
class _$ComplaintsRequestImpl implements _ComplaintsRequest {
  const _$ComplaintsRequestImpl(
      {required this.title,
      required this.description,
      required this.userId,
      @JsonKey(defaultValue: []) final List<String>? images,
      @JsonKey(defaultValue: "pending") this.status,
      @JsonKey(defaultValue: 0) this.isPublished,
      required this.categoryId,
      this.subCategoryId})
      : _images = images;

  factory _$ComplaintsRequestImpl.fromJson(Map<String, dynamic> json) =>
      _$$ComplaintsRequestImplFromJson(json);

  @override
  final String title;
  @override
  final String description;
  @override
  final int? userId;
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
  @JsonKey(defaultValue: 0)
  final int? isPublished;
  @override
  final int categoryId;
  @override
  final int? subCategoryId;

  @override
  String toString() {
    return 'ComplaintsRequest(title: $title, description: $description, userId: $userId, images: $images, status: $status, isPublished: $isPublished, categoryId: $categoryId, subCategoryId: $subCategoryId)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ComplaintsRequestImpl &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.description, description) ||
                other.description == description) &&
            (identical(other.userId, userId) || other.userId == userId) &&
            const DeepCollectionEquality().equals(other._images, _images) &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.isPublished, isPublished) ||
                other.isPublished == isPublished) &&
            (identical(other.categoryId, categoryId) ||
                other.categoryId == categoryId) &&
            (identical(other.subCategoryId, subCategoryId) ||
                other.subCategoryId == subCategoryId));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      title,
      description,
      userId,
      const DeepCollectionEquality().hash(_images),
      status,
      isPublished,
      categoryId,
      subCategoryId);

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
      required final int? userId,
      @JsonKey(defaultValue: []) final List<String>? images,
      @JsonKey(defaultValue: "pending") final String? status,
      @JsonKey(defaultValue: 0) final int? isPublished,
      required final int categoryId,
      final int? subCategoryId}) = _$ComplaintsRequestImpl;

  factory _ComplaintsRequest.fromJson(Map<String, dynamic> json) =
      _$ComplaintsRequestImpl.fromJson;

  @override
  String get title;
  @override
  String get description;
  @override
  int? get userId;
  @override
  @JsonKey(defaultValue: [])
  List<String>? get images;
  @override
  @JsonKey(defaultValue: "pending")
  String? get status;
  @override
  @JsonKey(defaultValue: 0)
  int? get isPublished;
  @override
  int get categoryId;
  @override
  int? get subCategoryId;

  /// Create a copy of ComplaintsRequest
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ComplaintsRequestImplCopyWith<_$ComplaintsRequestImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
