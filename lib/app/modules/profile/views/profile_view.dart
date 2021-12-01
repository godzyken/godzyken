import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:godzyken/app/routes/app_pages.dart';

import '../controllers/profile_controller.dart';

class ProfileView extends GetView<ProfileController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:Column(
          children: [
            const Hero(
              tag: 'heroLogo',
              child: FlutterLogo(),
            ),
            Expanded(
                child: Obx(
                    () => RefreshIndicator(
                      onRefresh: () async {
                        controller.users.clear();
                        controller.loadProfilesFromSomeWhere();
                      },
                      child: ListView.builder(
                        itemCount: controller.users.length,
                        itemBuilder: (context, index) {
                          final item = controller.users[index];
                          return ListTile(
                            onTap: () {
                              Get.rootDelegate
                                  .toNamed(Routes.USER_MODEL(item.id));
                            },
                            title: Text(item.name!),
                            subtitle: Text(item.id!),
/*
                            leading: CircleAvatar(
                              child: PageView.builder(
                                  itemCount: controller.users.length,
                                  itemBuilder: (context, image) {
                                    final img = controller.users[image];
                                    if (img != null) {
                                      return Image(
                                          image: NetworkImage(img.avatarUrl, headers: Get.arguments['user']));
                                    }
                                    return ImageIcon(img.avatarUrl);
                                  }),
                            ),
*/
                          );
                        },
                      ),
                    ),
                )
            )
          ],
        ),
      floatingActionButton: FloatingActionButton.extended(
        onPressed: controller.loadProfilesFromSomeWhere,
        label: const Text('Add'),
      ),
    );
  }
}
