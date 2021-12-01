import 'package:get/get.dart';
import 'package:godzyken/app/modules/home/domain/adapter/adapter.dart';
import 'package:godzyken/app/modules/user_model/providers/user_model_repository.dart';
import 'package:godzyken/app/modules/user_model/providers/user_provider.dart';

import '../controllers/user_model_controller.dart';

class UserModelBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<UserModelController>(
      () => UserModelController(Get.parameters['productId'] ?? ''),
    );
    Get.lazyPut<IUserModelProvider>(
      () => UserModelProvider(),
    );
    Get.lazyPut<IHomeRepository>(
      () => UserModelRepository(provider: Get.find()),
    );
  }
}
