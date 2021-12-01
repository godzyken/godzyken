import 'package:get/get.dart';
import 'package:godzyken/app/modules/home/domain/adapter/adapter.dart';
import 'package:godzyken/app/modules/home/providers/user_provider.dart';
import 'package:godzyken/app/modules/home/providers/user_repository.dart';
import 'package:godzyken/app/modules/profile/controllers/profile_controller.dart';

import '../controllers/dashboard_controller.dart';

class DashboardBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<DashboardController>(
      () => DashboardController(),
    );
    Get.lazyPut<ProfileController>(
        () => ProfileController());
    Get.lazyPut<IHomeRepository>(() => HomeRepository(provider: Get.find()));
    Get.lazyPut<IUserProvider>(() => UserProvider());
  }
}
