import 'package:get/get.dart';

import '../controllers/my_crypto_controller.dart';

class MyCryptoBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<MyCryptoController>(
      () => MyCryptoController(),
    );
  }
}
