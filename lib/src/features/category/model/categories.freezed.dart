// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'categories.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

Categories _$CategoriesFromJson(Map<String, dynamic> json) {
  return _Categories.fromJson(json);
}

/// @nodoc
mixin _$Categories {
  @JsonKey(name: 'сategories')
  List<CategoryModel>? get category => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $CategoriesCopyWith<Categories> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CategoriesCopyWith<$Res> {
  factory $CategoriesCopyWith(
          Categories value, $Res Function(Categories) then) =
      _$CategoriesCopyWithImpl<$Res, Categories>;
  @useResult
  $Res call({@JsonKey(name: 'сategories') List<CategoryModel>? category});
}

/// @nodoc
class _$CategoriesCopyWithImpl<$Res, $Val extends Categories>
    implements $CategoriesCopyWith<$Res> {
  _$CategoriesCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? category = freezed,
  }) {
    return _then(_value.copyWith(
      category: freezed == category
          ? _value.category
          : category // ignore: cast_nullable_to_non_nullable
              as List<CategoryModel>?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_CategoriesCopyWith<$Res>
    implements $CategoriesCopyWith<$Res> {
  factory _$$_CategoriesCopyWith(
          _$_Categories value, $Res Function(_$_Categories) then) =
      __$$_CategoriesCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({@JsonKey(name: 'сategories') List<CategoryModel>? category});
}

/// @nodoc
class __$$_CategoriesCopyWithImpl<$Res>
    extends _$CategoriesCopyWithImpl<$Res, _$_Categories>
    implements _$$_CategoriesCopyWith<$Res> {
  __$$_CategoriesCopyWithImpl(
      _$_Categories _value, $Res Function(_$_Categories) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? category = freezed,
  }) {
    return _then(_$_Categories(
      category: freezed == category
          ? _value._category
          : category // ignore: cast_nullable_to_non_nullable
              as List<CategoryModel>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_Categories implements _Categories {
  const _$_Categories(
      {@JsonKey(name: 'сategories') final List<CategoryModel>? category})
      : _category = category;

  factory _$_Categories.fromJson(Map<String, dynamic> json) =>
      _$$_CategoriesFromJson(json);

  final List<CategoryModel>? _category;
  @override
  @JsonKey(name: 'сategories')
  List<CategoryModel>? get category {
    final value = _category;
    if (value == null) return null;
    if (_category is EqualUnmodifiableListView) return _category;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  String toString() {
    return 'Categories(category: $category)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Categories &&
            const DeepCollectionEquality().equals(other._category, _category));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_category));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_CategoriesCopyWith<_$_Categories> get copyWith =>
      __$$_CategoriesCopyWithImpl<_$_Categories>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_CategoriesToJson(
      this,
    );
  }
}

abstract class _Categories implements Categories {
  const factory _Categories(
          {@JsonKey(name: 'сategories') final List<CategoryModel>? category}) =
      _$_Categories;

  factory _Categories.fromJson(Map<String, dynamic> json) =
      _$_Categories.fromJson;

  @override
  @JsonKey(name: 'сategories')
  List<CategoryModel>? get category;
  @override
  @JsonKey(ignore: true)
  _$$_CategoriesCopyWith<_$_Categories> get copyWith =>
      throw _privateConstructorUsedError;
}
