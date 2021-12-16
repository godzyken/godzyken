import 'package:get/get.dart';

import 'package:godzyken/app/modules/home/domain/adapter/adapter.dart';
import 'package:godzyken/app/modules/home/providers/user_provider.dart';
import 'package:godzyken/app/modules/home/providers/user_repository.dart';

import '../controllers/home_controller.dart';

class HomeBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<IHomeRepository>(
      () => HomeRepository(provider: Get.find()),
    );
    Get.lazyPut<IUserProvider>(
      () => UserProvider(),
    );
    Get.lazyPut<HomeController>(
      () => HomeController(homeRepository: Get.find()),
    );
  }
}
