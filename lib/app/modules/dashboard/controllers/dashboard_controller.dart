import 'dart:async';

import 'package:get/get.dart';
import 'package:godzyken/app/modules/user_model/controllers/user_model_controller.dart';
import 'package:godzyken/services/auth_service.dart';

class DashboardController extends GetxController {
  final now = DateTime.now().obs;
  final auth = Get.find<UserModelController>().auth;
  @override
  void onReady() {
    super.onReady();
    Timer.periodic(
      const Duration(seconds: 1),
          (timer) {
        now.value = DateTime.now();
      },
    );

    print(auth);
  }
}
