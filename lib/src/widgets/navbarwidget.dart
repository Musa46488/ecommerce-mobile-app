import 'package:flutter/material.dart';
import 'package:flutter_application_1/src/constants/appcolors.dart';
import 'package:flutter_application_1/src/constants/appimages.dart';
import 'package:flutter_application_1/src/controllers/navbarcontroller.dart';
import 'package:flutter_application_1/src/helpers/responsive.dart';
import 'package:get/get_instance/src/extension_instance.dart';
import 'package:get/state_manager.dart';

class NavbarWidget extends StatelessWidget {
  const NavbarWidget({super.key});

  @override
  Widget build(BuildContext context) {
    final controller = Get.find<NavbarController>();
    return Obx(() {
      return BottomNavigationBar(
        showSelectedLabels: false,
        showUnselectedLabels: false,
        backgroundColor: AppColors.contentColorWhite,
        currentIndex: controller.selectedIndex.value,
        type: BottomNavigationBarType.fixed,
        onTap: (index) => controller.onTap(index),
        items: [
          _bottomNavigationBarItem(context, AppImages.homeIcon, 'Home'),
          _bottomNavigationBarItem(context, AppImages.shoppingIcon, 'Shop'),
          _bottomNavigationBarItem(context, AppImages.categoryIcon, 'Category'),
          _bottomNavigationBarItem(context, AppImages.printerIcon, 'Print'),
        ],
      );
    });
  }
}

dynamic _bottomNavigationBarItem(
  BuildContext context,
  String image,
  String label,
) {
  return BottomNavigationBarItem(
    icon: Image.asset(image, fit: BoxFit.fill),
    label: label,
    activeIcon: _customActiveIcon(context, image),
  );
}

dynamic _customActiveIcon(BuildContext context, String assetPath) {
  return Container(
    height: Responsive.heightPercentage(context, 0.045),
    width: Responsive.widthPercentage(context, 0.1),
    decoration: BoxDecoration(
      color: AppColors.contentColorRed,
      borderRadius: BorderRadius.circular(10),
    ),
    child: Image.asset(assetPath),
  );
}
