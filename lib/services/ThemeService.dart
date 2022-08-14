import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';

class ThemeService {
  final _getstorage = GetStorage();
  final storageKey = 'theme';

  ThemeMode getThemeMode() {
    return isDark() ? ThemeMode.dark : ThemeMode.light;
  }

  bool isDark() {
    print("from get theme" + _getstorage.read(storageKey).toString());
    return _getstorage.read(storageKey) ?? false;
  }

  setTheme(bool value) {
    _getstorage.write(storageKey, value);
  }

  ChangeTheme() {
    Get.changeThemeMode(isDark() ? ThemeMode.light : ThemeMode.dark);
    setTheme(!isDark());
  }
}
