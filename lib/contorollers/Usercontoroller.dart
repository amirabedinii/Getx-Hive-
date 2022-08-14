import 'package:e_commercapp_getx_hive/models/user-local/LocalUser.dart';
import 'package:get/get.dart';
import 'package:hive/hive.dart';

import '../models/flower/Flower.dart';

class Usercontoroller extends GetxController {
  Rx<LocalUser> user = LocalUser.noName().obs;

  @override
  void onInit() async {
    super.onInit();
    await getuser();
  }

  Future getuser() async {
    try {
      var userbox = await Hive.openBox('box');
      var userdata = userbox.get('user');
      if (userdata != null) {
        this.user.value = userdata as LocalUser;
      }
    } on Exception catch (e) {
      print(e);
    } on HiveError catch (e) {
      print(e);
    }
  }

  void setemail(String email) {
    this.user.value.email = email;
    update();
  }

  void setpassword(String password) {
    this.user.value.password = password;
    update();
  }

  void setname(String name) {
    this.user.value.name = name;
    update();
  }

  void setphone(String phone) {
    this.user.value.phone = phone;
    update();
  }

  void setaddress(String address) {
    this.user.value.address = address;
    update();
  }

  void setcity(String city) {
    this.user.value.city = city;
    update();
  }

  void setstate(String state) {
    this.user.value.state = state;
    update();
  }

  void setcountry(String country) {
    this.user.value.country = country;
    update();
  }

  void setimagepath(String imagepath) {
    this.user.value.imagePath = imagepath;
    update();
  }

  void setrole(String role) {
    this.user.value.role = role;
    update();
  }

  void setid(String id) {
    this.user.value.id = id;
    update();
  }

  void setcreatedat(String createdat) {
    this.user.value.createdAt = createdat;
    update();
  }

  void addflower(Flower flower) {
    if(!this.user.value.listOfFlowers.contains(flower))
    this.user.value.listOfFlowers.add(flower);
    update();
  }

  void addinthebag(Flower flower) {
    if(!this.user.value.listOfInTheBag.contains(flower))
    this.user.value.listOfInTheBag.add(flower);
    update();
  }

  void addbought(Flower flower) {
    this.user.value.listOfbought.add(flower);
    update();
  }

  void removeflower(Flower flower) {
    this.user.value.listOfFlowers.remove(flower);
    update();
  }

  void removeinthebag(Flower flower) {
    this.user.value.listOfInTheBag.remove(flower);
    update();
  }

  void removebought(Flower flower) {
    this.user.value.listOfbought.remove(flower);
    update();
  }

  Future<void> saveuserandupdate() async {
    var userbox = await Hive.openBox('box');
    userbox.put('user', this.user.value);
    update();
  }

  Future registerUser(
      String name, String email, String phone, String password) async {
    this.setemail(email);
    this.setpassword(password);
    this.setname(name);
    this.setphone(phone);
    await saveuserandupdate();
  }
}
