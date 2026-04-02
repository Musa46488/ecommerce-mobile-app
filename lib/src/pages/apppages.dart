import 'package:flutter_application_1/src/binding/homebinding.dart';
import 'package:flutter_application_1/src/routes/approutes.dart';
import 'package:flutter_application_1/src/screens/cartscreen.dart';
import 'package:flutter_application_1/src/screens/categoryscreen.dart';
import 'package:flutter_application_1/src/screens/homescreen.dart';
import 'package:flutter_application_1/src/screens/onboardscreen.dart';
import 'package:flutter_application_1/src/screens/printscreen.dart';
import 'package:flutter_application_1/src/screens/splashscreen.dart';
import 'package:get/get.dart';

class AppPages {
  static const initial = AppRoutes.splash;

  static final routes = [
    GetPage(name: AppRoutes.splash, page: () => SplashScreen()),
    GetPage(name: AppRoutes.onboard, page: () => OnboardScreen()),
    GetPage(
      name: AppRoutes.home,
      page: () => HomeScreen(),
      binding: HomeBinding(),
    ),
    GetPage(name: AppRoutes.cart, page: () => CartScreen()),
    GetPage(name: AppRoutes.category, page: () => CategoryScreen()),
    GetPage(name: AppRoutes.print, page: () => PrintScreen()),
  ];
}
