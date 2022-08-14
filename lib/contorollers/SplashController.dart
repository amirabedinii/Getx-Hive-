import 'package:get/get.dart';
import '../views/Homeview.dart';
import '../views/SignUp.dart';
import 'ThemeAndLogincontroller.dart';

class SplashController extends GetxController {
  final _controller = Get.find<ServiceController>();

  @override
  void onInit() {
    super.onInit();
    Future.delayed(const Duration(seconds: 1), () {
      if (_controller.themeAndLoginService.value.isLoggedIn) {
        Get.off(const HomeView());
      } else {
        Get.off(SignUp());
      }
    });
  }
}
