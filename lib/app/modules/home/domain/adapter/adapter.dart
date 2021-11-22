import 'package:godzyken/app/modules/home/domain/entity/user_model.dart';

abstract class IHomeRepository {
  Future<UserModel?> getUser(String? id);
  Future<UserModel> getUsers();
  Future<List<UserModel>> getUserModels();
}
