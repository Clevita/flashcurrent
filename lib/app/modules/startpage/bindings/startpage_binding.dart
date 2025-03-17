import 'package:get/get.dart';

import '../controllers/startpage_controller.dart';

class StartpageBinding extends Bindings {
  @override
  void dependencies() {
    Get.put(
      StartpageController(),
    );
  }
}
