import 'package:godzyken/app/modules/home/domain/entity/user_model.dart';

class DemoProduct {
  String? name;
  String? id;
  UserModel? user;

  DemoProduct({
    this.name,
    this.id,
    this.user,
  });

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