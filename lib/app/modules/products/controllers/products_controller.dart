import 'package:get/get.dart';
import 'package:godzyken/models/demo_product.dart';
import 'package:godzyken/models/repo_git.dart';
import 'package:godzyken/services/products_service.dart';

class ProductsController extends GetxController {
  final products = <DemoProduct?>[].obs;
  final demoProduct = DemoProduct().obs;

  var hasUser = false.obs;

  void loadDemoProductsFromSomeWhere() {
    products.add(
      DemoProduct(
        user: demoProduct.value.user,
        name: 'Product added on: ${DateTime.now().toString()}',
        id: DateTime.now().millisecondsSinceEpoch.toString(),
      ),
    );
  }

  void fetchProducts() async {
    var demos = await ProductsService.fetchProducts();
    if (demos != null) {
      products.value = demos;

      products.addIf(
          demos,
          DemoProduct(
              id: DateTime.now().millisecondsSinceEpoch.toString(),
              name: demos.single!.name,
              user: demos.single!.rx.name));
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
    loadDemoProductsFromSomeWhere();
    fetchProducts();
  }

  @override
  void onClose() {
    Get.printInfo(info: 'Products: onClose');
    super.onClose();
  }

  handleUser(isUser) {
    if (isUser) {
      demoProduct.value;
      print('user ok' + '${demoProduct.value.user!}');
    }
    Get.snackbar('error', demoProduct.value.user!.obs.toString());
  }
}
