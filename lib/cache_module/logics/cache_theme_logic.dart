import 'package:flutter/material.dart';
import 'package:flutter_secure_storage/flutter_secure_storage.dart';
import 'package:shared_preferences/shared_preferences.dart';

class CacheThemeLogic extends ChangeNotifier {
  int _modeIndex = 1;
  int get modeIndex => _modeIndex;

  FlutterSecureStorage _secure = FlutterSecureStorage();
  final _key = "CacheFlutterSecureStorage";

  // final key = "CacheThemeLogic";
  // late SharedPreferences _pref;

  Future initCahe() async {
    // _pref = await SharedPreferences.getInstance();
    // _modeIndex = _pref.getInt(key) ??  1;
    String index = await _secure.read(key: _key) ?? "1";
    _modeIndex = int.parse(index);
    notifyListeners();
  }

  void changeToLight() async {
    // _modeIndex = 1;
    // _pref.setInt(key,  _modeIndex);
    // notifyListeners();

    _modeIndex = 1;
    _secure.write(key: _key, value: _modeIndex.toString());
    notifyListeners();
  }

  void changeToDark() async {
    // _modeIndex = 2;
    // _pref.setInt(key,  _modeIndex);
    // notifyListeners();

        _modeIndex = 2;
    _secure.write(key: _key, value: _modeIndex.toString());
    notifyListeners();
  }
  void changeToSystem() async {
    // _modeIndex = 3;
    // _pref.setInt(key,  _modeIndex);
    // notifyListeners();
        _modeIndex = 3;
    _secure.write(key: _key, value: _modeIndex.toString());
    notifyListeners();
  }
}
