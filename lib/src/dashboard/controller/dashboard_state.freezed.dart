// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'dashboard_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$DashboardState {
  bool get showNavBar => throw _privateConstructorUsedError;
  Map<Key, bool> get allScreen => throw _privateConstructorUsedError;
  int get currentIndex => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $DashboardStateCopyWith<DashboardState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DashboardStateCopyWith<$Res> {
  factory $DashboardStateCopyWith(
          DashboardState value, $Res Function(DashboardState) then) =
      _$DashboardStateCopyWithImpl<$Res, DashboardState>;
  @useResult
  $Res call({bool showNavBar, Map<Key, bool> allScreen, int currentIndex});
}

/// @nodoc
class _$DashboardStateCopyWithImpl<$Res, $Val extends DashboardState>
    implements $DashboardStateCopyWith<$Res> {
  _$DashboardStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? showNavBar = null,
    Object? allScreen = null,
    Object? currentIndex = null,
  }) {
    return _then(_value.copyWith(
      showNavBar: null == showNavBar
          ? _value.showNavBar
          : showNavBar // ignore: cast_nullable_to_non_nullable
              as bool,
      allScreen: null == allScreen
          ? _value.allScreen
          : allScreen // ignore: cast_nullable_to_non_nullable
              as Map<Key, bool>,
      currentIndex: null == currentIndex
          ? _value.currentIndex
          : currentIndex // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_DashboardStateCopyWith<$Res>
    implements $DashboardStateCopyWith<$Res> {
  factory _$$_DashboardStateCopyWith(
          _$_DashboardState value, $Res Function(_$_DashboardState) then) =
      __$$_DashboardStateCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({bool showNavBar, Map<Key, bool> allScreen, int currentIndex});
}

/// @nodoc
class __$$_DashboardStateCopyWithImpl<$Res>
    extends _$DashboardStateCopyWithImpl<$Res, _$_DashboardState>
    implements _$$_DashboardStateCopyWith<$Res> {
  __$$_DashboardStateCopyWithImpl(
      _$_DashboardState _value, $Res Function(_$_DashboardState) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? showNavBar = null,
    Object? allScreen = null,
    Object? currentIndex = null,
  }) {
    return _then(_$_DashboardState(
      showNavBar: null == showNavBar
          ? _value.showNavBar
          : showNavBar // ignore: cast_nullable_to_non_nullable
              as bool,
      allScreen: null == allScreen
          ? _value._allScreen
          : allScreen // ignore: cast_nullable_to_non_nullable
              as Map<Key, bool>,
      currentIndex: null == currentIndex
          ? _value.currentIndex
          : currentIndex // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$_DashboardState extends _DashboardState {
  const _$_DashboardState(
      {this.showNavBar = true,
      final Map<Key, bool> allScreen = const {},
      this.currentIndex = 0})
      : _allScreen = allScreen,
        super._();

  @override
  @JsonKey()
  final bool showNavBar;
  final Map<Key, bool> _allScreen;
  @override
  @JsonKey()
  Map<Key, bool> get allScreen {
    if (_allScreen is EqualUnmodifiableMapView) return _allScreen;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableMapView(_allScreen);
  }

  @override
  @JsonKey()
  final int currentIndex;

  @override
  String toString() {
    return 'DashboardState(showNavBar: $showNavBar, allScreen: $allScreen, currentIndex: $currentIndex)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_DashboardState &&
            (identical(other.showNavBar, showNavBar) ||
                other.showNavBar == showNavBar) &&
            const DeepCollectionEquality()
                .equals(other._allScreen, _allScreen) &&
            (identical(other.currentIndex, currentIndex) ||
                other.currentIndex == currentIndex));
  }

  @override
  int get hashCode => Object.hash(runtimeType, showNavBar,
      const DeepCollectionEquality().hash(_allScreen), currentIndex);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_DashboardStateCopyWith<_$_DashboardState> get copyWith =>
      __$$_DashboardStateCopyWithImpl<_$_DashboardState>(this, _$identity);
}

abstract class _DashboardState extends DashboardState {
  const factory _DashboardState(
      {final bool showNavBar,
      final Map<Key, bool> allScreen,
      final int currentIndex}) = _$_DashboardState;
  const _DashboardState._() : super._();

  @override
  bool get showNavBar;
  @override
  Map<Key, bool> get allScreen;
  @override
  int get currentIndex;
  @override
  @JsonKey(ignore: true)
  _$$_DashboardStateCopyWith<_$_DashboardState> get copyWith =>
      throw _privateConstructorUsedError;
}
