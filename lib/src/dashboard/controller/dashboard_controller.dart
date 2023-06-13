import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../constants/keys.dart';
import '../../routing/app_router.dart';
import 'dashboard_state.dart';

final dashboardProvider =
    StateNotifierProvider.autoDispose<DashboardNotifier, DashboardState>(
        (ref) => DashboardNotifier(ref));

class DashboardNotifier extends StateNotifier<DashboardState> {
  final Ref ref;

  DashboardNotifier(this.ref) : super(const DashboardState()) {
    initScreen();
    _showHideNavBarState();
  }
  final List<String> _pagesLocation = [
    '/home',
    '/search',
    '/cart',
    '/account',
  ];

  _showHideNavBarState() {
    final router = ref.watch(goRouterProvider);
    bool isShow = false;
    router.addListener(() {
      var url = router.location;
      final secondSlashIndex = url.indexOf('/', url.indexOf('/') + 1);
      if (secondSlashIndex != -1) {
        url = url.substring(0, secondSlashIndex);
      }
      if (state.showNavBar != isShow) {
        if (mounted) {
          state = state.copyWith(showNavBar: isShow);
        }
      }
      if (_pagesLocation.contains(url)) {
        int index = _pagesLocation.indexWhere((element) => element == url);
        if (state.currentIndex != index) {
          if (mounted) {
            state = state.copyWith(currentIndex: index);
          }
        }
      }
    });
  }

  initScreen() {
    state = state.copyWith(allScreen: Keys.screensShowBottomNavigation);
  }

  setCurrentIndex(int index) {
    if (mounted) {
      state = state.copyWith(currentIndex: index);
    }
  }

  bool getCurrent(Key screenKey) {
    return state.allScreen[screenKey]!;
  }
}
