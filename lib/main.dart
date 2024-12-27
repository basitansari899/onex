import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:onex/app/modules/splash/controllers/splash_controller.dart';

import 'app/routes/app_pages.dart';

void main() {
  Get.put(SplashController());
  runApp(
    GetMaterialApp(
      debugShowCheckedModeBanner: false,
      title: "Application",
      initialRoute: AppPages.INITIAL,
      getPages: AppPages.routes,
    ),
  );
}
