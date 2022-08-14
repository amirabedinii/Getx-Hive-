import 'package:e_commercapp_getx_hive/constants/constans.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../contorollers/SplashController.dart';

class Splash extends StatelessWidget {
  Splash({Key? key}) : super(key: key);
  final GetxController _controller = Get.put(SplashController());

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: const Text('Splash'),
        ),
        body: const Center(
          child: Text("Splash"),
        ),
      ),
    );
  }
}
