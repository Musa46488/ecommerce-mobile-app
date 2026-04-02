import 'package:flutter/material.dart';
import 'package:flutter_application_1/src/routes/approutes.dart';
import 'package:flutter_application_1/src/screens/cartscreen.dart';
import 'package:flutter_application_1/src/screens/categoryscreen.dart';
import 'package:flutter_application_1/src/screens/homescreen.dart';
import 'package:flutter_application_1/src/screens/printscreen.dart';
import 'package:get/get.dart';

class NavbarController extends GetxController {
  var selectedIndex = 0.obs;

  final List<Widget> pages = [
    HomeScreen(),
    CartScreen(),
    CategoryScreen(),
    PrintScreen(),
  ];

  void onTap(int index) {
    if (selectedIndex.value == index) {
      return;
    }

    selectedIndex.value = index;

    switch (selectedIndex.value) {
      case 0:
        Get.offNamed(AppRoutes.home);
        break;
      case 1:
        Get.offNamed(AppRoutes.cart);
        break;
      case 2:
        Get.offNamed(AppRoutes.category);
        break;
      case 3:
        Get.offNamed(AppRoutes.print);
        break;
    }
  }
}
