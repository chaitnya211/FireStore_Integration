import 'package:get/get.dart';

class SignUpWithEmailAndPasswordFailure extends GetxController{
  final String message;

  SignUpWithEmailAndPasswordFailure([this.message = "An Unknown error occured!"]);

  factory SignUpWithEmailAndPasswordFailure.code(String code) {
    switch(code){
      case 'weak-password' :
        return SignUpWithEmailAndPasswordFailure('Please enter a stronger password');
      case 'invalid-email' :
        return SignUpWithEmailAndPasswordFailure('Please enter a valid email');
      case 'email-alread-in-use' :
        return SignUpWithEmailAndPasswordFailure('An account already exists on this email');
      case 'operation not allowed' :
        return SignUpWithEmailAndPasswordFailure('Operation is now allowed.');
      default:
        return SignUpWithEmailAndPasswordFailure();
    }
  }

}