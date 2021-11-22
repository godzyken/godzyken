import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:godzyken/app/routes/app_pages.dart';

import '../controllers/profile_controller.dart';

class ProfileView extends GetView<ProfileController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.amber,
      body: Center(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            const Text(
              'ProfileView is working',
              style: TextStyle(fontSize: 20),
            ),
            const Hero(
              tag: 'heroLogo',
              child: FlutterLogo(),
            ),
            MaterialButton(
              child: const Text('Show a test dialog'),
              onPressed: () {
                //shows a dialog
                Get.defaultDialog(
                  title: 'Test Dialog !!',
                  barrierDismissible: true,
                );
              },
            ),
            MaterialButton(
              child: const Text('Show a test dialog in Home router outlet'),
              onPressed: () {
                //shows a dialog

                Get.defaultDialog(
                  title: 'Test Dialog In Home Outlet !!',
                  barrierDismissible: true,
                  navigatorKey: Get.nestedKey(Routes.HOME),
                );
              },
            )
          ],
        ),
      ),
    );
  }
}
