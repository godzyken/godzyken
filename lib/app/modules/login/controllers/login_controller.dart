import 'package:get/get.dart';
import 'package:getxfire/getxfire.dart';
import 'package:godzyken/app/modules/home/domain/entity/user_model.dart';
import 'package:godzyken/app/modules/user_model/controllers/user_model_controller.dart';
import 'package:godzyken/services/auth_service.dart';

class LoginController extends GetxController {
  final _user = Rxn<User?>();

  User? get user => _user.value;

  var emailC = ''.obs;
  var passwordC = ''.obs;

  var isSignIn = false.obs;

  final count = 0.obs;

  @override
  void onInit() {
    super.onInit();

    // _user.bindStream(auth.authStateChanges());


  }

  dialogError(String? msg) {
    Get.defaultDialog(
      title: 'Hi mé ké passo!',
      middleText: msg!,
    );
  }

  Future<bool?> connectToFirebase() async {
    var auth = GetxFire.auth;
    try {
      var authInfo = await auth.app.options;
      if (authInfo != null) {
        return true;
      } else {
        return false;
      }
    } on FirebaseAuthException catch (code, e) {
      GetxFire.openDialog.messageError('Error Auth connection : $code',
          title: 'Error message2: $e', duration: const Duration(seconds: 20));
    }
  }

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {}

  void increment() => count.value++;

  onErrorCatch(code, message) {
    if (code == 'email-already-in-use') {
      GetxFire.openDialog.messageError(
        "Error creating Account 1: $code}",
        title: 'Register Error 1: $message',
        duration: const Duration(seconds: 30),
      );
      Get.toNamed('/sign-in');
    } else {
      GetxFire.openDialog.messageError(
        "Error creating Account 2: $code}",
        title: 'Register Error 2: $message',
        duration: const Duration(seconds: 30),
      );
    }
    if (code == 'invalid-email') {
      GetxFire.openDialog.messageError(
        "Error creating Account 3: $code}",
        title: 'Register Error 3',
        duration: const Duration(seconds: 30),
      );
      GetxFire.currentUser?.delete();
    } else {
      GetxFire.openDialog.messageError(
        "Error creating Account 4: $message}",
        title: 'Register Error 4: $code',
        duration: const Duration(seconds: 30),
      );
    }
  }

  onSuccess(userCredential) async {
    if (userCredential!.user != null) {
      isSignIn.value = true;
      GetxFire.openDialog.messageSuccess(
        "creating Account Successfully: $userCredential}",
        title: 'Register ok :',
        duration: const Duration(seconds: 30),
      );
      ;

      await GetxFire.firestore.updateData(
        collection: 'users',
        id: user!.uid,
        data: UserModel().toJson(),
        onError: (message) => dialogError(message),
        isErrorDialog: true,
      );

      update();
    } else {
      isSignIn.value = false;
    }
  }

  onYesClicked() async {
    final User? user = GetxFire.currentUser;
    if (user == null) {
      Get.snackbar('Sign out failed', 'No one has signed in.',
          duration: const Duration(seconds: 8));
      return;
    }

    await GetxFire.signOut();

    final String? uid = user.uid;
    try {
      Get.snackbar(
          'Sign out success', 'user with id $uid has successfully signed out',
          duration: const Duration(seconds: 8));
    } catch (e, s) {
      GetxFire.openDialog.messageError('Error sign out: $s ',
          title: 'Code: $e', duration: const Duration(seconds: 8));
      print(s);
    }
  }

  loginEmailPassword() async {
    await GetxFire
        .signInWithEmailAndPassword(
            email: emailC.value, password: passwordC.value)
        .then(
          (value) => onSuccess(value),
          onError: (code, message) => onErrorCatch(code, message),
        );
  }

  createUser() async {
    await GetxFire
        .createUserWithEmailAndPassword(
            email: emailC.value, password: passwordC.value)
        .then(
      (value) async {
        UserModel? _user = UserModel(
            id: value?.user!.uid,
            name: value?.user!.displayName,
            email: value?.user!.email,
            createdAt: DateTime.now().millisecondsSinceEpoch.toString(),
            avatarUrl: value?.user!.photoURL);
        if (await AuthService().createNewUser(_user)) {
          Get.find<UserModelController>().user = _user;
          Get.back();
        }
      },
      onError: (code, msg) => onErrorCatch(code, msg),
    );
  }
}
