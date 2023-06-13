// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'sub_categories.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

SubCategories _$SubCategoriesFromJson(Map<String, dynamic> json) {
  return _SubCategories.fromJson(json);
}

/// @nodoc
mixin _$SubCategories {
  @JsonKey(name: 'dishes')
  List<SubCategoryModel>? get subCategory => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $SubCategoriesCopyWith<SubCategories> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SubCategoriesCopyWith<$Res> {
  factory $SubCategoriesCopyWith(
          SubCategories value, $Res Function(SubCategories) then) =
      _$SubCategoriesCopyWithImpl<$Res, SubCategories>;
  @useResult
  $Res call({@JsonKey(name: 'dishes') List<SubCategoryModel>? subCategory});
}

/// @nodoc
class _$SubCategoriesCopyWithImpl<$Res, $Val extends SubCategories>
    implements $SubCategoriesCopyWith<$Res> {
  _$SubCategoriesCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? subCategory = freezed,
  }) {
    return _then(_value.copyWith(
      subCategory: freezed == subCategory
          ? _value.subCategory
          : subCategory // ignore: cast_nullable_to_non_nullable
              as List<SubCategoryModel>?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_SubCategoriesCopyWith<$Res>
    implements $SubCategoriesCopyWith<$Res> {
  factory _$$_SubCategoriesCopyWith(
          _$_SubCategories value, $Res Function(_$_SubCategories) then) =
      __$$_SubCategoriesCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({@JsonKey(name: 'dishes') List<SubCategoryModel>? subCategory});
}

/// @nodoc
class __$$_SubCategoriesCopyWithImpl<$Res>
    extends _$SubCategoriesCopyWithImpl<$Res, _$_SubCategories>
    implements _$$_SubCategoriesCopyWith<$Res> {
  __$$_SubCategoriesCopyWithImpl(
      _$_SubCategories _value, $Res Function(_$_SubCategories) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? subCategory = freezed,
  }) {
    return _then(_$_SubCategories(
      subCategory: freezed == subCategory
          ? _value._subCategory
          : subCategory // ignore: cast_nullable_to_non_nullable
              as List<SubCategoryModel>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_SubCategories implements _SubCategories {
  const _$_SubCategories(
      {@JsonKey(name: 'dishes') final List<SubCategoryModel>? subCategory})
      : _subCategory = subCategory;

  factory _$_SubCategories.fromJson(Map<String, dynamic> json) =>
      _$$_SubCategoriesFromJson(json);

  final List<SubCategoryModel>? _subCategory;
  @override
  @JsonKey(name: 'dishes')
  List<SubCategoryModel>? get subCategory {
    final value = _subCategory;
    if (value == null) return null;
    if (_subCategory is EqualUnmodifiableListView) return _subCategory;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  String toString() {
    return 'SubCategories(subCategory: $subCategory)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_SubCategories &&
            const DeepCollectionEquality()
                .equals(other._subCategory, _subCategory));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(_subCategory));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_SubCategoriesCopyWith<_$_SubCategories> get copyWith =>
      __$$_SubCategoriesCopyWithImpl<_$_SubCategories>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_SubCategoriesToJson(
      this,
    );
  }
}

abstract class _SubCategories implements SubCategories {
  const factory _SubCategories(
      {@JsonKey(name: 'dishes')
          final List<SubCategoryModel>? subCategory}) = _$_SubCategories;

  factory _SubCategories.fromJson(Map<String, dynamic> json) =
      _$_SubCategories.fromJson;

  @override
  @JsonKey(name: 'dishes')
  List<SubCategoryModel>? get subCategory;
  @override
  @JsonKey(ignore: true)
  _$$_SubCategoriesCopyWith<_$_SubCategories> get copyWith =>
      throw _privateConstructorUsedError;
}
