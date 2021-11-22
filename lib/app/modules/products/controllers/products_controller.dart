
import 'package:get/get.dart';
import 'package:godzyken/models/demo_product.dart';

class ProductsController extends GetxController {
  final products = <DemoProduct>[].obs;
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


  @override
  void onInit() {
    super.onInit();

  }



  dialogError(String? msg) => Get.defaultDialog(
    title: 'Error user not found',
    middleText: msg!,
  );

  @override
  void onReady() {
    super.onReady();
    loadDemoProductsFromSomeWhere();

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
