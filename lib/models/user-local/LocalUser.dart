import 'package:flutter/material.dart';
import 'package:hive/hive.dart';

import '../flower/Flower.dart';

part 'LocalUser.g.dart';

@HiveType(typeId: 0)
class LocalUser {
  @HiveField(0)
  String? name;
  @HiveField(1)
  String? email;
  @HiveField(2)
  String? password;
  @HiveField(3)
  String? phone;
  @HiveField(4)
  String? address;
  @HiveField(5)
  String? city;
  @HiveField(6)
  String? state;
  @HiveField(7)
  String? country;
  @HiveField(9)
  String? imagePath;
  @HiveField(10)
  String? role;
  @HiveField(11)
  String? id;
  @HiveField(12)
  String? createdAt;
  @HiveField(13)
  List<Flower> listOfFlowers = [];
  @HiveField(14)
  List<Flower> listOfInTheBag = [];
  @HiveField(15)
  List<Flower> listOfbought = [];

  LocalUser.noName() {
    listOfFlowers = [];
    listOfInTheBag = [];
    listOfbought = [];
    imagePath ??= "";
    id ??= UniqueKey().toString();
    createdAt ??= DateTime.now().toString();
  }

  LocalUser({
    required this.name,
    required this.email,
    required this.password,
    required this.phone,
    required this.address,
    required this.city,
    required this.state,
    this.country,
    this.imagePath,
    this.role,
    this.id,
    this.createdAt,
  }) {
    listOfFlowers = [];
    listOfInTheBag = [];
    listOfbought = [];
    imagePath ??= "";
    id ??= UniqueKey().toString();
    createdAt ??= DateTime.now().toString();
  }
}
