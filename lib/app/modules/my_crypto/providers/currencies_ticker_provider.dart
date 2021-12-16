import 'dart:convert';

import 'package:get/get.dart';
import 'package:godzyken/app/modules/my_crypto/utils/currency_data_source.dart';

import '../currencies_ticker_model.dart';

class CurrenciesTickerProvider extends GetConnect {
  static final key = '';
  List<CurrenciesTicker?> currencies = [];
  CurrencyDataSource? currencyDataSource;

  Future<List<CurrenciesTicker?>> getCurrencies() async {
    var response = await get(
        'https://api.nomics.com/v1/currencies/ticker?key=$key&interval=1d,30d&convert=EUR&platform-currency=ETH&per-page=100&page=1');
    if (response.status.hasError) {
      return Future.error(response.statusText!);
    } else {
      if (response.statusCode == 200) {
        final body = json.decode(response.body) as List;

        return body.map((item) => CurrenciesTicker.fromJson(item)).toList();
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
    httpClient.baseUrl = 'https://api.nomics.com/v1/';

    loadCurrencies();

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
