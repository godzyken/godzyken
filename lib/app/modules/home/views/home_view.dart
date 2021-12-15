import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:godzyken/app/routes/app_pages.dart';

import '../controllers/home_controller.dart';

class HomeView extends GetView<HomeController> {
  const HomeView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetRouterOutlet.builder(
      builder: (context, delegate, currentRoute) {
        final currentLocation = currentRoute?.location;
        var currentIndex = 0;
        if (currentLocation?.startsWith(Routes.PRODUCTS) == true) {
          currentIndex = 2;
        }
        if (currentLocation?.startsWith(Routes.PROFILE) == true) {
          currentIndex = 1;
        }

        return GetBuilder<HomeController>(
            init: HomeController(homeRepository: Get.find()),
            builder: (h) => Scaffold(
                  backgroundColor: Colors.transparent,
                  body: GetRouterOutlet(
                    initialRoute: Routes.DASHBOARD,
                    key: Get.nestedKey(Routes.HOME),
                  ),
                  bottomNavigationBar: BottomNavigationBar(
                    backgroundColor: Colors.amberAccent,
                    currentIndex: currentIndex,
                    onTap: (value) {
                      switch (value) {
                        case 0:
                          delegate.toNamed(Routes.HOME);
                          break;
                        case 1:
                          delegate.toNamed(Routes.PROFILE);
                          break;
                        case 2:
                          delegate.toNamed(Routes.PRODUCTS);
                          break;
                        default:
                      }
                    },
                    items: const [
                      // _Paths.HOME + [Empty]
                      BottomNavigationBarItem(
                          icon: Icon(Icons.home),
                          label: 'Home',
                          backgroundColor: Colors.deepPurple),
                      // _Paths.HOME + Routes.PROFILE
                      BottomNavigationBarItem(
                          icon: Icon(Icons.account_box_rounded),
                          label: 'Profile',
                          backgroundColor: Colors.limeAccent),
                      // _Paths.HOME + _Paths.PRODUCTS
                      BottomNavigationBarItem(
                          icon: Image(
                            image: AssetImage('image/github_logo.png'),
                            height: 30.0,
                            width: 40.0,
                            fit: BoxFit.contain,
                            alignment: Alignment.center,
                          ),
                          label: 'Products',
                          backgroundColor: Colors.cyanAccent),
                    ],
                  ),
                ));
      },
    );
  }
}
