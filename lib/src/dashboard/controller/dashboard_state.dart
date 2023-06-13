import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'dashboard_state.freezed.dart';

@freezed
abstract class DashboardState with _$DashboardState {
  const factory DashboardState({
    @Default(true) bool showNavBar,
    @Default({}) Map<Key, bool> allScreen,
    @Default(0) int currentIndex,
  }) = _DashboardState;

  const DashboardState._();
}
