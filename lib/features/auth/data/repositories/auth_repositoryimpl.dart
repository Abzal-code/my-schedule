import 'package:firebase_auth/firebase_auth.dart';
import 'package:my_shedule/core/di.dart';
import 'package:my_shedule/core/services/firebase/auth_services.dart';
import 'package:my_shedule/features/auth/domain/repositories/auth_repository.dart';

class AuthRepositoryimpl implements AuthRepository {
  final AuthServices _services = locator<AuthServices>();

  @override
  Future<void> signIn(
    String email,
    String password,
  ) async {
    await _services.signIn(email, password);
  }

  @override
  Future<void> signOut() async {
    await _services.signOut();
  }

  @override
  Future<void> signUp(
    String email,
    String password,
  ) async {
    await _services.signUp(email, password);
  }

  @override
  Future<User?> getCurrentUser() async {
    return await _services.getCurrentUser();
  }
}
