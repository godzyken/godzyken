import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';
import 'package:godzyken/app/modules/my_crypto/providers/currencies_ticker_provider.dart';

class MyCryptoController extends GetxController {
  //TODO: Implement MyCryptoController
  final currencyDataSource = CurrenciesTickerProvider().currencyDataSource;

  final count = 0.obs;
  @override
  void onInit() {
    super.onInit();
    currencyDataSource?.dispose();
  }

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {}
  void increment() => count.value++;
}
