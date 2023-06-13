import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:food_app/src/features/account/account_screen.dart';
import 'package:food_app/src/features/cart/basket_screen.dart';
import 'package:food_app/src/features/search/search_screen.dart';
import 'package:food_app/src/features/sub_category/sub_category_screen.dart';
import 'package:go_router/go_router.dart';

import '../dashboard/dashboard.dart';
import '../features/category/category_screen.dart';
import 'not_found_screen.dart';

enum AppRoute {
  home,
  search,
  cart,
  account,
  subcategory,
}

final _rootNavigatorKey = GlobalKey<NavigatorState>();
final _shellNavigatorKey = GlobalKey<NavigatorState>();

final goRouterProvider = Provider<GoRouter>((ref) {
  return GoRouter(
    initialLocation: '/home',
    navigatorKey: _rootNavigatorKey,
    debugLogDiagnostics: true,
    errorBuilder: (context, state) => const NotFoundScreen(),
    routes: [
      ShellRoute(
        navigatorKey: _shellNavigatorKey,
        builder: (context, state, child) {
          return Dashboard(
            context: context,
            child: child,
          );
        },
        routes: [
          GoRoute(
            path: '/home',
            name: AppRoute.home.name,
            pageBuilder: (context, state) => NoTransitionPage(
              key: state.pageKey,
              child: const HomeScreen(),
            ),
          ),
          GoRoute(
            path: '/search',
            name: AppRoute.search.name,
            pageBuilder: (context, state) => NoTransitionPage(
                key: state.pageKey, child: const SearchScreen()),
          ),
          GoRoute(
              path: '/cart',
              name: AppRoute.cart.name,
              pageBuilder: (context, state) {
                // final id = state.queryParameters['id'];
                return NoTransitionPage(
                  key: state.pageKey,
                  child: BasketScreen(),
                );
              }),
          GoRoute(
            path: '/account',
            name: AppRoute.account.name,
            pageBuilder: (context, state) {
              return NoTransitionPage(
                  key: state.pageKey, child: const AccountScreen());
            },
          ),
        ],
      ),
      GoRoute(
        path: '/subcategory/:id/:name',
        name: AppRoute.subcategory.name,
        builder: (BuildContext context, GoRouterState state) {
          final id = state.pathParameters['id'];
          final name = state.pathParameters['name'];
          return SubCategoryScreen(id: int.parse(id ?? ''), name: name ?? '');
        },
      ),
    ],
  );
});
