import 'dart:convert';

import 'package:get/get.dart';
import 'package:godzyken/app/modules/my_crypto/pricingd_model.dart';
import 'package:godzyken/app/modules/my_crypto/utils/currency_data_source.dart';

class RxCurrenciesTicker {
  final currency = 'BTC'.obs;
  final id = 'BTC'.obs;
  final status = 'active'.obs;
  final price = 8451.36516421.obs;
  final priceDate = '2019-06-14T00:00:00Z'.obs;
  final priceTimestamp = '2019-06-14T12:35:00Z'.obs;
  final symbol = 'BTC'.obs;
  final circulatingSupply = 17758462.obs;
  final maxSupply = 21000000.obs;
  final name = 'Bitcoin'.obs;
  final logoUrl =
      'https://s3.us-east-2.amazonaws.com/nomics-api/static/images/currencies/btc.svg'
          .obs;
  final marketCap = 150083247116.70.obs;
  final marketCapDominance = 0.4080.obs;
  final transparentMarketCap = 150003247116.7.obs;
  final numExchanges = 357.obs;
  final numPairs = 42118.obs;
  final numPairsUnmapped = 4591.obs;
  final firstCandle = '2011-08-18T00:00:00Z'.obs;
  final firstTrade = '2011-08-18T00:00:00Z'.obs;
  final firstOrderBook = '2017-01-06T00:00:00Z'.obs;
  final firstPricedAt = '2017-08-18T18:22:19Z'.obs;
  final rank = 1.obs;
  final rankDelta = 0.obs;
  final high = 19404.81116899.obs;
  final highTimestamp = '2017-12-16'.obs;
  final pricingd = Pricingd().obs;
}

class CurrenciesTicker {
  final rx = RxCurrenciesTicker();

  get currency => rx.currency.value;

  set currency(value) => rx.currency.value = value;

  get id => rx.id.value;

  set id(value) => rx.id.value = value;

  get status => rx.status.value;

  set status(value) => rx.status.value = value;

  get price => rx.price.value;

  set price(value) => rx.price.value = value;

  get priceDate => rx.priceDate.value;

  set priceDate(value) => rx.priceDate.value = value;

  get priceTimestamp => rx.priceTimestamp.value;

  set priceTimestamp(value) => rx.priceTimestamp.value = value;

  get symbol => rx.symbol.value;

  set symbol(value) => rx.symbol.value = value;

  get circulatingSupply => rx.circulatingSupply.value;

  set circulatingSupply(value) => rx.circulatingSupply.value = value;

  get maxSupply => rx.maxSupply.value;

  set maxSupply(value) => rx.maxSupply.value = value;

  get name => rx.name.value;

  set name(value) => rx.name.value = value;

  get logoUrl => rx.logoUrl.value;

  set logoUrl(value) => rx.logoUrl.value = value;

  get marketCap => rx.marketCap.value;

  set marketCap(value) => rx.marketCap.value = value;

  get marketCapDominance => rx.marketCapDominance.value;

  set marketCapDominance(value) => rx.marketCapDominance.value = value;

  get transparentMarketCap => rx.transparentMarketCap.value;

  set transparentMarketCap(value) => rx.transparentMarketCap.value = value;

  get numExchanges => rx.numExchanges.value;

  set numExchanges(value) => rx.numExchanges.value = value;

  get numPairs => rx.numPairs.value;

  set numPairs(value) => rx.numPairs.value = value;

  get numPairsUnmapped => rx.numPairsUnmapped.value;

  set numPairsUnmapped(value) => rx.numPairsUnmapped.value = value;

  get firstCandle => rx.firstCandle.value;

  set firstCandle(value) => rx.firstCandle.value = value;

  get firstTrade => rx.firstTrade.value;

  set firstTrade(value) => rx.firstTrade.value = value;

  get firstOrderBook => rx.firstOrderBook.value;

  set firstOrderBook(value) => rx.firstOrderBook.value = value;

  get firstPricedAt => rx.firstPricedAt.value;

  set firstPricedAt(value) => rx.firstPricedAt.value = value;

  get rank => rx.rank.value;

  set rank(value) => rx.rank.value = value;

  get rankDelta => rx.rankDelta.value;

  set rankDelta(value) => rx.rankDelta.value = value;

  get high => rx.high.value;

  set high(value) => rx.high.value = value;

  get highTimestamp => rx.highTimestamp.value;

  set highTimestamp(value) => rx.highTimestamp.value = value;

