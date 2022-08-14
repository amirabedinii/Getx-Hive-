import 'package:e_commercapp_getx_hive/models/user-seller/Seller.dart';
import 'package:hive/hive.dart';

import '../user-local/LocalUser.dart';

part 'Flower.g.dart';

@HiveType(typeId: 3)
class Flower{
  @HiveField(20)
  String name;
  @HiveField(21)
  String description;
  @HiveField(22)
  String imagePath;
  @HiveField(23)
  String price;
  @HiveField(24)
  String id;
  @HiveField(25)
  String createdAt;
  @HiveField(26)
  String? updatedAt;
  @HiveField(27)
  String? deletedAt;
  @HiveField(28)
  String? category;
  @HiveField(29)
  String? quantity;
  @HiveField(30)
  String? size;
  @HiveField(31)
  LocalUser? costumer;
  @HiveField(32)
  Seller? seller;

  Flower.fromLocal(
      {required this.name,
      required this.description,
      required this.imagePath,
      required this.price,
      required this.id,
      required this.createdAt,
      this.category,
      this.quantity,
      this.size,
      this.costumer});
  Flower.fromSeller(
      {required this.name,
      required this.description,
      required this.imagePath,
      required this.price,
      required this.id,
      required this.createdAt,
      this.category,
      this.quantity,
      this.size,
      this.seller});
  Flower(
      {required this.name,
        required this.description,
        required this.imagePath,
        required this.price,
        required this.id,
        required this.createdAt,
        this.category,
        this.quantity,
        this.size,
        this.costumer});
}
