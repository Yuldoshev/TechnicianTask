import 'package:flutter/material.dart';

class Keys {
  static const homeScreenKey = Key('home_screen');
  static const catalogScreenKey = Key('catalog_screen');
  static const basketScreenKey = Key('basket_screen');
  static const orderScreenKey = Key('order_screen');
  static const profileScreenKey = Key('profile_screen');
  static const storesScreenKey = Key('stores_screen');
  static const mapScreenKey = Key('map_screen');

  static Map<Key, bool> screensShowBottomNavigation = {
    homeScreenKey: true,
    catalogScreenKey: true,
    basketScreenKey: true,
    orderScreenKey: true,
    profileScreenKey: true,
    storesScreenKey: false,
    mapScreenKey: true,
  };
}
