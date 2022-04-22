import 'package:get/get.dart';
import 'package:getx_routing/page%20routings/app_routes.dart';

class SplashBinding implements Bindings {
  @override
  void dependencies() {
    Get.put(SplashController());
  }
}

class SplashController extends GetxController {
  @override
  void onInit() {
    super.onInit();
    Future.delayed(
      const Duration(seconds: 2),
      () => Get.offAndToNamed(Routes.shopingpage),
    );
  }
}
