import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/dashboard_controller.dart';

class DashboardView extends GetView<DashboardController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: GetBuilder<DashboardController>(
        init: DashboardController(),
          builder: (_) {
        return Center(
          child: Obx(
                () =>
                Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    const Text(
                      'DashboardView is working',
                      style: TextStyle(fontSize: 20),
                    ),
                    Text('Time: ${_.now.value.toString()}'),
                  ],
                ),
          ),
        );
      }),
    );
  }
}
