import 'package:get/get.dart';

import '../controllers/decision_details_controller.dart';

class DecisionDetailsBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<DecisionDetailsController>(
      () => DecisionDetailsController(
        Get.parameters['decisionId'] ?? '',
      ),
    );
  }
}
