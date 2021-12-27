import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:godzyken/app/routes/app_pages.dart';

import '../controllers/profile_controller.dart';

class ProfileView extends GetView<ProfileController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.transparent,
      body: Column(
        children: [
          Hero(
            tag: 'heroLogo',
            child: CircleAvatar(
              child:
                  Image(image: NetworkImage(controller.user.value.avatarUrl)),
            ),
          ),
          Expanded(
            child: Obx(
              () => RefreshIndicator(
                onRefresh: () async {
                  controller.user.stream;
                },
                child: ListView(
                  shrinkWrap: true,
                  addAutomaticKeepAlives: true,
                  addRepaintBoundaries: true,
                  children: [
                    Container(
                      color: Colors.tealAccent,
                      child: ListTile(
                        title: Text(controller.user.value.login),
                        subtitle: Text(controller.user.value.htmlUrl),
                        onTap: () {
                          Get.rootDelegate.toNamed(
                              Routes.USER_MODEL(controller.user.value.nodeId));
                        },
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
