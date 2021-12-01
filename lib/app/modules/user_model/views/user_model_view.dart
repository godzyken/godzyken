import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/user_model_controller.dart';

class UserModelView extends GetView<UserModelController> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            const Text(
              'User is working',
              style: TextStyle(fontSize: 20),
            ),
            Text('UserId: ${controller.userId}')
          ],
        ),
      ),
    );
  }
}
