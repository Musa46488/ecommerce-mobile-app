import 'package:flutter_application_1/src/controllers/homescreencontroller.dart';
import 'package:get/instance_manager.dart';

class HomeBinding extends Bindings {
  @override
  void dependencies(){
    Get.lazyPut<HomeScreenController>(() => HomeScreenController());
  }
}