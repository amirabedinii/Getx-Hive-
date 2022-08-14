import 'package:flutter/material.dart';
import 'package:hive/hive.dart';

import '../flower/Flower.dart';

part 'Seller.g.dart';

@HiveType(typeId: 1)
class Seller{
  @HiveField(40)
  String name;
  @HiveField(41)
  String email;
  @HiveField(42)
  String password;
  @HiveField(43)
  String phone;
  @HiveField(44)
  String address;
  @HiveField(45)
  String city;
  @HiveField(46)
  String state;
  @HiveField(47)
  String? country;
  @HiveField(48)
  String? imagePath;
  @HiveField(50)
  String? id;
  @HiveField(51)
  String? createdAt;
  @HiveField(52)
  List<Flower> listOfFlowers =[];
  @HiveField(53)
  List<Flower> listOfForsale =[];

  Seller({
    required this.name,
    required this.email,
    required this.password,
    required this.phone,
    required this.address,
    required this.city,
    required this.state,
    this.country,
    this.imagePath,
    this.id,
    this.createdAt,
  }
  ){
    listOfFlowers = [];
    listOfForsale = [];
    imagePath ??= "";
    id ??= UniqueKey().toString();
    createdAt ??= DateTime.now().toString();
  }

  
}