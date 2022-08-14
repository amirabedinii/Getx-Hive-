import 'package:e_commercapp_getx_hive/views/FirstView.dart';
import 'package:e_commercapp_getx_hive/views/LoginVeiw.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../constants/constans.dart';
import '../contorollers/ThemeAndLogincontroller.dart';
import '../contorollers/Usercontoroller.dart';
import '../models/flower/Flower.dart';
import '../models/user-seller/Seller.dart';
import 'BoughtView.dart';
import 'InBagView.dart';
import 'ProfileView.dart';
import 'SearchView.dart';
import 'SignUp.dart';

class HomeView extends StatefulWidget {
  const HomeView({Key? key}) : super(key: key);

  @override
  State<HomeView> createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {
  var serviceController = Get.find<ServiceController>();
  var userController = Get.put(Usercontoroller());


  var view = 0;

  List<Widget> pages() => [
        const Firstview(),
        const searchView(),
        const InBagView(),
        const ProfileView(),
      ];

  @override
  void initState() {
    super.initState();
  }

  void getinit() async {
    await userController.getuser();
  }

  @override
  Widget build(BuildContext context) {
    getinit();
    return SafeArea(
      child: Scaffold(
        body: pages()[view],
        bottomNavigationBar: BottomNavigationBar(
          currentIndex: view,
          items:const  [
            BottomNavigationBarItem(
              icon: Icon(Icons.home),
              label: 'خانه',
            ),
             BottomNavigationBarItem(
              icon: const Icon(Icons.shopping_bag),
              label: 'فروشگاه',
            ),
             BottomNavigationBarItem(
              label: 'سبد خرید',
              icon: const Icon(Icons.shopping_cart),
            ),
             BottomNavigationBarItem(
              label: 'پروفایل',
              icon: const Icon(Icons.person),
            ),
          ],
          selectedItemColor: Colors.amber[800],
          onTap: (index)  {
            setState (
              () {
                // if(index>0)
                // Get.to(pages()[index]);
              userController.saveuserandupdate();
                view = index;
              },
            );
          },
          backgroundColor: Colors.red,
        ),
        drawer: Mydrawer(context),
      ),
    );
  }

  Widget Mydrawer(context) {
    return Drawer(
      child: ListView(
        children: <Widget>[
          DrawerHeader(
            child: Row(
              children: <Widget>[
                GetBuilder<Usercontoroller>(
                  builder: (cont) => Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text(
                      '${cont.user.value.name}',
                      style: const TextStyle(
                        fontSize: 20,
                      ),
                    ),
                  ),
                ),
                Expanded(
                  child: Padding(
                    padding: const EdgeInsets.fromLTRB(0, 8, 100, 8),
                    child: GetBuilder<ServiceController>(
                      builder: (cont) => IconButton(
                        key: Key('${userController.user.value.name}'),
                        onPressed: () async {
                          await serviceController.changeTheme();
                        },
                        icon: Icon(
                          cont.themeAndLoginService.value.isDark == false
                              ? Icons.wb_sunny
                              : Icons.brightness_2,
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
          ListTile(
            title: const Text(
              'خارج شدن از حساب',
              style: const TextStyle(
                fontSize: 20,
              ),
            ),
            onTap: () async {
             serviceController.deletebox();
              Get.off(SignUp());
            },
          ),
          ListTile(
            title: const Text(
              'خریداری شده ها',
              style: TextStyle(
                fontSize: 20,
              ),
            ),
            onTap: () {
                Get.to(BoughtView());
            },
          ),
        ],
      ),
    );
  }
}
