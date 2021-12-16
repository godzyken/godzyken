import 'package:get/get.dart';
import 'package:getxfire/getxfire.dart';

import 'package:godzyken/app/modules/home/domain/entity/user_model.dart';
import 'package:godzyken/app/modules/user_model/providers/user_provider.dart';

class ProfileController extends GetxController {
  final users = <UserModel>[].obs;
  final auth = GetxFire.auth;

  final userProvider = UserModelProvider();
  final _userModel = UserModel().obs;

  set userModel(UserModel? value) => _userModel.value = value!;

  UserModel? get userModel => _userModel.value;
  User? get user => auth.currentUser;

  void loadProfilesFromSomeWhere() {
    var sectime = DateTime.now().millisecondsSinceEpoch.toString();
    users.add(
      UserModel(
        id: userModel!.id ?? sectime,
        name: userModel!.name,
        company: userModel!.company,
        email: userModel!.email,
        login: userModel!.login,
        createdAt: userModel!.createdAt ?? 'User Create at : $sectime',
      ),
    );
  }

  final count = 0.obs;
  @override
  void onInit() {
    super.onInit();
    Get.log('Profile controller initialized');
  }

  @override
  void onReady() {
    super.onReady();
    loadProfilesFromSomeWhere();
  }

  @override
  void onClose() {}
  void increment() => count.value++;
}
