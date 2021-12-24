import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';

import 'package:godzyken/app/modules/products/providers/repository_provider.dart';
import 'package:godzyken/app/modules/products/repository_model.dart';

class ProductsController extends GetxController {
  final repositories = <Repository?>[].obs;
  final repository = Repository().obs;
  final count = 0.obs;
  final scroller = ScrollController();

  var isLoading = false.obs;

  @override
  void onInit() {
    super.onInit();

    Get.log('Product controller initialized');
  }

  @override
  void onReady() {
    super.onReady();
    fetchRepo();

    update();
  }

  @override
  void onClose() {
    Get.printInfo(info: 'Repositories: onClose');
    super.onClose();
  }

  dialogError(String? msg) => Get.defaultDialog(
    title: 'Error user not found',
    middleText: msg!,
  );

  void increment() => count.value++;

  void fetchRepo() async {
    try {
      isLoading.value = true;
      var repo = await RepositoryProvider().fetchRepository();
      if (repo != null) {
        repositories.assignAll(repo);

        update();
      }
      isLoading.value = false;
    } finally {
      isClosed;
    }
  }


}
