// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'category_tag.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$CategoryTag {
  String get tag => throw _privateConstructorUsedError;
  bool get isSelected => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $CategoryTagCopyWith<CategoryTag> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CategoryTagCopyWith<$Res> {
  factory $CategoryTagCopyWith(
          CategoryTag value, $Res Function(CategoryTag) then) =
      _$CategoryTagCopyWithImpl<$Res, CategoryTag>;
  @useResult
  $Res call({String tag, bool isSelected});
}

/// @nodoc
class _$CategoryTagCopyWithImpl<$Res, $Val extends CategoryTag>
    implements $CategoryTagCopyWith<$Res> {
  _$CategoryTagCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? tag = null,
    Object? isSelected = null,
  }) {
    return _then(_value.copyWith(
      tag: null == tag
          ? _value.tag
          : tag // ignore: cast_nullable_to_non_nullable
              as String,
      isSelected: null == isSelected
          ? _value.isSelected
          : isSelected // ignore: cast_nullable_to_non_nullable
              as bool,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_CategoryTagCopyWith<$Res>
    implements $CategoryTagCopyWith<$Res> {
  factory _$$_CategoryTagCopyWith(
          _$_CategoryTag value, $Res Function(_$_CategoryTag) then) =
      __$$_CategoryTagCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String tag, bool isSelected});
}

/// @nodoc
class __$$_CategoryTagCopyWithImpl<$Res>
    extends _$CategoryTagCopyWithImpl<$Res, _$_CategoryTag>
    implements _$$_CategoryTagCopyWith<$Res> {
  __$$_CategoryTagCopyWithImpl(
      _$_CategoryTag _value, $Res Function(_$_CategoryTag) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? tag = null,
    Object? isSelected = null,
  }) {
    return _then(_$_CategoryTag(
      tag: null == tag
          ? _value.tag
          : tag // ignore: cast_nullable_to_non_nullable
              as String,
      isSelected: null == isSelected
          ? _value.isSelected
          : isSelected // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$_CategoryTag extends _CategoryTag {
  const _$_CategoryTag({required this.tag, this.isSelected = false})
      : super._();

  @override
  final String tag;
  @override
  @JsonKey()
  final bool isSelected;

  @override
  String toString() {
    return 'CategoryTag(tag: $tag, isSelected: $isSelected)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_CategoryTag &&
            (identical(other.tag, tag) || other.tag == tag) &&
            (identical(other.isSelected, isSelected) ||
                other.isSelected == isSelected));
  }

  @override
  int get hashCode => Object.hash(runtimeType, tag, isSelected);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_CategoryTagCopyWith<_$_CategoryTag> get copyWith =>
      __$$_CategoryTagCopyWithImpl<_$_CategoryTag>(this, _$identity);
}

abstract class _CategoryTag extends CategoryTag {
  const factory _CategoryTag(
      {required final String tag, final bool isSelected}) = _$_CategoryTag;
  const _CategoryTag._() : super._();

  @override
  String get tag;
  @override
  bool get isSelected;
  @override
  @JsonKey(ignore: true)
  _$$_CategoryTagCopyWith<_$_CategoryTag> get copyWith =>
      throw _privateConstructorUsedError;
}
