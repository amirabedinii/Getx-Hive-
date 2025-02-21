import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../constants/constans.dart';
import '../contorollers/Usercontoroller.dart';
import '../models/flower/Flower.dart';

class InBagView extends StatefulWidget {
  const InBagView({Key? key}) : super(key: key);

  @override
  State<InBagView> createState() => _InBagViewState();
}

class _InBagViewState extends State<InBagView> {
  List<Flower> listofFlowers = [];
  var userController = Get.find<Usercontoroller>();

  @override
  void initState() {
    super.initState();
    listofFlowers = userController.user.value.listOfInTheBag;
  }

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;

    return Scaffold(
      body: LayoutBuilder(
        builder: (context, constraints) {
          return GetBuilder<Usercontoroller>(builder: (controller) {
           return Container(
              width: size.width,
              height: size.height,
              decoration: const BoxDecoration(
                gradient: LinearGradient(
                  begin: Alignment.bottomCenter,
                  end: Alignment.topLeft,
                  colors: [
                    Color.fromARGB(255, 212, 20, 90),
                    Color(0xFFFBB03B),
                  ],
                ),
              ),
              child: ListView.separated(
                shrinkWrap: true,
                addAutomaticKeepAlives: true,
                physics: BouncingScrollPhysics(),
                itemCount: controller.user.value.listOfInTheBag.length,
                itemBuilder: (context, index) {
                  return cartItem(
                      controller.user.value.listOfInTheBag[index]);
                },
                separatorBuilder: (context, index) =>
                const SizedBox(
                  height: 30,
                  width: 10,
                ),
              ),

            );
          }
          );
        },
      ),
    );
  }

  Widget cartItem(Flower flower) {
    var size = MediaQuery.of(context).size;
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(4),
          gradient: LinearGradient(
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            colors: [
              Color(0xFF2E3192),
              Color(0xFF1BFFFF),
            ],
          ),
        ),
        width: size.width,
        height: size.height * 0.6,
        child: Stack(
          children: [
            Positioned(
              top: size.height * 0.01,
              right: size.width * 0.2,
              left: size.width * 0.2,
              child: Image.asset(
                "assets/images/images.jpeg",
              ),
            ),
            Positioned(
              top: size.height * 0.3,
              right: size.width * 0.07,
              child: RichText(
                overflow: TextOverflow.clip,
                softWrap: true,
                text: TextSpan(
                  text: "نام گیاه : ",
                  style: TextStyle(
                    fontSize: size.width * 0.07,
                    fontWeight: FontWeight.bold,
                  ),
                  children: [
                    TextSpan(
                      text: flower.name,
                      style: TextStyle(
                        fontSize: size.width * 0.05,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Positioned(
              top: size.height * 0.35,
              right: size.width * 0.07,
              child: RichText(
                overflow: TextOverflow.clip,
                softWrap: true,
                text: TextSpan(
                  text: "قیمت : ",
                  style: TextStyle(
                    fontSize: size.width * 0.07,
                    fontWeight: FontWeight.bold,
                  ),
                  children: [
                    TextSpan(
                      text: flower.price.toString() + " تومان",
                      style: TextStyle(
                        fontSize: size.width * 0.05,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Positioned(
              top: size.height * 0.41,
              right: size.width * 0.07,
              child: RichText(
                overflow: TextOverflow.clip,
                softWrap: true,
                text: TextSpan(
                  text: "توضیحات : ",
                  style: TextStyle(
                    fontSize: size.width * 0.07,
                    fontWeight: FontWeight.bold,
                  ),
                  children: [
                    TextSpan(
                      text: flower.description.toString(),
                      style: TextStyle(
                        fontSize: size.width * 0.05,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Positioned(
              top: size.height * 0.5,
              right: size.width * 0.05,
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: RaisedButton(
                      elevation: 10,
                      color: Color(0xFFFBCE3B),
                      onPressed: () {
                        userController. removeinthebag(flower);
                        userController.addbought(flower);
                        userController.update();
                      },
                      child: Text(
                        "نهایی کردن خرید",
                        style: TextStyle(
                          fontSize: size.width * 0.05,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ),
                    RaisedButton(
                    elevation: 10,
                    color: Color(0xFFFBCE3B),
                    onPressed: () {
                      userController. removeinthebag(flower);
                      print(userController.user.value.listOfInTheBag.length);
                      userController.update();
                    },
                    child: Text(
                      "حذف از سبد خرید",
                      style: TextStyle(
                        fontSize: size.width * 0.05,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
