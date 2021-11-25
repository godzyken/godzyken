import 'package:get/get.dart';
import 'package:godzyken/app/modules/home/domain/entity/user_model.dart';

class UserModelProvider extends GetConnect implements IUserModelProvider {
  @override
  void onInit() {
    httpClient.defaultDecoder = (map) {
      if (map is Map<String, dynamic>) return UserModel.fromJson(map);
      if (map is List) return map.map((item) => UserModel.fromJson(item)).toList();
    };
    httpClient.addRequestModifier<void>((request) {
      request.headers['Authorization'] = 'Bearer sdfsdfgsdfsdsdf12345678';
      return request;
    });
    httpClient.baseUrl = 'https://firebase-dot-devsite-v2-prod.appspot.com';
  }

  @override
  Future<Response<UserModel?>> getUserModel(String? id) async {
    final response = await get('user/$id');
    return response.body;
  }

  Future<Response<UserModel?>> postUserModel(UserModel? user) async => await post('user', user);
  Future<Response> deleteUserModel(String? id) async => await delete('user/$id');


  @override
  Future<Response<UserModel>> getUserModels(String path) => get(path);
}

// ignore: one_member_abstracts
abstract class IUserModelProvider {
  Future<Response<UserModel?>> getUserModel(String? path);
  Future<Response<UserModel>> getUserModels(String path);
}
