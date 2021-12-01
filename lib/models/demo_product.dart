import 'dart:convert';

import 'package:get/get.dart';
import 'package:godzyken/app/modules/home/domain/entity/user_model.dart';

class RxDemoProduct {
  final name = 'Jhonny'.obs;
  final id = '0'.obs;
  final user = UserModel().obs;
}

class DemoProduct {
   DemoProduct({
    name,
    id,
    user,
  });

   final rx = RxUserModel();

   get name => rx.name.value;
   set name(value) => rx.name.value = value;
   get id => rx.id.value;
   set id(value) => rx.id.value = value;

   get user => rx.login.value;
   set user(value) => rx.login.value = value;

  DemoProduct.fromJson(Map<String, dynamic> json) {
    name = json['name'];
    id = json['id'];
    user = json['user'];
  }

  Map<String, dynamic> toJson() {
    final data = <String, dynamic>{};
    data['name'] = name;
    data['id'] = id;
    data['user'] = user;
    return data;
  }
}

List<DemoProduct?> demoProductFromJson(String? str) =>
    List<DemoProduct?>.from(jsonDecode(str!).map((x) => DemoProduct.fromJson(x)));

String? demoProductToJson(List<DemoProduct?> data) =>
    json.encode(List<dynamic>.from(data.map((e) => e!.toJson())));