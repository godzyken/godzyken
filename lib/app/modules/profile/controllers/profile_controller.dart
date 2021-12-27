import 'package:get/get.dart';
import 'package:getxfire/getxfire.dart';
import 'package:godzyken/app/modules/products/providers/repository_provider.dart';

import 'package:godzyken/app/modules/products/repository_model.dart';

class ProfileController extends GetxController {
  final user = Owner().obs;

  final isLoading = false.obs;

  final count = 0.obs;
  @override
  void onInit() {
    super.onInit();

    Get.log('Profile controller initialized ${user.value.login}');
  }

  @override
  void onReady() {
    super.onReady();
    user.stream;
    update();

  }

  @override
  void onClose() {}
  void increment() => count.value++;

}
