import 'dart:convert';

import 'package:get/get.dart';
import 'package:godzyken/app/modules/my_crypto/utils/currency_data_source.dart';

import '../currencies_ticker_model.dart';

class CurrenciesTickerProvider extends GetConnect {
  static final key = '8NXUYGPIPTGT7RZR8ETX6MGU6KYE7E82US';
  List<CurrenciesTicker?> currencies = [];
  CurrencyDataSource? currencyDataSource;

  Future<List<CurrenciesTicker?>> getCurrencies() async {
    //var response = await get('https://api.coingecko.com/api/v3/simple/price?ids=eth&vs_currencies=bitcoin');
    //var response = await get('https://api.coingecko.com/api/v3/ping');
    //var response = await get('https://api.coingecko.com/api/v3/simple/price?ids=mirrored-ether&vs_currencies=usd&include_market_cap=false&include_24hr_vol=false&include_24hr_change=false&include_last_updated_at=false');
    //var response = await get('https://api.coingecko.com/api/v3/simple/supported_vs_currencies');
    var response = await get('https://api.etherscan.io/api?module=account&action=balance&address=0xde0b295669a9fd93d5f28d9ec85e40f4cb697bae&tag=latest&apikey=$key');
    if (response.status.hasError) {
      Get.log('Reponse Error status :: ' + response.toString());
      return Future.error(response.statusText!);
    } else {
      if (response.statusCode == 200) {
        var jsonString = response.bodyString;
        Get.log('jsonString :: ' + jsonString.toString());

        return currenciesFromJson(jsonString);
      }
      return response.body;
    }
  }

  @override
  void onInit() {
    httpClient.defaultDecoder = (map) {
      if (map is Map<String, dynamic>) return CurrenciesTicker.fromJson(map);
      if (map is List)
        return map.map((item) => CurrenciesTicker.fromJson(item)).toList();
    };
    httpClient.baseUrl = 'https://api.coingecko.com/api/v3/';

  }

  Future<CurrenciesTicker?> getCurrenciesTicker(int id) async {
    final response = await get('currenciesticker/$id');
    return response.body;
  }

  Future<Response<CurrenciesTicker>> postCurrenciesTicker(
          CurrenciesTicker currenciesticker) async =>
      await post('currenciesticker', currenciesticker);

  Future<Response> deleteCurrenciesTicker(int id) async =>
      await delete('currenciesticker/$id');

  Future loadCurrencies() async {
    final currencies = await getCurrencies();

    this.currencies = currencies;
    currencyDataSource = CurrencyDataSource(currencies: currencies);
  }
}
