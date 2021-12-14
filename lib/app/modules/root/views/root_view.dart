import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:get/get_navigation/get_navigation.dart';
import 'package:godzyken/app/routes/app_pages.dart';

import '../controllers/root_controller.dart';
import 'drawer_view.dart';

class RootView extends GetView<RootController> {
  @override
  Widget build(BuildContext context) {
    return GetRouterOutlet.builder(
      builder: (context, delegate, current) {
        final title = current?.location;
        return Scaffold(
          extendBodyBehindAppBar: true,
          drawer: const DrawerView(),
          appBar: AppBar(
            title: Text(title ?? ''),
            centerTitle: true,
            backgroundColor: Colors.transparent,
          ),
          body: Container(
            padding: const EdgeInsets.only(
                left: 200.0, right: 200.0, top: 200.0, bottom: 200.0),
            decoration: const BoxDecoration(
              image: DecorationImage(
                image: AssetImage('image/godzy_logo.png'),
                fit: BoxFit.fill,
              ),
              shape: BoxShape.rectangle,
            ),
            child: GetRouterOutlet(
              initialRoute: Routes.HOME,
            ),
          ),
        );
      },
    );
  }
}
