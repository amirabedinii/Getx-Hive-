import 'package:get/get.dart';
import 'package:hive/hive.dart';

import '../models/flower/Flower.dart';

class Flowercontroller extends GetxController{
   List<Flower> flowersForSale = List<Flower>.empty().obs;

    void addFlower(Flower flower){
      flowersForSale.add(flower);
      update();
    }
    void removeFlower(Flower flower){
      flowersForSale.remove(flower);
      update();
    }

}