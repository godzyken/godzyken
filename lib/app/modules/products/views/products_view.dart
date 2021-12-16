import 'package:flutter/material.dart';

import 'package:get/get.dart';

import 'package:godzyken/app/routes/app_pages.dart';

import '../controllers/products_controller.dart';

class ProductsView extends GetView<ProductsController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.transparent,
      body: Column(
        children: [
          const Hero(
            tag: 'githubLogo',
            child: Image(
              image: AssetImage('image/github_logo.png'),
              height: 40.0,
              width: 50.0,
              fit: BoxFit.contain,
              alignment: Alignment.center,
            ),
          ),
          Expanded(
            child: Obx(
              () => RefreshIndicator(
                onRefresh: () async {
                  controller.repositories.clear();
                },
                child: ListView.builder(
                  itemCount: controller.repositories.length,
                  itemBuilder: (context, index) {
                    final item = controller.repositories[index];
                    return Card(
                        color: Colors.amberAccent,
                        elevation: 2.0,
                        shadowColor: Colors.greenAccent,
                        child: ListTile(
                          onTap: () {
                            Get.rootDelegate
                                .toNamed(Routes.PRODUCT_DETAILS(item!.nodeId));
                          },
                          title: Text(item!.name!),
                          subtitle: Text(item.createdAt!),
                          trailing: Text(item.updatedAt!),
                          leading: CircleAvatar(
                              child: Image(
                                  image: NetworkImage(item.owner!.avatarUrl))),
                          contentPadding: const EdgeInsets.all(5.0),
                        ));
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
