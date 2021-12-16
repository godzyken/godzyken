import 'package:get/get.dart';

import 'package:godzyken/app/modules/products/providers/repository_provider.dart';
import 'package:godzyken/app/modules/products/repository_model.dart';

class ProductsController extends GetxController {
  final repositories = <Repository?>[].obs;
  final repository = Repository().obs;
  Owner? get owner => repositories.single!.owner;

  var hasUser = false.obs;

  void fetchRepo() async {
    var repo = await RepositoryProvider().fetchRepository();
    if (repo != null) {
      repositories.value = repo;

      for (var r in repositories) {
        repositories.addIf(
            r,
            Repository(
              id: r!.id,
              name: r.name,
              description: r.description,
              createdAt: r.createdAt,
            ));
      }
    }
  }

  @override
  void onInit() {
    super.onInit();

    Get.log('Product controller initialized');
  }

  dialogError(String? msg) => Get.defaultDialog(
        title: 'Error user not found',
        middleText: msg!,
      );

  @override
  void onReady() {
    super.onReady();
    fetchRepo();
  }

  @override
  void onClose() {
    Get.printInfo(info: 'Repositories: onClose');
    super.onClose();
  }
}
