import 'package:flutter/material.dart';
import 'package:flutter_s2_adv/adv_state_module/logics/product_logic.dart';
import 'package:flutter_s2_adv/adv_state_module/screens/product_main_screen.dart';
import 'package:provider/provider.dart';

Widget advStateAppWithState() {
  return MultiProvider(
    providers: [
      ChangeNotifierProvider(
        create: (context) => ProductLogic(),
      ),
    ],
    child: AdvStateApp(),
  );
}

class AdvStateApp extends StatelessWidget {
  const AdvStateApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: ProductMainScreen(),
      theme: ThemeData(
          appBarTheme: const AppBarTheme(
            titleTextStyle: TextStyle(
                color: Colors.white, fontSize: 19, fontWeight: FontWeight.bold),
            backgroundColor: Colors.pink,
          ),
          listTileTheme: const ListTileThemeData(),
          textTheme: const TextTheme(
              headlineLarge: TextStyle(fontWeight: FontWeight.bold),
              bodyLarge: TextStyle(fontSize: 20))),
    );
  }
}
