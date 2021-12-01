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
          drawer: const DrawerView(),
          appBar: AppBar(
            title: Text(title ?? ''),
            centerTitle: true,
          ),
          body: Container(
              padding: const EdgeInsets.only(
                  left: 200.0, right: 200.0, top: 200.0, bottom: 200.0),
              child: GetRouterOutlet(
                initialRoute: Routes.HOME,
                anchorRoute: '/',
                filterPages: (afterAnchor) {
                  return afterAnchor.take(1);
                },
              ),
          ),
        );
      },
    );
  }
}
