import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:godzyken/app/routes/app_pages.dart';
import 'package:godzyken/services/auth_service.dart';

class DrawerView extends GetView {
  const DrawerView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Drawer(
      backgroundColor: Colors.greenAccent,
      child: Column(
        children: [
          Container(
            height: 100,
            decoration: const BoxDecoration(
              image: DecorationImage(
                image: AssetImage('image/digital_transf.jpg'),
                fit: BoxFit.fill,
              ),
              shape: BoxShape.rectangle,
            ),
          ),
          ListTile(
            title: const Text('Home'),
            onTap: () {
              Get.rootDelegate.toNamed(Routes.HOME);
              //to close the drawer

              // Navigator.of(context).pop();
              Get.nestedKey('/home');
            },
          ),
          ListTile(
            title: const Text('Settings'),
            onTap: () {
              Get.rootDelegate.toNamed(Routes.SETTINGS);
              //to close the drawer

              // Navigator.of(context).pop();
              Get.nestedKey('/settings');
            },
          ),
          ListTile(
            title: const Text('Repositories'),
            onTap: () {
              Get.rootDelegate.toNamed(Routes.REPOS_GIT);
              //to close the drawer

              // Navigator.of(context).pop();
              Get.nestedKey('/repos-git');
            },
          ),
          if (AuthService.to.isLoggedInValue)
            ListTile(
              title: const Text(
                'Logout',
                style: TextStyle(
                  color: Colors.red,
                ),
              ),
              onTap: () {
                AuthService.to.logout();
                Get.rootDelegate.toNamed(Routes.LOGIN);
                //to close the drawer

                // Navigator.of(context).pop();
                Get.nestedKey('/login');
              },
            ),
          if (!AuthService.to.isLoggedInValue)
            ListTile(
              title: const Text(
                'Login',
                style: TextStyle(
                  color: Colors.blue,
                ),
              ),
              onTap: () {
                Get.rootDelegate.toNamed(Routes.LOGIN);
                //to close the drawer

                // Navigator.of(context).pop();
                Get.offAndToNamed('/login');
              },
            ),
        ],
      ),
    );
  }
}
