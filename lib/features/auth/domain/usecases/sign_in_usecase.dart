import 'package:my_shedule/core/usecases/usecase.dart';
import 'package:my_shedule/features/auth/domain/repositories/auth_repository.dart';
import 'package:my_shedule/features/auth/domain/usecases/auth_params.dart';

class SignInUseCase implements UseCase<void, AuthParams> {
  final AuthRepository _authRepository;

  SignInUseCase(this._authRepository);

  @override
  Future<void> call(AuthParams params) async {
    // Бизнес-логика и валидация
    if (params.email.isEmpty || params.password.isEmpty) {
      throw ArgumentError('Email and password cannot be empty');
    }
    await _authRepository.signIn(
      params.email,
      params.password,
    );
  }
}
