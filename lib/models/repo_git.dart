import 'dart:convert';

import 'package:get/get.dart';

class RxRepo {
  final htmlUrl = 'https://github.com/godzyken/godzyken'.obs;
  final watchersCount = 0.obs;
  final language = 'Dart'.obs;
  final description = 'flutter project'.obs;
  final name = 'godzyken'.obs;
  final owner = 'login'.obs;
}

class Repo {
  Repo({
    htmlUrl,
    watchersCount,
    language,
    description,
    name,
    owner,
  });

  final rx = RxRepo();

  get name => rx.name.value;
  set name(value) => rx.name.value = value;

  get watchersCount => rx.watchersCount.value;
  set watchersCount(value) => rx.watchersCount.value = value;

  get language => rx.language.value;
  set language(value) => rx.language.value = value;

  get description => rx.description.value;
  set description(value) => rx.description.value = value;

  get htmlUrl => rx.htmlUrl.value;
  set htmlUrl(value) => rx.htmlUrl.value = value;

  get owner => rx.owner.value;
  set owner(value) => rx.owner.value = value;

  Repo.fromJson(Map<String, dynamic> json) {
    name = json['name'];
    watchersCount = json['watchersCount'];
    language = json['language'];
    description = json['description'];
    htmlUrl = json['htmlUrl'];
    owner = json['owner'];
  }

  Map<String, dynamic> toJson() {
    final data = <String, dynamic>{};
    data['name'] = name;
    data['watchersCount'] = watchersCount;
    data['language'] = language;
    data['description'] = description;
    data['htmlUrl'] = htmlUrl;
    data['owner'] = owner;
    return data;
  }

  static List<Repo> mapJSONStringToList(List<dynamic> jsonList) {
    return jsonList
        .map((r) => Repo()).toList();
  }
}

List<Repo?> repositoriesFromJson(String? str) =>
    List<Repo?>.from(jsonDecode(str!).map((x) => Repo.fromJson(x)));

String? repositoriesToJson(List<Repo?> data) =>
    json.encode(List<dynamic>.from(data.map((e) => e!.toJson())));