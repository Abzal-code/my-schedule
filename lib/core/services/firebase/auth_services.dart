import 'package:firebase_auth/firebase_auth.dart';

abstract class AuthServices {
  Future<void> signIn(String email, String password);
  Future<void> signUp(String email, String password);
  Future<void> signOut();
  Future<User?> getCurrentUser();
}

class AuthServicesImpl extends AuthServices {
  final FirebaseAuth _auth = FirebaseAuth.instance;

  AuthServicesImpl();

  @override
  Future<void> signIn(String email, String password) async {
    await _auth.signInWithEmailAndPassword(
      email: email,
      password: password,
    );
  }

  @override
  Future<void> signUp(String email, String password) async {
    print('AuthServicesImpl: ${email} ${password}');
    try {
      await _auth.createUserWithEmailAndPassword(
        email: email,
        password: password,
      );
    } on FirebaseAuthException catch (e) {
      print('FirebaseAuthException code: ${e.code}');
      print('FirebaseAuthException message: ${e.message}');
      print('FirebaseAuthException details: ${e}');
    } catch (e) {
      print('General error: ${e.toString()}');
    }
  }

  @override
  Future<void> signOut() async {
    await _auth.signOut();
  }

  @override
  Future<User?> getCurrentUser() async {
    print('AuthServicesImpl: ${_auth.currentUser}');
    return _auth.currentUser;
  }
}
