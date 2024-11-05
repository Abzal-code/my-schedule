part of 'auth_usecases.dart';

class GetCurrentUserUseCase implements UseCase<User?, NoParams> {
  final AuthRepository _authRepository;

  GetCurrentUserUseCase(this._authRepository);

  @override
  Future<User?> call(NoParams params) {
    return _authRepository.getCurrentUser();
  }
}
