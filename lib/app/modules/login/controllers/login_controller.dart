import 'package:get/get.dart';
import 'package:getxfire/getxfire.dart';
import 'package:godzyken/app/modules/user_model/controllers/user_model_controller.dart';

class LoginController extends GetxController {
  //TODO: Implement LoginController
  final auth = GetxFire.auth;
  final _user = Rxn<User?>();

  User? get user => _user.value;

  var isSignIn = false.obs;

  final count = 0.obs;
  @override
  void onInit() {
    super.onInit();

    _user.bindStream(auth.authStateChanges());

    auth.authStateChanges().listen((event) {
      isSignIn.value = event != null;
    },
      onError: (err) => dialogError(err),
      cancelOnError: true,
      onDone: () => print('ké passo'),
    );
  }

  dialogError(String? msg) {
    Get.defaultDialog(
      title: 'Hi mé ké passo!',
      middleText: msg!,
    );
  }

  Future<bool?> connectToFirebase() async {
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
        data: Get.find<UserModelController>().user!.toJson(),
        onError: (message) => dialogError(message),
        isErrorDialog: true,
      );

      update();
    } else {
      isSignIn.value = false;
    }
  }
}
