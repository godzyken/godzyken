import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:getxfire/getxfire.dart';

import 'package:godzyken/app/routes/app_pages.dart';
import 'package:godzyken/services/auth_service.dart';

import '../controllers/login_controller.dart';

class LoginView extends GetView<LoginController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: GetBuilder<LoginController>(
          init: LoginController(),
          builder: (_) {
            return Center(
              child: Card(
                child: Padding(
                  padding: const EdgeInsets.all(16),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      TextFormField(
                        onChanged: (value) => _.emailC.value = value,
                        decoration: const InputDecoration(labelText: 'Email'),
                        validator: (String? value) {
                          if (value!.isEmpty) return 'Please enter some text';
                          return null;
                        },
                      ),
                      TextFormField(
                        onChanged: (value) => _.passwordC.value = value,
                        decoration:
                            const InputDecoration(labelText: 'Password'),
                        validator: (String? value) {
                          if (value!.isEmpty) return 'Please enter some text';
                          return null;
                        },
                        obscureText: true,
                      ),
                      Container(
                        padding: const EdgeInsets.only(top: 16),
                        alignment: Alignment.center,
                        child: MaterialButton(
                          child: const Text(
                            'LOGIN !!',
                            style: TextStyle(color: Colors.blue, fontSize: 20),
                          ),
                          onPressed: () {
                            _.loginEmailPassword();
                            final thenTo = Get
                                .rootDelegate
                                .currentConfiguration!
                                .currentPage!
                                .parameters?['then'];
                            Get.rootDelegate.offNamed(thenTo ?? Routes.HOME);
                          },
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            );
          }),
      bottomSheet: BottomAppBar(
        color: Colors.amber,
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Obx(
              () {
                final isLoggedIn = AuthService.to.isLoggedInValue;
                return Text(
                  'You are currently:'
                  ' ${isLoggedIn ? "Logged In" : "Not Logged In"}'
                  "\nIt's impossible to enter this "
                  "route when you are not logged in!",
                  style: const TextStyle(
                      color: Colors.redAccent,
                      fontWeight: FontWeight.bold,
                      fontSize: 12),
                  textAlign: TextAlign.center,
                  softWrap: true,
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}
