// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'controller_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$SubCategoryState {
  List<SubCategoryModel> get subCategoryList =>
      throw _privateConstructorUsedError;
  List<CategoryTag> get tags => throw _privateConstructorUsedError;
  bool get isLoading => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $SubCategoryStateCopyWith<SubCategoryState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SubCategoryStateCopyWith<$Res> {
  factory $SubCategoryStateCopyWith(
          SubCategoryState value, $Res Function(SubCategoryState) then) =
      _$SubCategoryStateCopyWithImpl<$Res, SubCategoryState>;
  @useResult
  $Res call(
      {List<SubCategoryModel> subCategoryList,
      List<CategoryTag> tags,
      bool isLoading});
}

/// @nodoc
class _$SubCategoryStateCopyWithImpl<$Res, $Val extends SubCategoryState>
    implements $SubCategoryStateCopyWith<$Res> {
  _$SubCategoryStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? subCategoryList = null,
    Object? tags = null,
    Object? isLoading = null,
  }) {
    return _then(_value.copyWith(
      subCategoryList: null == subCategoryList
          ? _value.subCategoryList
          : subCategoryList // ignore: cast_nullable_to_non_nullable
              as List<SubCategoryModel>,
      tags: null == tags
          ? _value.tags
          : tags // ignore: cast_nullable_to_non_nullable
              as List<CategoryTag>,
      isLoading: null == isLoading
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_SubCategoryStateCopyWith<$Res>
    implements $SubCategoryStateCopyWith<$Res> {
  factory _$$_SubCategoryStateCopyWith(
          _$_SubCategoryState value, $Res Function(_$_SubCategoryState) then) =
      __$$_SubCategoryStateCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {List<SubCategoryModel> subCategoryList,
      List<CategoryTag> tags,
      bool isLoading});
}

/// @nodoc
class __$$_SubCategoryStateCopyWithImpl<$Res>
    extends _$SubCategoryStateCopyWithImpl<$Res, _$_SubCategoryState>
    implements _$$_SubCategoryStateCopyWith<$Res> {
  __$$_SubCategoryStateCopyWithImpl(
      _$_SubCategoryState _value, $Res Function(_$_SubCategoryState) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? subCategoryList = null,
    Object? tags = null,
    Object? isLoading = null,
  }) {
    return _then(_$_SubCategoryState(
      subCategoryList: null == subCategoryList
          ? _value._subCategoryList
          : subCategoryList // ignore: cast_nullable_to_non_nullable
              as List<SubCategoryModel>,
      tags: null == tags
          ? _value._tags
          : tags // ignore: cast_nullable_to_non_nullable
              as List<CategoryTag>,
      isLoading: null == isLoading
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$_SubCategoryState extends _SubCategoryState {
  const _$_SubCategoryState(
      {final List<SubCategoryModel> subCategoryList = const [],
      final List<CategoryTag> tags = const [],
      this.isLoading = true})
      : _subCategoryList = subCategoryList,
        _tags = tags,
        super._();

  final List<SubCategoryModel> _subCategoryList;
  @override
  @JsonKey()
  List<SubCategoryModel> get subCategoryList {
    if (_subCategoryList is EqualUnmodifiableListView) return _subCategoryList;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_subCategoryList);
  }

  final List<CategoryTag> _tags;
  @override
  @JsonKey()
  List<CategoryTag> get tags {
    if (_tags is EqualUnmodifiableListView) return _tags;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_tags);
  }

  @override
  @JsonKey()
  final bool isLoading;

  @override
  String toString() {
    return 'SubCategoryState(subCategoryList: $subCategoryList, tags: $tags, isLoading: $isLoading)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_SubCategoryState &&
            const DeepCollectionEquality()
                .equals(other._subCategoryList, _subCategoryList) &&
            const DeepCollectionEquality().equals(other._tags, _tags) &&
            (identical(other.isLoading, isLoading) ||
                other.isLoading == isLoading));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(_subCategoryList),
      const DeepCollectionEquality().hash(_tags),
      isLoading);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_SubCategoryStateCopyWith<_$_SubCategoryState> get copyWith =>
      __$$_SubCategoryStateCopyWithImpl<_$_SubCategoryState>(this, _$identity);
}

abstract class _SubCategoryState extends SubCategoryState {
  const factory _SubCategoryState(
      {final List<SubCategoryModel> subCategoryList,
      final List<CategoryTag> tags,
      final bool isLoading}) = _$_SubCategoryState;
  const _SubCategoryState._() : super._();

  @override
  List<SubCategoryModel> get subCategoryList;
  @override
  List<CategoryTag> get tags;
  @override
  bool get isLoading;
  @override
  @JsonKey(ignore: true)
  _$$_SubCategoryStateCopyWith<_$_SubCategoryState> get copyWith =>
      throw _privateConstructorUsedError;
}
