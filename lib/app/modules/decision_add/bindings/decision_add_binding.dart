import 'package:get/get.dart';

import '../controllers/decision_add_controller.dart';

class DecisionAddBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<DecisionAddController>(
      () => DecisionAddController(),
    );
  }
}
