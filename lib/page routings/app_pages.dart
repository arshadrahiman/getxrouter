import 'package:get/get.dart';
import 'package:getx_routing/binding/splash_binding.dart';
import 'package:getx_routing/page%20routings/app_routes.dart';
import 'package:getx_routing/views/shoping_page.dart';
import 'package:getx_routing/views/spalsh_screen.dart';

abstract class AppPages {
  static final pages = [
    GetPage(
      name: Routes.splash,
      page: () =>  Splash(),
      binding: SplashBinding(),
    ),
    GetPage(
      name: Routes.shopingpage,
      page:() =>  ShopingPage(),
    )
  ];
}
