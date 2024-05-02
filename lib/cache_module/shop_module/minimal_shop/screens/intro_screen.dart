import 'package:flutter/material.dart';
import 'package:flutter_s2_adv/cache_module/shop_module/minimal_shop/components/my_button.dart';
import 'package:flutter_s2_adv/cache_module/shop_module/minimal_shop/hepers/language_heper.dart';
import 'package:flutter_s2_adv/cache_module/shop_module/minimal_shop/logics/cache_setting_logic.dart';
import 'package:provider/provider.dart';


class IntroScreen extends StatelessWidget {
  const IntroScreen({super.key});

  @override
  Widget build(BuildContext context) {
    CacheMinimalAppLanguage lang = context.watch<CacheSettingLogic>().cacheLang;
    return Scaffold(
      backgroundColor: Theme.of(context).colorScheme.primary,
      body: Container(
        color: Theme.of(context).colorScheme.background,
        height: double.infinity,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            // Logo
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 12),
              child: Container(
                decoration: BoxDecoration(
                  color: Theme.of(context).colorScheme.primary,
                  borderRadius: const BorderRadius.vertical(
                    bottom: Radius.circular(
                      35,
                    ),
                  ),
                  border: Border.all(
                    color: Theme.of(context).colorScheme.secondary,
                    width: 2,
                  ),
                ),
                height: MediaQuery.of(context).size.height / 2,
                width: double.infinity,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Icon(
                      Icons.shopping_bag,
                      size: 150,
                      color: Theme.of(context).colorScheme.secondary,
                    ),
                  ],
                ),
              ),
            ),
            Container(
              padding: const EdgeInsets.only(top: 16),
              height: MediaQuery.of(context).size.height / 2,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    children: [
                      const SizedBox(height: 12,),
                       Text(
                        lang.appName,
                        style:  TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 31,
                          color: Theme.of(context).colorScheme.secondary
                        ),
                      ),
                      const SizedBox(
                        height: 35,
                      ),
                      // subtitle
                      Text(
                        lang.premiumPro,
                        style: TextStyle(
                          color: Theme.of(context).colorScheme.secondary,
                          fontSize: 18
                        ),
                      ),
                    ],
                  ),
                  // button
                  SizedBox(
                    width: double.infinity,
                    child: MyButton(
                      onTap: () {
                        Navigator.pushNamed(context, '/shop_page');
                      },
                      child: Icon(
                        Icons.arrow_forward,
                        color: Theme.of(context).colorScheme.secondary,
                        size: 35,
                      ),
                    ),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
