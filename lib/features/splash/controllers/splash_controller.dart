import 'dart:async';

import 'package:flashlight_cashier/configs/routes/app_route.dart';
import 'package:get/get.dart';

class SplashController extends GetxController {
  static SplashController get to => Get.find();

  @override
  void onInit() {
    super.onInit();

    Future.delayed(
      const Duration(seconds: 3),
      () {
        Get.toNamed(AppRoute.customerTypeRoute);
      },
    );
  }
}
