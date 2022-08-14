import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:hive/hive.dart';

import '../constants/constans.dart';
import '../services/ThemeAndLoginService.dart';

class ServiceController extends GetxController {
  var themeAndLoginService = ThemeAndLoginService(false, false).obs;

  @override
  void onInit() {
    super.onInit();
    getServices();
  }

  void getServices() async {
    try {
      var servicebox = await Hive.openBox('box');
      var islogedinedata = servicebox.get('islogedin');
      var themedata = servicebox.get('isDark');
      if (islogedinedata != null) {
        this.themeAndLoginService.value.isLoggedIn = islogedinedata as bool;
      }
      if (themedata != null) {
        this.themeAndLoginService.value.isDark = themedata as bool;
        Get.changeTheme(
            this.themeAndLoginService.value.isDark  ? darkTheme : lightTheme);
      }
    } on Exception catch (e) {
      print(e);
    } on HiveError catch (e) {
      print(e);
    }
  }

  changeloogedin() async {
    bool x = this.themeAndLoginService.value.isLoggedIn;
    this.themeAndLoginService.value.isLoggedIn = !x;
    await saveLogin();
    update();
  }

  Future saveLogin() async {
    var servicebox = await Hive.openBox('box');
    servicebox.put('islogedin', this.themeAndLoginService.value.isLoggedIn);
  }

  Future changeTheme() async {
    var servicebox = await Hive.openBox('box');
    if(servicebox.get('isDark')!=null)
    this.themeAndLoginService.value.isDark = !servicebox.get('isDark');
    else this.themeAndLoginService.value.isDark = true;
    Get.changeTheme(
        this.themeAndLoginService.value.isDark  ? darkTheme : lightTheme);
    await saveTheme();
    update();
  }

  Future saveTheme() async {
    var servicebox = await Hive.openBox('box');
    await servicebox.put('isDark', this.themeAndLoginService.value.isDark);
  }
  deletebox() async {
     Hive.box('box').clear();
  }
}
