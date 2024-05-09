import 'package:firebase_auth/firebase_auth.dart';
import 'package:get/get.dart';
import 'package:login_firebase_complete/src/features/authentication/screens/welcome_screen/welcome_screen.dart';
import 'package:login_firebase_complete/src/features/core/screens/dashboard/dashboard.dart';
import 'package:login_firebase_complete/src/repository/authentication_repository/exceptions/signup_failure.dart';

class AuthenticationRepository extends GetxController {
  static AuthenticationRepository get instance => Get.find();

  // Variables
  final _auth = FirebaseAuth.instance;
  late final Rx<User?> firebaseUser;

  @override
  void onReady() {
    firebaseUser = Rx<User?>(_auth.currentUser);
    firebaseUser.bindStream(_auth.userChanges()); // to keep the firebase user listening... -- bindStream
    ever(firebaseUser, (callback) => _setInitialScreen);
  }

  _setInitialScreen(User? user) {
    user != null ? Get.offAll(const WelcomeScreen()) : Get.offAll(const Dashboard());
  }

  Future<void> createUserEmailPass(String email, String password) async {
    try {
      await _auth.createUserWithEmailAndPassword(
          email: email, password: password);
      firebaseUser.value != null ? Get.offAll(const Dashboard()) : Get.offAll(const WelcomeScreen());
    } on FirebaseAuthException catch (e) {
      final ex = SignUpWithEmailAndPasswordFailure.code(e.code);
      print('Firebase Auth Exception - ${ex.message}');
    } catch (_) {
      var ex = SignUpWithEmailAndPasswordFailure();
      print("Exception - ${ex.message}");
      throw ex;
    }
  }

  Future<void> loginWithEmailPass(String email, String password) async {
    try {
      await _auth.signInWithEmailAndPassword(email: email, password: password);
    } on FirebaseAuthException catch (e) {
    } catch (_) {}
  }

  Future<void> logOut() async {
    await _auth.signOut();
  }
}