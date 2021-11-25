
import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:getxfire/getxfire.dart';
import 'package:getxfire/getxfire_web.dart';
import 'package:godzyken/services/auth_service.dart';

import 'app/routes/app_pages.dart';
import 'firebase_option.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  WidgetsApp.debugShowWidgetInspectorOverride;
  WidgetInspectorService.instance;

  await GetxFire.init(
    name: 'godzyken',
    options: firebaseOptions,
  );

  GetxfireWeb.registerWith;

  runApp(
    GetMaterialApp.router(
      title: "Application",
      initialBinding: BindingsBuilder(() {
        Get.put(AuthService());
      }),
      defaultTransition: Transition.fade,
      getPages: AppPages.routes,
      routingCallback: (value) => Get.toNamed('/', id: Get.arguments['id']),
      /* onGenerateRoute: (settings) {
        if(settings.name == '/') {
          return GetPageRoute(
            page: () => Scaffold(
              appBar: AppBar(
                title: const Text('Main'),
              ),
              body: Center(
                child: TextButton(
                  onPressed: () {
                    Get.toNamed('profile', id: 1);
                  },
                  child: const Text('Go to Profile'),

                ),
              ),
            )
          );
        }
        else if (settings.name == '/login') {
          return GetPageRoute(
            page: () => Center(
              child: Scaffold(
                appBar: AppBar(
                  title: const Text('Main'),
                ),
                body: const Center(
                  child: Text('login'),
                ),
              ),
            )
          );
        }
      },*/
    ),
  );
}
