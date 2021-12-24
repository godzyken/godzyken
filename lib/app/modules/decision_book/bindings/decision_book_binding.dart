import 'package:get/get.dart';

import '../controllers/decision_book_controller.dart';

class DecisionBookBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<DecisionBookController>(
      () => DecisionBookController(),
    );
  }
}
