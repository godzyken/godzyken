import 'package:flutter/cupertino.dart';

import 'package:get/get.dart';

import 'package:godzyken/app/modules/home/domain/adapter/adapter.dart';
import 'package:godzyken/app/modules/home/domain/entity/user_model.dart';

class HomeController extends SuperController<UserModel> {
  HomeController({required this.homeRepository});

  final IHomeRepository homeRepository;
  final navigatorkey = GlobalKey<NavigatorState>();
  NavigatorState get router => navigatorkey.currentState!;

  final count = 0.obs;
  Worker? worker;

  @override
  void onInit() {
    super.onInit();

    append(() => homeRepository.getUsers);

    worker = ever(count, (value) {
      print('counter changed to: $value');
      if (value == 10) worker!.dispose();
    }, condition: () => count > 5);
  }

  UserModel getUserById(String id) {
    final index = int.tryParse(id);
    if (index == state!.id) {
      return UserModel(id: index);
    }

    return UserModel(login: state!.login);
  }

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {}
  void increment() => count.value++;

  @override
  void onDetached() {
    // TODO: implement onDetached
  }

  @override
  void onInactive() {
    // TODO: implement onInactive
  }

  @override
  void onPaused() {
    // TODO: implement onPaused
  }

  @override
  void onResumed() {
    // TODO: implement onResumed
  }
}
