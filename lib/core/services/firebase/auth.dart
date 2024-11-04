import 'package:firebase_auth/firebase_auth.dart';

abstract class Auth {
  Future<void> signIn(String email, String password);
  Future<void> signUp(String email, String password);
  Future<void> signOut();
}

class AuthImpl extends Auth {
  final FirebaseAuth _auth = FirebaseAuth.instance;

  AuthImpl();

  @override
  Future<void> signIn(
    String email,
    String password,
  ) async {
    await _auth.signInWithEmailAndPassword(
      email: email,
      password: password,
    );
  }

  @override
  Future<void> signUp(
    String email,
    String password,
  ) async {
    await _auth.createUserWithEmailAndPassword(
      email: email,
      password: password,
    );
  }

  @override
  Future<void> signOut() async {
    await _auth.signOut();
  }
}
