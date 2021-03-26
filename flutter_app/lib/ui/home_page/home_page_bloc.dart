import 'package:flux/services/app_service.dart';
import 'package:get/get.dart';

class HomePageBindings implements Bindings {
  @override
  void dependencies() {
    Get.put(HomePageController());
  }
}

class HomePageController extends GetxController {
  final AppService appService = Get.find();
}
