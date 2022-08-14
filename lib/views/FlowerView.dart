import 'package:flutter/material.dart';

import '../models/flower/Flower.dart';

class FlowerView extends StatefulWidget {
  FlowerView({Key? key, required this.flower}) : super(key: key);

  Flower flower;

  @override
  State<FlowerView> createState() => _FlowerViewState();
}

class _FlowerViewState extends State<FlowerView> {
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Scaffold(
      body: LayoutBuilder(
        builder: (context, constraints) {
          return Container(
            width: size.width,
            height: size.height,
            decoration: const BoxDecoration(
              gradient: LinearGradient(
                begin: Alignment.bottomCenter,
                end: Alignment.topLeft,
                colors: [
                  Color.fromARGB(255, 209, 107, 121),
                  Color.fromARGB(255, 134, 231, 189),
                  Color.fromARGB(255, 95, 251, 241),
                ],
              ),
            ),
            child: cartItem(widget.flower),
          );
        },
      ),
    );
  }

  Widget cartItem(Flower flower) {
    var size = MediaQuery.of(context).size;
    return Padding(
      padding: const EdgeInsets.all(8.0),
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
          ],
        ),
    );
  }
}
