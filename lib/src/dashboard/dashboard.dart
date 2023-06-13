import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_svg/svg.dart';
import 'package:go_router/go_router.dart';

import '../constants/app_sizes.dart';
import '../utils/color_resources.dart';
import '../utils/images.dart';

import 'controller/dashboard_controller.dart';

class Dashboard extends ConsumerStatefulWidget {
  const Dashboard({
    Key? key,
    required this.child,
    required this.context,
  }) : super(key: key);

  final Widget child;
  final BuildContext context;

  @override
  ConsumerState<Dashboard> createState() => _DashboardState();
}

class _DashboardState extends ConsumerState<Dashboard> {
  int _selectedIndex = 0;
  DateTime? _backPressTime;

  final List<String> _pagesLocation = [
    '/home',
    '/search',
    '/cart',
    '/account',
  ];

  @override
  initState() {
    super.initState();
  }

  _onItemTapped(int index) {
    context.go(_pagesLocation[index]);
  }

  @override
  Widget build(BuildContext context) {
    _selectedIndex = ref.watch(dashboardProvider).currentIndex;
    final GoRouter router = GoRouter.of(context);
    return WillPopScope(
      onWillPop: () async {
        if (router.location != '/home') {
          context.go('/home');
          return false; // Prevent the app from exiting
        } else {
          final currentTime = DateTime.now();

          if (_backPressTime == null ||
              currentTime.difference(_backPressTime!) >
                  const Duration(milliseconds: 2000)) {
            _backPressTime = currentTime;
            // Fluttertoast.showToast(msg: 'Press back again to exit');
            return false;
          } else {
            // Fluttertoast.cancel();
            return true;
          }
        }
      },
      child: Scaffold(
          body: widget.child,
          bottomNavigationBar: Stack(
            children: [
              BottomNavigationBar(
                elevation: 0,
                backgroundColor: ColorResources.colorWhite,
                selectedFontSize: Pixels.px12,
                unselectedFontSize: Pixels.px10,
                type: BottomNavigationBarType.fixed,
                unselectedItemColor: ColorResources.colorA5A9B2,
                selectedItemColor: ColorResources.color3364E0,
                onTap: (index) => _onItemTapped(index),
                items: _itemsBottomNavigationBar(context),
                currentIndex: _selectedIndex,
              ),
              const Positioned(
                bottom: 80,
                left: 0,
                right: 0,
                top: 0,
                child: Divider(
                  thickness: 1,
                  color: ColorResources.colorE8E9EC,
                ),
              ),
            ],
          )),
    );
  }

  List<BottomNavigationBarItem> _itemsBottomNavigationBar(
      BuildContext context) {
    return [
      BottomNavigationBarItem(
        label: 'Главная',
        icon: SvgPicture.asset(
          Images.home,
          colorFilter: const ColorFilter.mode(
              ColorResources.colorA5A9B2, BlendMode.srcIn),
        ),
        activeIcon: SvgPicture.asset(
          Images.home,
          colorFilter: const ColorFilter.mode(
              ColorResources.color3364E0, BlendMode.srcIn),
        ),
      ),
      BottomNavigationBarItem(
        label: 'Поиск',
        icon: SvgPicture.asset(
          Images.search,
          colorFilter: const ColorFilter.mode(
              ColorResources.colorA5A9B2, BlendMode.srcIn),
        ),
        activeIcon: SvgPicture.asset(
          Images.search,
          colorFilter: const ColorFilter.mode(
              ColorResources.color3364E0, BlendMode.srcIn),
        ),
      ),
      BottomNavigationBarItem(
        label: 'Корзина',
        icon: SvgPicture.asset(
          Images.cart,
          colorFilter: const ColorFilter.mode(
              ColorResources.colorA5A9B2, BlendMode.srcIn),
        ),
        activeIcon: SvgPicture.asset(
          Images.cart,
          colorFilter: const ColorFilter.mode(
              ColorResources.color3364E0, BlendMode.srcIn),
        ),
      ),
      BottomNavigationBarItem(
        label: 'Аккаунт',
        icon: SvgPicture.asset(
          Images.account,
          colorFilter: const ColorFilter.mode(
              ColorResources.colorA5A9B2, BlendMode.srcIn),
        ),
        activeIcon: SvgPicture.asset(
          Images.account,
          colorFilter: const ColorFilter.mode(
              ColorResources.color3364E0, BlendMode.srcIn),
        ),
      ),
    ];
  }
}
