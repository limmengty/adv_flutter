import 'package:flutter/material.dart';
import 'package:flutter_s2_adv/cache_module/shop_module/minimal_shop/logics/cache_setting_logic.dart';
import 'package:flutter_s2_adv/cache_module/shop_module/minimal_shop/screens/cart_screen.dart';
import 'package:flutter_s2_adv/cache_module/shop_module/minimal_shop/screens/intro_screen.dart';
import 'package:flutter_s2_adv/cache_module/shop_module/minimal_shop/screens/setting_screen.dart';
import 'package:flutter_s2_adv/cache_module/shop_module/minimal_shop/screens/shop_screen.dart';
import 'package:flutter_s2_adv/cache_module/shop_module/minimal_shop/themes/dart_mode.dart';
import 'package:flutter_s2_adv/cache_module/shop_module/minimal_shop/themes/light_mode.dart';
import 'package:provider/provider.dart';

Widget mininalShopCacheAppWithProvider() {
  return MultiProvider(
    providers: [
      ChangeNotifierProvider(create: (context) => CacheSettingLogic()),
    ],
    child: const LodingScreen(),
  );
}

class CacheApp extends StatelessWidget {
  const CacheApp({super.key});

  @override
  Widget build(BuildContext context) {
    int modeIndex = context.watch<CacheSettingLogic>().modeIndex;

    ThemeMode themeMode = ThemeMode.light;

    switch (modeIndex) {
      case 1:
        themeMode = ThemeMode.light;
        break;
      case 2:
        themeMode = ThemeMode.dark;
        break;
      case 3:
        themeMode = ThemeMode.system;
        break;
      default:
        themeMode = ThemeMode.light;
    }

    return MaterialApp(
      themeMode: themeMode,
      theme: lightMode,
      darkTheme: dartMode,
      home: const IntroScreen(),
      debugShowCheckedModeBanner: false,
      routes: {
        '/intro_page': (context) => const IntroScreen(),
        '/shop_page': (context) =>  ShopScreen(),
        '/cart_page': (context) => const CartScreen(),
        '/setting_screen': (context) => const SettingScreen(),
      },
    );
  }
}

class LodingScreen extends StatelessWidget {
  const LodingScreen({super.key});
  @override
  Widget build(BuildContext context) {
    return Center(
      child: FutureBuilder(
        future: context.read<CacheSettingLogic>().initCache(),
        builder: (context, snapshot) {
          if (snapshot.connectionState == ConnectionState.done) {
            return const CacheApp();
          } else {
            return CircularProgressIndicator();
          }
        },
      ),
    );
  }
}
