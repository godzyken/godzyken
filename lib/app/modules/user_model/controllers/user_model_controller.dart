import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';
import 'package:getxfire/getxfire.dart';
import 'package:godzyken/app/modules/home/domain/adapter/adapter.dart';
import 'package:godzyken/app/modules/home/domain/entity/user_model.dart';
import 'package:godzyken/app/modules/user_model/providers/user_provider.dart';


class UserModelController extends SuperController<List<UserModel>> {
  UserModelController({required this.repository, iUserModelRepository});

  final auth = GetxFire.auth;

  final userProvider = UserModelProvider();
  final _userModel = UserModel().obs;
  final IHomeRepository repository;
  final navigatorKey = GlobalKey<NavigatorState>();
  NavigatorState get router => navigatorKey.currentState!;

  set user(UserModel? value) => _userModel.value = value!;

  UserModel? get user => _userModel.value;


  @override
  void onInit() {
    super.onInit();

    append(() => repository.getUserModels);
    Get.log('UserModel Create : ${user!.id}');
  }

  @override
  void onReady() async {
    // findAllUsers();
    super.onReady();

  }

  @override
  void onClose() {
    super.onClose();
    Get.log('UserModel close with id: ${user!.id}');
  }

  @override
  void onDetached() {
    // TODO: implement onDetached
  }

  @override
  void onInactive() {
    // TODO: implement onInactive
  }

  @override
  void onPaused() {
    // TODO: implement onPaused
  }

  @override
  void onResumed() {
    // TODO: implement onResumed
  }

  void clear() {
    _userModel.value = UserModel();
  }

  UserModel getUserById(String id) {
    final index = Set.identity();
    if (index == state!.first.id) {
      return UserModel(id: index);
    }

    return UserModel(login: state!.first.login);
  }

  updateUserEmail(String? newValue) {
    _userModel.update((userModel) {
      userModel!.email = newValue;
    });

    update();

    print('New email: ${_userModel.value.email}');
  }

  updateUserName(String? newValue) {
    _userModel.update((userModel) {
      userModel!.name = newValue;
    });

    update();

    print('New user name: ${_userModel.value.name}');
  }

  updateUserIsLogin(String? newValue) {
    _userModel.update((userModel) {
      userModel!.login = newValue;
    });

    update();

    print('New login: ${_userModel.value.login}');
  }

  updateUserAvatar(String? newValue) {
    _userModel.update((userModel) {
      userModel!.avatarUrl = newValue;
    });

    _userModel.refresh();

    update();

    print('New avatar: ${_userModel.value.avatarUrl}');
  }

  updateUserGravatarId(String? newValue) {
    _userModel.update((userModel) {
      userModel!.gravatarId = newValue;
    });

    _userModel.refresh();

    update();

    print('New gravatar id: ${_userModel.value.gravatarId}');
  }

  updateUserCompany(String? newValue) {
    _userModel.update((userModel) {
      userModel!.company = newValue;
    });

    _userModel.refresh();

    update();

    print('New company : ${_userModel.value.company}');
  }

  updateUserCreate(String? newValue) {
    _userModel.update((userModel) {
      userModel!.createdAt = newValue;
    });

    _userModel.refresh();

    update();

    print('New user create: ${_userModel.value.createdAt}');
  }

  updateUserGistsUrl(int? newValue) {
    _userModel.update((userModel) {
      userModel!.gistsUrl = newValue;
    });

    _userModel.refresh();

    update();

    print('New gists url : ${_userModel.value.gistsUrl}');
  }

  updateUserBio(String? newValue) {
    _userModel.update((userModel) {
      userModel!.bio = newValue;
    });

    _userModel.refresh();

    update();

    print('New user bio : ${_userModel.value.bio}');
  }
}
