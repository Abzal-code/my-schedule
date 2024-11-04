import 'package:my_shedule/core/usecases/usecase.dart';
import 'package:my_shedule/features/auth/domain/repositories/auth_repository.dart';

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
