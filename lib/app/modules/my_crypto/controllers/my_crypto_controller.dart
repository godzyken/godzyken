import 'package:get/get.dart';
import 'package:godzyken/app/modules/my_crypto/currencies_ticker_model.dart';
import 'package:godzyken/app/modules/my_crypto/providers/currencies_ticker_provider.dart';

class MyCryptoController extends GetxController {
  //TODO: Implement MyCryptoController
  final currencies = <CurrenciesTicker?>[].obs;
  final currency = CurrenciesTicker().obs;

  final currencyDataSource = CurrenciesTickerProvider().currencyDataSource;


  final count = 0.obs;
  @override
  void onInit() {
    super.onInit();
    Get.log('MyCrypto controller initialized');
  }

  @override
  void onReady() {
    super.onReady();

    fetchCrypto();
  }

  @override
  void onClose() {}
  void increment() => count.value++;

  void fetchCrypto() async {
    var crypto = await CurrenciesTickerProvider().loadCurrencies();
    if (crypto != null) {
      currencies.value = crypto;

      for (var c in currencies) {
        currencies.addIf(
            c,
            CurrenciesTicker(
              id: c!.id,
              name: c.name,
              currency: c.currency,
              status: c.status,
              logoUrl: c.logoUrl,
              firstPricedAt: c.firstPricedAt,
              price: c.price,
            )
        );
      }
    }
  }
}
