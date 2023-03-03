import 'package:get/get.dart';

import '../../../../presentation/second_screen/controllers/second_screen_controller.dart';

class SecondScreenBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<SecondScreenController>(
      () => SecondScreenController(),
    );
  }
}
