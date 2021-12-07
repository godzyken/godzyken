import 'package:get/get.dart';

import '../controllers/repos_git_controller.dart';

class ReposGitBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<ReposGitController>(
      () => ReposGitController(),
    );
  }
}
