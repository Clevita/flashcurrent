import 'package:get/get.dart';

import '../controllers/detailedcategory_controller.dart';

class DetailedcategoryBinding extends Bindings {
  @override
  void dependencies() {
    Get.put(
      DetailedcategoryController(),
    );
  }
}
