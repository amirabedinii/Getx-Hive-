import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../models/flower/Flower.dart';
import '../models/user-seller/Seller.dart';

final gheight = Get.height;
final gwidth = Get.width;

final greencolor = const Color(0x02aab0);
final grcolor = const Color(0x00cdac);

final lightTheme = ThemeData(
  primarySwatch: Colors.lightBlue,
  brightness: Brightness.light,
  primaryColor: const Color(0xFF6DE7BC),
  accentColor: const Color(0xFF6DE7BC),
  scaffoldBackgroundColor: const Color(0xFF6DE7BC),
  cardColor: const Color(0xFF6DE7BC),
  cursorColor: const Color(0xFF0A0E21),
  textTheme: const TextTheme(
    bodyText1: TextStyle(
      color: Color.fromARGB(255, 0, 0, 0),
      fontSize: 100,
    ),
    bodyText2: TextStyle(
      color: Color.fromARGB(255, 0, 0, 0),
      fontSize: 16,
    ),
  ),
);

final darkTheme = ThemeData(
  primarySwatch: Colors.cyan,
  brightness: Brightness.dark,
  primaryColor: const Color(0xFFA2611F),
  accentColor: const Color(0xFFA2611F),
  scaffoldBackgroundColor: const Color(0xFFA2611F),
  cardColor: const Color(0xFFA2611F),
  cursorColor: const Color(0xFFA2611F),
  textTheme: const TextTheme(
    bodyText1: TextStyle(
      color: Color.fromARGB(255, 0, 0, 0),
      fontSize: 20,
    ),
    bodyText2: TextStyle(
      color: Color.fromARGB(255, 0, 0, 0),
      fontSize: 16,
    ),
  ),
);

final listOfFlowersForSell = [
  Flower(
    description: 'این یک افوریبا است',
    price: 100.toString(),
    imagePath: 'assets/images/flower1.jpg',
    createdAt: DateTime.now().toString(),
    id: UniqueKey().toString(),
    name: 'افوربیا',
  ),
  Flower(
    description: 'این یک آگاو اوهی است',
    price: 100.toString(),
    imagePath: 'assets/images/flower2.jpg',
    createdAt: DateTime.now().toString(),
    id: UniqueKey().toString(),
    name: 'آگاو اوهی',
  ),
  Flower(
    description: 'این یک اچینو است',
    price: 100.toString(),
    imagePath: 'assets/images/flower3.jpg',
    createdAt: DateTime.now().toString(),
    id: UniqueKey().toString(),
    name: 'اچینو',
  ),
  Flower(
    description: 'این یک ساکیولنت است',
    price: 100.toString(),
    imagePath: 'assets/images/flower4.jpg',
    createdAt: DateTime.now().toString(),
    id: UniqueKey().toString(),
    name: 'ساکیولنت',
  ),
  Flower(
    description: 'این یک کاکتوس است',
    price: 100.toString(),
    imagePath: 'assets/images/flower5.jpg',
    createdAt: DateTime.now().toString(),
    id: UniqueKey().toString(),
    name: 'کاکتوس',
  ),
];

final listOfLocalFlower = [
  Flower(
    description: 'این یک افوریبا است',
    price: 100.toString(),
    imagePath: 'assets/images/flower1.jpg',
    createdAt: DateTime.now().toString(),
    id: UniqueKey().toString(),
    name: 'افوربیا 2',
  ),
  Flower(
    description: 'این یک آگاو اوهی است',
    price: 100.toString(),
    imagePath: 'assets/images/flower2.jpg',
    createdAt: DateTime.now().toString(),
    id: UniqueKey().toString(),
    name: 'آگاو اوهی 2',
  ),
  Flower(
    description: 'این یک اچینو است',
    price: 100.toString(),
    imagePath: 'assets/images/flower3.jpg',
    createdAt: DateTime.now().toString(),
    id: UniqueKey().toString(),
    name: 'اچینو 2',
  ),
  Flower(
    description: 'این یک ساکیولنت است',
    price: 100.toString(),
    imagePath: 'assets/images/flower4.jpg',
    createdAt: DateTime.now().toString(),
    id: UniqueKey().toString(),
    name: 'ساکیولنت 2',
  ),
  Flower(
    description: 'این یک کاکتوس است',
    price: 100.toString(),
    imagePath: 'assets/images/flower5.jpg',
    createdAt: DateTime.now().toString(),
    id: UniqueKey().toString(),
    name: 'کاکتوس 2',
  ),
];

final listOfSeller = [
  Seller(
      name: 'امیر',
      id: UniqueKey().toString(),
      imagePath: 'assets/images/seller1.jpg',
      createdAt: DateTime.now().toString(),
      password: '123',
      city: 'کرج',
      email: 'abediniamirsepehr@gmail.com',
      address: 'کرج ',
      phone: '09912381201',
      state: 'البرز'),
  Seller(
      name: 'سپهر',
      id: UniqueKey().toString(),
      imagePath: 'assets/images/seller1.jpg',
      createdAt: DateTime.now().toString(),
      password: '123',
      city: 'کرج',
      email: 'abediniamirsepehr@gmail.com',
      address: 'کرج ',
      phone: '09912381201',
      state: 'البرز'),
  Seller(
      name: 'عابدینی',
      id: UniqueKey().toString(),
      imagePath: 'assets/images/seller1.jpg',
      createdAt: DateTime.now().toString(),
      password: '123',
      city: 'کرج',
      email: 'abediniamirsepehr@gmail.com',
      address: 'کرج ',
      phone: '09912381201',
      state: 'البرز'),
  Seller(
      name: 'مبین',
      id: UniqueKey().toString(),
      imagePath: 'assets/images/seller1.jpg',
      createdAt: DateTime.now().toString(),
      password: '123',
      city: 'کرج',
      email: 'abediniamirsepehr@gmail.com',
      address: 'کرج ',
      phone: '09912381201',
      state: 'البرز'),

];
