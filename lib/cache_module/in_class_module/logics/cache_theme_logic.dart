import 'package:flutter/material.dart';
import 'package:flutter_s2_adv/cache_module/in_class_module/hepers/language_heper.dart';
import 'package:flutter_secure_storage/flutter_secure_storage.dart';

class CacheThemeLogic extends ChangeNotifier {
  int _modeIndex = 1;
  int get modeIndex => _modeIndex;

  final FlutterSecureStorage _secure = FlutterSecureStorage();
  final _key = "";

  int _lang = 0;
  int get lang => _lang;
  final _langKey = "CacheFlutterSecureStorage";

  CacheLanguage _cacheLang = cacheLanguageList[0];
  CacheLanguage get cacheLang => _cacheLang;

  Future initCahe() async {
    String index = await _secure.read(key: _key) ?? "1";
    _modeIndex = int.parse(index);

    String langStr = await _secure.read(key: _langKey) ?? "0";
    _modeIndex = int.parse(langStr);
    _cacheLang = cacheLanguageList[_lang];
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
    _cacheLang = cacheLanguageList[_lang];
    notifyListeners();
  }

  void changeToKH() async {
    _lang = 1;
    _secure.write(key: _langKey, value: _modeIndex.toString());
    _cacheLang = cacheLanguageList[_lang];
    notifyListeners();
  }
}
