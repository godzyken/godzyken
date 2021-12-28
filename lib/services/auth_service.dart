import 'package:get/get.dart';
import 'package:getxfire/getxfire.dart';
import 'package:godzyken/app/modules/home/domain/entity/user_model.dart';

class AuthService extends GetxService {
  static AuthService get to => Get.find();

  final FirestoreService _firestore = GetxFire.firestore;

  final isLoggedIn = false.obs;

  bool get isLoggedInValue => isLoggedIn.value;

  void login() {
    isLoggedIn.value = true;
  }

  void logout() {
    isLoggedIn.value = false;
  }

  Future<bool> createNewUser(UserModel? userModel) async {
    if (await _firestore.createData(
        collection: 'users',
        id: userModel!.id.toString(),
        data: UserModel().toJson(),
        onError: (message) => dialogError(message),
        isErrorDialog: true)) {
      isLoggedIn.value = true;
      return true;
    }
    return false;
  }

  Future<bool> updateUser(UserModel? userModel) async {
    if (await _firestore.updateData(
      collection: 'users',
      id: userModel!.id.toString(),
      data: UserModel().toJson(),
      onError: (message) => dialogError(message),
      isErrorDialog: true,
    )) {
      return true;
    }
    return false;
  }

  Future<UserModel?> getUser(String? uid) async {
    try {
      DocumentSnapshot? _doc = await _firestore.getDetail(
          collection: 'users',
          id: uid!,
          onError: (message) => dialogError(message),
          isErrorDialog: true);

      return UserModel.fromJson(_doc.get(uid));
    } on FirebaseException catch (code, msg) {
      GetxFire.openDialog.messageError('Error on get user: $msg',
          title: 'Get user failed with code: $code',
          duration: const Duration(seconds: 8));

      rethrow;
    }
  }

  dialogError(String? msg) {
    Get.defaultDialog(
      title: 'Hi mé ké passo!',
      middleText: msg!,
    );
  }
}
