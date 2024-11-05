part of 'auth_usecases.dart';

class SignUpUsecase extends UseCase<void, AuthParams> {
  final AuthRepository _authRepository;

  SignUpUsecase(this._authRepository);
  @override
  Future<void> call(AuthParams params) async {
    print('SignUpUsecase: ${params.email} ${params.password}');
    // Бизнес-логика и валидация
    if (params.email.isEmpty || params.password.isEmpty) {
      throw ArgumentError('Email and password cannot be empty');
    }
    await _authRepository.signUp(
      params.email,
      params.password,
    );
  }
}
