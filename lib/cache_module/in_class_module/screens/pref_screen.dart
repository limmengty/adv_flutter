import 'package:flutter/material.dart';
import 'package:flutter_s2_adv/cache_module/in_class_module/hepers/language_heper.dart';
import 'package:flutter_s2_adv/cache_module/in_class_module/logics/cache_theme_logic.dart';
import 'package:provider/provider.dart';

class PrefScreen extends StatefulWidget {
  const PrefScreen({super.key});

  @override
  State<PrefScreen> createState() => _PrefScreenState();
}

class _PrefScreenState extends State<PrefScreen> {
  @override
  Widget build(BuildContext context) {
    CacheLanguage lang = context.watch<CacheThemeLogic>().cacheLang;
    return Scaffold(
      appBar: AppBar(
        title: Text(lang.nameApp),
      ),
      floatingActionButton: FloatingActionButton.extended(
        onPressed: () {},
        backgroundColor: Colors.purple[400],
        label: Row(
          children: [
            IconButton(
              onPressed: () {
                context.read<CacheThemeLogic>().changeToEN();
              },
              icon: const Text("EN"),
            ),
            IconButton(
              onPressed: () {
                context.read<CacheThemeLogic>().changeToKH();
              },
              icon: const Text("KH"),
            ),
          ],
        ),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
              onPressed: () {
                context.read<CacheThemeLogic>().changeToLight();
              },
              child: Icon(Icons.light_mode),
            ),
            ElevatedButton(
              onPressed: () {
                context.read<CacheThemeLogic>().changeToDark();
              },
              child: Icon(Icons.dark_mode),
            ),
            ElevatedButton(
              onPressed: () {
                context.read<CacheThemeLogic>().changeToSystem();
              },
              child: Text("System"),
            ),
          ],
        ),
      ),
    );
  }
}
