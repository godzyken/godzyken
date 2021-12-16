import 'package:get/get.dart';

class RxPricingd {
  final priceChange = 269.75208019.obs;
  final priceChangePct = 0.03297053.obs;
  final volume = 1110989572.04.obs;
  final volumeChange = -24130098.49.obs;
  final volumeChangePct = -0.02.obs;
  final marketCapChange = 4805518049.63.obs;
  final marketCapChangePct = 0.03.obs;
  final transparentMarketCapChange = 4800518049.00.obs;
  final transparentMarketCapChangePct = 0.0430.obs;
  final volumeTransparency = <VolumeTransparency>[].obs;
}

class RxVolumeTransparency {
  final grade = 'A'.obs;
  final volume = 2144455081.37.obs;
  final volumeChange = -235524941.08.obs;
  final volumeChangePct = -0.10.obs;
}

class Pricingd {
  final rx = RxPricingd();

  get priceChange => rx.priceChange.value;

  set priceChange(value) => rx.priceChange.value = value;

  get priceChangePct => rx.priceChangePct.value;

  set priceChangePct(value) => rx.priceChangePct.value = value;

  get volume => rx.volume.value;

  set volume(value) => rx.volume.value = value;

  get volumeChange => rx.volumeChange.reactive.value;

  set volumeChange(value) => rx.volumeChange.reactive.value = value;

  get volumeChangePct => rx.volumeChangePct.reactive.value;

  set volumeChangePct(value) => rx.volumeChangePct.reactive.value = value;

  get marketCapChange => rx.marketCapChange.value;

  set marketCapChange(value) => rx.marketCapChange.value = value;

  get marketCapChangePct => rx.marketCapChangePct.value;

  set marketCapChangePct(value) => rx.marketCapChangePct.value = value;

  get transparentMarketCapChange => rx.transparentMarketCapChange.value;

  set transparentMarketCapChange(value) =>
      rx.transparentMarketCapChange.value = value;

  get transparentMarketCapChangePct => rx.transparentMarketCapChangePct.value;

  set transparentMarketCapChangePct(value) =>
      rx.transparentMarketCapChangePct.value = value;

  get volumeTransparency => rx.volumeTransparency.value;

  set volumeTransparency(value) => rx.volumeTransparency.value = value;

  Pricingd(
      {priceChange,
      priceChangePct,
      volume,
      volumeChange,
      volumeChangePct,
      marketCapChange,
      marketCapChangePct,
      transparentMarketCapChange,
      transparentMarketCapChangePct,
      volumeTransparency});

  Pricingd.fromJson(Map<String, dynamic> json) {
    priceChange = json['price_change'];
    priceChangePct = json['price_change_pct'];
    volume = json['volume'];
    volumeChange = json['volume_change'];
    volumeChangePct = json['volume_change_pct'];
    marketCapChange = json['market_cap_change'];
    marketCapChangePct = json['market_cap_change_pct'];
    transparentMarketCapChange = json['transparent_market_cap_change'];
    transparentMarketCapChangePct = json['transparent_market_cap_change_pct'];
    if (json['volume_transparency'] != null) {
      volumeTransparency = <VolumeTransparency>[];
      json['volume_transparency'].forEach((v) {
        volumeTransparency?.add(VolumeTransparency.fromJson(v));
      });
    }
  }

  Map<String, dynamic> toJson() {
    final data = <String, dynamic>{};
    data['price_change'] = priceChange;
    data['price_change_pct'] = priceChangePct;
    data['volume'] = volume;
    data['volume_change'] = volumeChange;
    data['volume_change_pct'] = volumeChangePct;
    data['market_cap_change'] = marketCapChange;
    data['market_cap_change_pct'] = marketCapChangePct;
    data['transparent_market_cap_change'] = transparentMarketCapChange;
    data['transparent_market_cap_change_pct'] = transparentMarketCapChangePct;
    if (volumeTransparency != null) {
      data['volume_transparency'] =
          volumeTransparency?.map((v) => v.toJson()).toList();
    }
    return data;
  }
}

class VolumeTransparency {
  final rx = RxVolumeTransparency();

  get grade => rx.grade.value;
  set grade(value) => rx.grade.value = value;
  get volume => rx.volume.value;
  set volume(value) => rx.volume.value = value;
  get volumeChange => rx.volumeChange.reactive.value;
  set volumeChange(value) => rx.volumeChange.reactive.value = value;
  get volumeChangePct => rx.volumeChangePct.reactive.value;
  set volumeChangePct(value) => rx.volumeChangePct.reactive.value = value;

  VolumeTransparency(
      {grade, volume, volumeChange, volumeChangePct});

  VolumeTransparency.fromJson(Map<String, dynamic> json) {
    grade = json['grade'];
    volume = json['volume'];
    volumeChange = json['volume_change'];
    volumeChangePct = json['volume_change_pct'];
  }

  Map<String, dynamic> toJson() {
    final data = <String, dynamic>{};
    data['grade'] = grade;
    data['volume'] = volume;
    data['volume_change'] = volumeChange;
    data['volume_change_pct'] = volumeChangePct;
    return data;
  }
}
