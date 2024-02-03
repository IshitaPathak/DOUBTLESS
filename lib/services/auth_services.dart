import 'package:firebase_auth/firebase_auth.dart';
import 'package:study_sync/helper/helpers_function.dart';
import 'package:study_sync/services/database_service.dart';

class AuthServices {
  // creating instance of firebase auth
  final FirebaseAuth firebaseAuth = FirebaseAuth.instance;

  //login
  Future loginWithUserNameandPassword(String email, String password) async {
    try {
      // var password;
      User user = (await firebaseAuth.signInWithEmailAndPassword(
              email: email, password: password))
          .user!;

      if (user != null) {
        // call database service to update the user data user data
        // in login you dont need to save value to databse bcz values are already saved
        // await DatabaseService(uid: user.uid).u dateUserData(fullName, email);
        return true;
      }
    } on FirebaseAuthException catch (e) {
      // print(e);
      return e.message;
    }
  }

  //register
  Future registerUserWithEmailandPassword(
      String fullName, String email, String password) async {
    try {
      // var password;
      User user = (await firebaseAuth.createUserWithEmailAndPassword(
              email: email, password: password))
          .user!;

      if (user != null) {
        //call database service to update the user data user data
        await DatabaseService(uid: user.uid).savingUserData(fullName, email);
        return true;
      }
    } on FirebaseAuthException catch (e) {
      // print(e);
      return e.message;
    }
  }

  //siginoout
  Future signOut() async {
    try {
      await HelperFunction.saveUserEmailSF("");
      await HelperFunction.saveUserNameSF("");
      await HelperFunction.saveUserLoggedInStatus(false);
      await firebaseAuth.signOut();
    } catch (e) {
      return null;
    }
  }
}
