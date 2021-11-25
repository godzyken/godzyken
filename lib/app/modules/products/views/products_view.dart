import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

import 'package:get/get.dart';
import 'package:godzyken/app/routes/app_pages.dart';

import '../controllers/products_controller.dart';

class ProductsView extends GetView<ProductsController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton.extended(
        onPressed: controller.loadDemoProductsFromSomeWhere,
        label: const Text('Add'),
      ),
      body: Column(
        children: [
          const Hero(
            tag: 'heroLogo',
            child: FlutterLogo(),
          ),
          Expanded(
            child: Obx(
              () => RefreshIndicator(
                onRefresh: () async {
                  controller.products.clear();
                  controller.loadDemoProductsFromSomeWhere();
                },
                child: ListView.builder(
                  itemCount: controller.products.length,
                  itemBuilder: (context, index) {
                    final item = controller.products[index];
                    return ListTile(
                      onTap: () {
                        Get.rootDelegate
                            .toNamed(Routes.PRODUCT_DETAILS(item.id));
                      },
                      title: Text(item.name!),
                      subtitle: Text(item.id!),
                      leading: CircleAvatar(
                        child: PageView.builder(
                            itemCount: controller.products.length,
                            itemBuilder: (context, image) {
                              final img = controller.products[image];
                             if (img != null) {
                               return Image(
                                   image: NetworkImage(img.user!.avatarUrl, headers: Get.arguments['user']));
                             }
                             return ImageIcon(img.user!.avatarUrl);
                            }),
                      ),
                    );
                  },
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
