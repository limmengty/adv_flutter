import 'package:flutter/material.dart';
import 'package:flutter_s2_adv/cache_module/shop_module/minimal_shop/components/my_button_setting.dart';
import 'package:flutter_s2_adv/cache_module/shop_module/minimal_shop/hepers/language_heper.dart';
import 'package:flutter_s2_adv/cache_module/shop_module/minimal_shop/logics/cache_setting_logic.dart';
import 'package:provider/provider.dart';

class SettingScreen extends StatelessWidget {
  const SettingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    CacheMinimalAppLanguage lang = context.watch<CacheSettingLogic>().cacheLang;
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Theme.of(context).colorScheme.primary,
        title: Text(
          lang.settings,
          style: TextStyle(color: Theme.of(context).colorScheme.secondary),
        ),
        centerTitle: true,
        leading: IconButton(
          onPressed: () {
            Navigator.pop(context);

            Navigator.pushNamedAndRemoveUntil(
              context,
              '/shop_page',
              (route) => false,
            );
          },
          icon: Icon(
            Icons.arrow_back,
            color: Theme.of(context).colorScheme.secondary,
          ),
        ),
      ),
      body: Container(
        color: Theme.of(context).colorScheme.background,
        child: Padding(
          padding: EdgeInsets.all(12),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              MyButtonSetting(
                title: lang.lightMode,
                onTap: () {
                  context.read<CacheSettingLogic>().changeToLight();
                },
                child: const Icon(Icons.light_mode),
              ),
              const SizedBox(
                height: 10,
              ),
              MyButtonSetting(
                title: lang.dartMode,
                onTap: () {
                  context.read<CacheSettingLogic>().changeToDark();
                },
                child: const Icon(Icons.dark_mode),
              ),
              const SizedBox(
                height: 10,
              ),
              MyButtonSetting(
                  title: lang.systemMode,
                  onTap: () {
                    context.read<CacheSettingLogic>().changeToSystem();
                  },
                  child: Icon(Icons.phone_iphone)),
              const SizedBox(
                height: 10,
              ),
              MyButtonSetting(
                  title: lang.changeToEN,
                  onTap: () {
                    context.read<CacheSettingLogic>().changeToEN();
                  },
                  child: Text("EN")),
              const SizedBox(
                height: 10,
              ),
              MyButtonSetting(
                  title: lang.changeToKH,
                  onTap: () {
                    context.read<CacheSettingLogic>().changeToKH();
                  },
                  child: Text("KH")),
              const SizedBox(
                height: 10,
              ),
              MyButtonSetting(
                  title: lang.changeToTH,
                  onTap: () {
                    context.read<CacheSettingLogic>().changeToTH();
                  },
                  child: Text("TH")),
              const SizedBox(
                height: 10,
              ),MyButtonSetting(
                  title: lang.changeToVN,
                  onTap: () {
                    context.read<CacheSettingLogic>().changeToVN();
                  },
                  child: Text("TH")),
              const SizedBox(
                height: 10,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
