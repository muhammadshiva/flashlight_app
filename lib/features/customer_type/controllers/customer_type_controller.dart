import 'dart:developer';

import 'package:flashlight_cashier/constants/app_image_constant.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class CustomerTypeController extends GetxController {
  static CustomerTypeController get to => Get.find();

  RxString customerType = ''.obs;
  RxList<Map<String, String>> sosmedDataList = [
    {
      'imagePath': AppImageConstant.icInstagram,
      'title': '@flashlightcleanstar',
    },
    {
      'imagePath': AppImageConstant.icTiktok,
      'title': '@flashlightcleanstar',
    },
    {
      'imagePath': AppImageConstant.icWa,
      'title': '0822 5744 8420',
    },
  ].obs;

  RxList<Map<String, Object>> customerTypeList = [
    {
      'icon': Icons.person,
      'title': 'Customer Baru',
    },
    {
      'icon': Icons.group,
      'title': 'Member',
    },
  ].obs;

  @override
  void onInit() {
    log('Customer Type Controller');
    super.onInit();
  }
}
