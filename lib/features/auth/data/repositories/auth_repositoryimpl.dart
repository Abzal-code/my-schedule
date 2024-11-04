import 'package:my_shedule/core/services/firebase/auth_services.dart';
import 'package:my_shedule/features/auth/domain/repositories/auth_repository.dart';

class AuthRepositoryimpl implements AuthRepository {
  final AuthServices _services = AuthServicesImpl();

  @override
  Future<void> signIn(String email, String password) async {
    await _services.signIn(email, password);
  }

  @override
  Future<void> signOut() async {
    await _services.signOut();
  }

  @override
  Future<void> signUp(String email, String password) async {
    await _services.signUp(email, password);
  }
}
