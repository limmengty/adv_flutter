import 'package:flutter/material.dart';
import 'package:flutter_s2_adv/cache_module/shop_module/minimal_shop/hepers/language_heper.dart';
import 'package:flutter_s2_adv/cache_module/shop_module/minimal_shop/models/product.dart';
import 'package:flutter_secure_storage/flutter_secure_storage.dart';

class CacheSettingLogic extends ChangeNotifier {
  // user cart
  final List<Product> _cart = [];
  // get user cart
  List<Product> get cart => _cart;

  // add item to cart"
  void addToCart(Product product) {
    _cart.add(product);
    notifyListeners();
  }

  // remove item from cart
  void removeFromCart(Product product) {
    _cart.remove(product);
    notifyListeners();
  }

  // dart mode
  int _modeIndex = 1;
  int get modeIndex => _modeIndex;
  final FlutterSecureStorage _secure = const FlutterSecureStorage();
  final _key = "CacheFlutterSecureStorage";

  // change language
  int _lang = 0;
  int get lang => _lang;
  final _langKey = "CacheFlutterSecureStorage";

  CacheMinimalAppLanguage _cacheLang = cacheMinimalAppLanguageList[0];
  CacheMinimalAppLanguage get cacheLang => _cacheLang;

  Future initCache() async {
    // dark mode
    String index = await _secure.read(key: _key) ?? "1";
    _modeIndex = int.parse(index);

    // chnage  language
    String langStr = await _secure.read(key: _langKey) ?? "0";
    _modeIndex = int.parse(langStr);
    _cacheLang = cacheMinimalAppLanguageList[_lang];
  }

  void changeToLight() async {
    _modeIndex = 1;
    _secure.write(key: _key, value: _modeIndex.toString());
    notifyListeners();
  }

  void changeToDark() async {
    _modeIndex = 2;
    _secure.write(key: _key, value: _modeIndex.toString());
    notifyListeners();
  }

  void changeToSystem() async {
    _modeIndex = 3;
    _secure.write(key: _key, value: _modeIndex.toString());
    notifyListeners();
  }

  void changeToEN() async {
    _lang = 0;
    _secure.write(key: _langKey, value: _modeIndex.toString());
    _cacheLang = cacheMinimalAppLanguageList[_lang];
    notifyListeners();
  }

  void changeToKH() async {
    _lang = 1;
    _secure.write(key: _langKey, value: _modeIndex.toString());
    _cacheLang = cacheMinimalAppLanguageList[_lang];
    notifyListeners();
  }

  void changeToTH() async {
    _lang = 2;
    _secure.write(key: _langKey, value: _modeIndex.toString());
    _cacheLang = cacheMinimalAppLanguageList[_lang];
    notifyListeners();
  }

  void changeToVN() async {
    _lang = 3;
    _secure.write(key: _langKey, value: _modeIndex.toString());
    _cacheLang = cacheMinimalAppLanguageList[_lang];
    notifyListeners();
  }
}
