import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/decision_details_controller.dart';

class DecisionDetailsView extends GetView<DecisionDetailsController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            const Text(
              'Decision Details View is working',
              style: TextStyle(fontSize: 20),
            ),
            Text('Decision Id: ${controller.decisionId}')
          ],
        ),
      ),
    );
  }
}
