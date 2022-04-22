import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_routing/page%20routings/app_pages.dart';
import 'package:getx_routing/page%20routings/app_routes.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'Getx Routing',
      debugShowCheckedModeBanner: false,
      initialRoute: Routes.splash,
      defaultTransition: Transition.fade,
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      getPages: AppPages.pages,
    );
  }
}
