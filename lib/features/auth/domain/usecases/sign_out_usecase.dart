part of 'auth_usecases.dart';

// Реализация SignOutUseCase
class SignOutUseCase extends UseCase<Unit, NoParams> {
  final AuthRepository _authRepository;

  SignOutUseCase(this._authRepository);

  @override
  Future<Unit> call(NoParams params) async {
    await _authRepository.signOut();
    return const Unit();
  }
}
