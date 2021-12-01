import 'dart:async';

import 'package:get/get.dart';
import 'package:godzyken/app/modules/profile/controllers/profile_controller.dart';

class DashboardController extends GetxController {
  final now = DateTime.now().obs;
  final auth = Get.find<ProfileController>().auth;
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

  @override
  void onClose() {
    super.onClose();
    auth.signOut();
    now.refresh();
  }
}
