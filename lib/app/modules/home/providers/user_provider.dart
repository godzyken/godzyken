import 'package:get/get.dart';

import '../domain/entity/user_model.dart';

class UserProvider extends GetConnect implements IUserProvider {
  @override
  void onInit() {
    httpClient.defaultDecoder = (map) {
      if (map is Map<String, dynamic>) return UserModel.fromJson(map);
      if (map is List) {
        return map.map((item) => UserModel.fromJson(item)).toList();
      }
    };
    httpClient.baseUrl =
        'https://api.meta-api.io/api/spells/61968b5c04a1ad428af6973f/runSync?dev=true';
  }

  Future<Response<UserModel>> postUser(UserModel user) async =>
      await post('user', user);
  Future<Response> deleteUser(int id) async => await delete('user/$id');

  @override
  Future<Response<UserModel?>> getUser(String? id) async {
    final response = await get('user/$id');
    return response.body;
  }

  @override
  Future<Response<UserModel>> getUsers(String path) => get(path);
}

// ignore: one_member_abstracts
abstract class IUserProvider {
  Future<Response<UserModel?>> getUser(String? path);
  Future<Response<UserModel>> getUsers(String path);
}
