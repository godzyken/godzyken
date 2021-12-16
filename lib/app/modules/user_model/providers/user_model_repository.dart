import 'package:godzyken/app/modules/home/domain/adapter/adapter.dart';
import 'package:godzyken/app/modules/home/domain/entity/user_model.dart';
import 'package:godzyken/app/modules/user_model/providers/user_provider.dart';

class UserModelRepository implements IHomeRepository {
  UserModelRepository({required this.provider});

  final IUserModelProvider provider;

  @override
  Future<UserModel?> getUser(String? id) async {
    final user = await provider.getUserModel("id");
    if (user.status.hasError) {
      return Future.error(user.statusText!);
    } else {
      return user.body!;
    }
  }

  @override
  Future<List<UserModel>> getUserModels() async {
    final users = await provider.getUserModels("/summary");
    if (users.status.hasError) {
      return Future.error(users.statusText!);
    } else {
      return UserModel.listFromJson(users);
    }
  }

  @override
  Future<UserModel> getUsers() async {
    final users = await provider.getUserModels("/summary");
    if (users.status.hasError) {
      return Future.error(users.statusText!);
    } else {
      return users.body!;
    }
  }
}
