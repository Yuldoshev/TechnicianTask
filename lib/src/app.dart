import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:food_app/src/localizations/string_hardcoded.dart';
import 'package:food_app/src/routing/app_router.dart';

import 'utils/color_resources.dart';

class MyApp extends ConsumerWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final goRouter = ref.watch(goRouterProvider);
    // final local = ref.watch(languageProvider);
    return MaterialApp.router(
      // locale: local,
      // supportedLocales: AppLocalizations.supportedLocales,
      // localizationsDelegates: AppLocalizations.localizationsDelegates,
      routerConfig: goRouter,
      debugShowCheckedModeBanner: false,
      restorationScopeId: 'app',
      onGenerateTitle: (BuildContext context) => ''.hardcoded,
      theme: ThemeData(
        visualDensity: VisualDensity.compact,
        primarySwatch: ColorResources.primarySwatch,
        highlightColor: ColorResources.colorWhite,
        splashColor: ColorResources.colorWhite,
        appBarTheme: const AppBarTheme(
          systemOverlayStyle: SystemUiOverlayStyle(
            statusBarColor: ColorResources.colorWhite,
            statusBarIconBrightness:
                Brightness.dark, // For Android (dark icons)
            statusBarBrightness: Brightness.light, // For iOS (dark icons)
          ),
          backgroundColor: ColorResources.colorWhite,
          foregroundColor: Colors.black,
          elevation: 0,
        ),
        elevatedButtonTheme: ElevatedButtonThemeData(
          style: ElevatedButton.styleFrom(
            foregroundColor: const Color.fromARGB(255, 140, 108, 1),
          ),
        ),
      ),
    );
  }
}
