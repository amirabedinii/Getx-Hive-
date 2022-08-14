import 'package:flutter/material.dart';
import 'package:get/get.dart';


import '../constants/constans.dart';
import '../contorollers/ThemeAndLogincontroller.dart';
import '../contorollers/Usercontoroller.dart';
import '../models/flower/Flower.dart';
import '../models/user-seller/Seller.dart';

class Firstview extends StatefulWidget {
  const Firstview({Key? key}) : super(key: key);

  @override
  State<Firstview> createState() => _FirstviewState();
}

class _FirstviewState extends State<Firstview> {
  var serviceController = Get.find<ServiceController>();
  var userController = Get.put(Usercontoroller());

  List<Seller> listOfSellers = listOfSeller;
  List<Flower> listOfFlowers=[];
 @override
  void initState() {
    super.initState();
    listOfFlowers.addAll(listOfLocalFlower);
    listOfFlowers.addAll(listOfFlowersForSell);
  }
  @override
  void dispose() {
    super.dispose();
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
              width: width,
              height: height * 0.35,
              decoration: const BoxDecoration(
                gradient: LinearGradient(
                  begin: Alignment.bottomCenter,
                  end: Alignment.topLeft,
                  colors: [
                    Color(0xFF2E3192),
                    Color(0xFF1BFFFF),
                  ],
                ),
              ),
              child: upStack(context),
            ),
            Expanded(
              child: Container(
                decoration: const BoxDecoration(
                  gradient: LinearGradient(
                    begin: Alignment.bottomCenter,
                    end: Alignment.topLeft,
                    colors: [
                      Color(0xFF02AABD),
                      Color(0xFF00CDAC),
                    ],
                  ),
                ),
                width: width,
                height: height * 0.6,
                child: downStack(context),
              ),
            ),
          ],
        );
      },
    );
  }

  Widget upStack(context) {
    var size = MediaQuery.of(context).size;
    return Stack(
      children: <Widget>[
        Positioned(
          left: size.width * 0.3,
          right: size.width * 0.3,
          child: Text(
            'گلدون من',
            style: TextStyle(
              fontSize: size.width * 0.1,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
        Positioned(
          top: size.height * 0.1,
          left: size.width * 0.1,
          right: size.width * 0.1,
          child: Container(
            height: size.height * 0.17,
            child: ListView.separated(
              physics: const BouncingScrollPhysics(),
              scrollDirection: Axis.horizontal,
              itemCount: listOfSeller.length,
              shrinkWrap: true,
              itemBuilder: (context, index) {
                return cartWidgetForSeller(size.width, listOfSellers[index]);
              },
              separatorBuilder: (BuildContext context, int index) {
                return const SizedBox(width: 10);
              },
            ),
          ),
        ),
        Positioned(
          child: Text(
            "بهترین فروشندگان",
            style: TextStyle(
              fontSize: size.width * 0.08,
              fontWeight: FontWeight.bold,
            ),
          ),
          top: size.height * 0.27,
          left: size.width * 0.22,
          right: size.width * 0.22,
        ),
      ],
    );
  }

  Widget cartWidgetForSeller(double size, Seller seller) {
    return Container(
      width: size * 0.2,
      height: size * 0.01,
      padding: const EdgeInsets.all(8.0),
      decoration: const BoxDecoration(
        gradient: const LinearGradient(
          begin: Alignment.topCenter,
          end: Alignment.bottomCenter,
          colors: [
            Color.fromARGB(255, 64, 255, 225),
            Color.fromARGB(255, 64, 255, 246),
          ],
        ),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        verticalDirection: VerticalDirection.down,
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: <Widget>[
          const CircleAvatar(
            backgroundImage: const AssetImage(
              'assets/images/images.jpeg',
            ),
          ),
          Text(
            '${seller.name}',
            style: const TextStyle(
              fontSize: 20,
            ),
          ),
        ],
      ),
    );
  }

  Widget downStack(context) {
    var size = MediaQuery.of(context).size;
    return Stack(
      children: <Widget>[
        Positioned(
          top: size.height * 0.01,
          right: size.width * 0.3,
          left: size.width * 0.3,
          child: Text(
            "داغ های بازار",
            style: TextStyle(
              fontSize: size.width * 0.07,
              fontWeight: FontWeight.bold,
              color: Colors.white,
            ),
          ),
        ),
        Positioned(
          top: size.height * 0.07,
          bottom: size.height * 0.01,
          left: size.width * 0.05,
          right: size.width * 0.05,
          child: Container(
            height: size.height,
            width: size.width * 0.4,
            child: GridView.builder(
              shrinkWrap: true,
              controller: ScrollController(keepScrollOffset: false),
              physics: const BouncingScrollPhysics(),
              itemBuilder: (context, index) {
                return cartWidgetForProduct(size.width, listOfFlowers[index]);
              },
              itemCount: listOfFlowers.length,
              gridDelegate: const SliverGridDelegateWithMaxCrossAxisExtent(
                  maxCrossAxisExtent: 200,
                  childAspectRatio: 3 / 2,
                  crossAxisSpacing: 20,
                  mainAxisSpacing: 20),
            ),
          ),
        ),
      ],
    );
  }

  Widget cartWidgetForProduct(double width, Flower listOfFlower) {
    return Container(
      height: width * 0.4,
      width: width * 0.4,
      decoration: const BoxDecoration(
        borderRadius: BorderRadius.all(Radius.circular(10)),
        gradient: LinearGradient(
          begin: Alignment.topCenter,
          end: Alignment.bottomCenter,
          colors: [
            const Color.fromARGB(255, 64, 255, 225),
            Color.fromARGB(255, 64, 255, 246),
          ],
        ),
      ),
      child: Stack(
        children: [
          Positioned(
            top: width * 0.01,
            right: width * 0.01,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              verticalDirection: VerticalDirection.down,
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: <Widget>[
                Container(
                  decoration: BoxDecoration(
                    boxShadow: [
                      BoxShadow(
                        color: Colors.black.withOpacity(0.5),
                        spreadRadius: 5,
                        blurRadius: 7,
                        offset: Offset(0, 3), // changes position of shadow
                      ),
                    ],
                  ),
                  child: Image.asset(
                    'assets/images/images.jpeg',
                    height: width * 0.2,
                    width: width * 0.2,
                  ),
                ),
                SizedBox(
                  height: width * 0.01,
                ),
                Text(
                  '${listOfFlower.description}',
                  style: const TextStyle(
                    fontSize: 16,
                    color: Colors.red,
                  ),
                ),
              ],
            ),
          ),
          Positioned(
            top: width * 0.04,
            right: width * 0.28,
            child: Text(
              '${listOfFlower.price}',
              style: const TextStyle(
                fontSize: 16,
                color: Colors.red,
              ),
            ),
          ),
          Positioned(
            top: width * 0.12,
            right: width * 0.24,
            child: Text(
              '${listOfFlower.name}',
              style: const TextStyle(
                fontSize: 16,
                color: Colors.red,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
