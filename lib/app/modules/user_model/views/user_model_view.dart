import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:godzyken/app/routes/app_pages.dart';

import '../controllers/user_model_controller.dart';

class UserModelView extends GetView<UserModelController> {
  const UserModelView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetRouterOutlet.builder(
      builder: (context, delegate, currentRoute) {
        final currentLocation = currentRoute?.location;
        var currentIndex = 0;
        if (currentLocation?.startsWith(Routes.USER_MODEL) == true) {
          currentIndex = 2;
        }
        if (currentLocation?.startsWith(Routes.PROFILE) == true) {
          currentIndex = 1;
        }
        return Scaffold(
          body: GetRouterOutlet(
            initialRoute: Routes.DASHBOARD,
            key: Get.nestedKey(Routes.USER_MODEL),
          ),
          bottomNavigationBar: BottomNavigationBar(
            currentIndex: currentIndex,
            onTap: (value) {
              switch (value) {
                case 0:
                  delegate.toNamed(Routes.PROFILE);
                  break;
                case 1:
                  delegate.toNamed(Routes.USER_MODEL);
                  break;
                case 2:
                  delegate.toNamed(Routes.LOGIN_THEN(controller.user!.login));
                  break;
                default:
              }
            },
            items: const [
              BottomNavigationBarItem(
                icon: Icon(Icons.account_box_rounded),
                label: 'Profile',
              ),
              BottomNavigationBarItem(
                icon: Icon(Icons.account_box_rounded),
                label: 'Profile',
              ),
              // _Paths.HOME + _Paths.PRODUCTS
              BottomNavigationBarItem(
                icon: Icon(Icons.account_box_rounded),
                label: 'user',
              ),
            ],
          ),
        );
      },
    );
  }
}
