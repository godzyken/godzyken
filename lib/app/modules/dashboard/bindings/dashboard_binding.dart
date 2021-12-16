import 'package:get/get.dart';

import 'package:godzyken/app/modules/user_model/controllers/user_model_controller.dart';

import '../controllers/dashboard_controller.dart';

class DashboardBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<DashboardController>(
      () => DashboardController(),
    );
  }
}
