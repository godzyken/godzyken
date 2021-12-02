import 'package:flutter/cupertino.dart';
import 'package:flutter_web3/ethereum.dart';

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

  bool get isEnabled => Ethereum.ethereum != ethereum!;
  bool get isInOperatingChain => currentChain == OPERATING_CHAIN;
  bool get isConnected => isEnabled && currentAddress.isNotEmpty;

  String currentAddress = '';
  int currentChain = -1;

  static const OPERATING_CHAIN = 56;

  connect() async {
    if (isEnabled) {
      final accs = await ethereum!.requestAccount();
      if(accs.isNotEmpty) currentAddress = accs.first;

      currentChain = await ethereum!.getChainId();

      update();
    }
  }

  clear() {
    currentAddress = '';
    currentChain = -1;
    update();
  }

  init() {
    if (isEnabled) {
      ethereum!.onAccountsChanged((accounts) {
        clear();
      });

      ethereum!.onChainChanged((chainId) {
        clear();
      });
    }
    throw RxStatus.error(ethereum.toString());
  }

  @override
  void onInit() {
    super.onInit();

    init();

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
