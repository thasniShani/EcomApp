import 'package:firebase_auth/firebase_auth.dart';

class LoginRepo {
  Future<bool> signIn(String email, String password) async {
    final _auth = FirebaseAuth.instance;
    try {
      await _auth.signInWithEmailAndPassword(
        email: email,
        password: password,
      );
      return true;
      
    } catch (e) {
      print(e);
      return false;
    }
  }
}
