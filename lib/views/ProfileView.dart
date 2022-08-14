import 'package:e_commercapp_getx_hive/models/user-local/LocalUser.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../constants/constans.dart';
import '../contorollers/ThemeAndLogincontroller.dart';
import '../contorollers/Usercontoroller.dart';
import '../models/flower/Flower.dart';
import '../models/user-seller/Seller.dart';
import 'FlowerView.dart';

class ProfileView extends StatefulWidget {
  const ProfileView({Key? key}) : super(key: key);

  @override
  State<ProfileView> createState() => _ProfileViewState();
}

class _ProfileViewState extends State<ProfileView> {
  var serviceController = Get.find<ServiceController>();
  var userController = Get.find<Usercontoroller>();

  @override
  initState() {
    super.initState();
    for (Flower flower in listOfLocalFlower) {
      userController.addflower(flower);
    }
  }

  @override
  Widget build(BuildContext context) {
    var height = MediaQuery.of(context).size.height;
    var width = MediaQuery.of(context).size.width;
    return LayoutBuilder(
      builder: (context, constraints) {
        return Column(
          children: [
            Container(
              height: height * 0.17,
              width: width,
              decoration: const BoxDecoration(
                borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(30),
                  bottomRight: Radius.circular(30),
                ),
                color: Colors.blueGrey,
                boxShadow: [
                  BoxShadow(
                    color: Colors.black,
                    blurRadius: 20,
                    spreadRadius: 5,
                  ),
                ],
              ),
              child: nameStack(),
            ),
            GetBuilder<Usercontoroller>(
              builder: (controller) => Expanded(
                child: GridView.builder(
                  padding: const EdgeInsets.all(10),
                  physics: const BouncingScrollPhysics(),
                  gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 3,
                    childAspectRatio: 0.8,
                    crossAxisSpacing: 10,
                    mainAxisSpacing: 10,
                  ),
                  itemCount: controller.user.value.listOfFlowers.length,
                  itemBuilder: (context, index) {
                    return Container(
                      child: Column(
                        children: [
                         Image.asset(
                           'assets/images/images.jpeg',
                         ),
                          Expanded(
                            child: MaterialButton(
                              onPressed: () {
                                Get.to(
                                  FlowerView(
                                    flower: controller.user.value.listOfFlowers[
                                        index],
                                  ),
                                );
                              },
                              child: Text('بیشتر'),
                            ),
                          ),
                        ],
                      ),
                    );
                  },
                ),
              ),
            ),
          ],
        );
      },
    );
  }

  Widget nameStack() {
    var size = MediaQuery.of(context).size;
    return Stack(
      children: [
        Positioned(
          top: size.height * 0.02,
          right: size.width * 0.03,
          child: Column(
            children: [
              Padding(
                padding:
                    EdgeInsets.fromLTRB(size.width * 0.4 ?? 200, 10, 8, 0),
                child: Text(
                  userController.user.value.name.toString(),
                  style: const TextStyle(
                    fontSize: 30,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.fromLTRB(0, 05, 8, 120) ,
                child: Text(
                  '\n${userController.user.value.email}',
                  style: const TextStyle(
                    fontSize: 24,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              )
            ],
          ),
        ),
        Positioned(
          top: size.height * 0.02,
          left: size.width * 0.05,
          child: CircleAvatar(
            radius: size.width * 0.1,
            backgroundImage: const AssetImage(
              'assets/images/images.jpeg',
            ),
          ),
        ),
      ],
    );
  }


}

