import 'package:flutter/material.dart';
import 'package:flutter_s2_adv/cache_module/logics/cache_theme_logic.dart';
import 'package:provider/provider.dart';

class PrefScreen extends StatefulWidget {
  const PrefScreen({super.key});

  @override
  State<PrefScreen> createState() => _PrefScreenState();
}

class _PrefScreenState extends State<PrefScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Shared Preferences"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
              onPressed: () {
                context.read<CacheThemeLogic>().changeToLight();
              },
              child: Text("Change To Light Mode"),
            ),
            ElevatedButton(
              onPressed: () {
                context.read<CacheThemeLogic>().changeToDark();
              },
              child: Text("Change To Dark Mode"),
            ),
            ElevatedButton(
              onPressed: () {
                context.read<CacheThemeLogic>().changeToSystem();
              },
              child: Text("Change To System Mode"),
            ),
          ],
        ),
      ),
    );
  }
}
