import 'package:flutter/material.dart';
import 'package:flutter_s2_adv/cache_module/shop_module/minimal_shop/components/my_list_tile.dart';
import 'package:flutter_s2_adv/cache_module/shop_module/minimal_shop/hepers/language_heper.dart';
import 'package:flutter_s2_adv/cache_module/shop_module/minimal_shop/logics/cache_setting_logic.dart';
import 'package:provider/provider.dart';

class MyDrawer extends StatelessWidget {
  const MyDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    CacheMinimalAppLanguage lang = context.watch<CacheSettingLogic>().cacheLang;

    return Drawer(
      backgroundColor: Theme.of(context).colorScheme.background,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Column(
            children: [
              // drawer header: logo
              DrawerHeader(
                child: Icon(
                  Icons.shopping_bag,
                  size: 72,
                  color: Theme.of(context).colorScheme.secondary,
                ),
              ),

              const SizedBox(
                height: 25,
              ),
              // shop title

              MyListTile(
                text: lang.drawerProduct,
                icon: Icons.home,
                onTap: () {
                  Navigator.pop(context);
                },
              ),
              MyListTile(
                text: lang.drawerAddToBag,
                icon: Icons.shopping_cart,
                onTap: () {
                  Navigator.pop(context);

                  Navigator.pushNamed(context, '/cart_page');
                },
              ),
              MyListTile(
                text: lang.settings,
                icon: Icons.settings,
                onTap: () {
                  Navigator.pop(context);

                  Navigator.pushNamed(context, '/setting_screen');
                },
              ),
            ],
          ),
          // exit shop
          MyListTile(
            text: lang.drawerExit,
            icon: Icons.exit_to_app,
            onTap: () {
              Navigator.pop(context);

              Navigator.pushNamedAndRemoveUntil(
                context,
                '/intro_page',
                (route) => false,
              );
            },
          ),
        ],
      ),
    );
  }
}
