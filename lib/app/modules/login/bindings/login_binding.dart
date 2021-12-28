import 'package:get/get.dart';
import 'package:godzyken/app/modules/user_model/controllers/user_model_controller.dart';

import '../controllers/login_controller.dart';

class LoginBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<LoginController>(
      () => LoginController(),
    );

    Get.lazyPut<UserModelController>(
          () => UserModelController(Get.parameters['userId'] ?? ''),
    );
  }
}
