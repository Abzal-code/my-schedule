import 'package:get_it/get_it.dart';
import 'package:my_shedule/core/services/firebase/auth_services.dart';
import 'package:my_shedule/features/auth/data/repositories/auth_repositoryimpl.dart';
import 'package:my_shedule/features/auth/domain/repositories/auth_repository.dart';
import 'package:my_shedule/features/auth/domain/usecases/auth_usecases.dart';
import 'package:my_shedule/features/auth/presentation/bloc/auth_bloc.dart';

final GetIt locator = GetIt.instance;

void setupCoreLocator() {
  // Регистрация сервисов
  locator.registerLazySingleton<AuthServices>(() => AuthServicesImpl());
  // Регистрация репозиториев
  locator.registerLazySingleton<AuthRepository>(() => AuthRepositoryimpl());

  // Регистрация use cases
  locator.registerFactory(() => SignInUseCase(locator<AuthRepository>()));
  locator.registerFactory(() => SignOutUseCase(locator<AuthRepository>()));
  locator.registerFactory(() => SignUpUsecase(locator<AuthRepository>()));
  locator
      .registerFactory(() => GetCurrentUserUseCase(locator<AuthRepository>()));

  // Регистрация других сервисов и зависимостей можно добавить здесь
  locator.registerFactory(() => AuthBloc(
        signInUseCase: locator<SignInUseCase>(),
        signOutUseCase: locator<SignOutUseCase>(),
        signUpUseCase: locator<SignUpUsecase>(),
        getCurrentUserUseCase: locator<GetCurrentUserUseCase>(),
      ));
}