  get pricingd => rx.pricingd.value;

  set pricingd(value) => rx.pricingd.value = value;

  CurrenciesTicker(
      {currency,
      id,
      status,
      price,
      priceDate,
      priceTimestamp,
      symbol,
      circulatingSupply,
      maxSupply,
      name,
      logoUrl,
      marketCap,
      marketCapDominance,
      transparentMarketCap,
      numExchanges,
      numPairs,
      numPairsUnmapped,
      firstCandle,
      firstTrade,
      firstOrderBook,
      firstPricedAt,
      rank,
      rankDelta,
      high,
      highTimestamp,
      pricingd});

  CurrenciesTicker.fromJson(Map<String, dynamic> json) {
    currency = json['currency'];
    id = json['id'];
    status = json['status'];
    price = json['price'];
    priceDate = json['price_date'];
    priceTimestamp = json['price_timestamp'];
    symbol = json['symbol'];
    circulatingSupply = json['circulating_supply'];
    maxSupply = json['max_supply'];
    name = json['name'];
    logoUrl = json['logo_url'];
    marketCap = json['market_cap'];
    marketCapDominance = json['market_cap_dominance'];
    transparentMarketCap = json['transparent_market_cap'];
    numExchanges = json['num_exchanges'];
    numPairs = json['num_pairs'];
    numPairsUnmapped = json['num_pairs_unmapped'];
    firstCandle = json['first_candle'];
    firstTrade = json['first_trade'];
    firstOrderBook = json['first_order_book'];
    firstPricedAt = json['first_priced_at'];
    rank = json['rank'];
    rankDelta = json['rank_delta'];
    high = json['high'];
    highTimestamp = json['high_timestamp'];
    pricingd = json['high_timestamp'] != null
        ? Pricingd?.fromJson(json['pricingd'])
        : null;
  }

  Map<String, dynamic> toJson() {
    final data = <String, dynamic>{};
    data['currency'] = currency;
    data['id'] = id;
    data['status'] = status;
    data['price'] = price;
    data['price_date'] = priceDate;
    data['price_timestamp'] = priceTimestamp;
    data['symbol'] = symbol;
    data['circulating_supply'] = circulatingSupply;
    data['max_supply'] = maxSupply;
    data['name'] = name;
    data['logo_url'] = logoUrl;
    data['market_cap'] = marketCap;
    data['market_cap_dominance'] = marketCapDominance;
    data['transparent_market_cap'] = transparentMarketCap;
    data['num_exchanges'] = numExchanges;
    data['num_pairs'] = numPairs;
    data['num_pairs_unmapped'] = numPairsUnmapped;
    data['first_candle'] = firstCandle;
    data['first_trade'] = firstTrade;
    data['first_order_book'] = firstOrderBook;
    data['first_priced_at'] = firstPricedAt;
    data['rank'] = rank;
    data['rank_delta'] = rankDelta;
    data['high'] = high;
    data['high_timestamp'] = highTimestamp;
    if (pricingd != null) {
      data['princingd'] = pricingd;
    }
    return data;
  }
}

class CurrencyComparable {
  final CurrencyColumn? column;
  final CurrenciesTicker? currency;

  const CurrencyComparable(this.column, this.currency);

  int? comparTo(CurrencyComparable? otherComparable) {
    final self = currency;
    final other = otherComparable!.currency;

    switch (column) {
      case CurrencyColumn.id:
        return self!.id!.compareTo(other!.id!);
      case CurrencyColumn.rank:
        return self!.rank!.compareTo(other!.rank!);
      case CurrencyColumn.name:
        return self!.name!.compareTo(other!.name!);
      case CurrencyColumn.price:
        return self!.price!.compareTo(other!.price!);
      case CurrencyColumn.oneHChange:
        return self!.firstPricedAt!.compareTo(other!.firstPricedAt!);
      case CurrencyColumn.oneDChange:
        return self!.pricingd!.priceChangePct!
            .compareTo(other!.pricingd!.priceChangePct!);
      case CurrencyColumn.marketCap:
        return self!.marketCap!.compareTo(other!.marketCap!);
    }
  }
}

List<CurrenciesTicker?> currenciesFromJson(String? str) => List<CurrenciesTicker?>.from(
  jsonDecode(str!).map((x) => CurrenciesTicker.fromJson(x))
);

String? currenciesToJson(List<CurrenciesTicker?> data) => json.encode(
  List<dynamic>.from(data.map((e) => e!.toJson()))
);
