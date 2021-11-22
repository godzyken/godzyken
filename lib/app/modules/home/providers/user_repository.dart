import 'package:godzyken/app/modules/home/domain/adapter/adapter.dart';
import 'package:godzyken/app/modules/home/domain/entity/user_model.dart';
import 'package:godzyken/app/modules/home/providers/user_provider.dart';

class HomeRepository implements IHomeRepository {
  HomeRepository({required this.provider});
  final IUserProvider provider;

  @override
  Future<UserModel?> getUser(String? id) async {
    final user = await provider.getUser("id");
    if (user.status.hasError) {
      return Future.error(user.statusText!);
    } else {
      return user.body!;
    }
  }

  @override
  Future<UserModel> getUsers() async {
    final users = await provider.getUsers("/summary");
    if (users.status.hasError) {
      return Future.error(users.statusText!);
    } else {
      return users.body!;
    }
  }

  @override
  Future<List<UserModel>> getUserModels() async {
    final users = await provider.getUsers("/summary");
    if (users.status.hasError) {
      return Future.error(users.statusText!);
    } else {
      return UserModel.listFromJson(users);
    }
  }
}
