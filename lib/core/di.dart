import 'package:get_it/get_it.dart';
import 'package:my_shedule/core/services/firebase/auth_services.dart';
import 'package:my_shedule/features/auth/data/repositories/auth_repositoryimpl.dart';
import 'package:my_shedule/features/auth/domain/repositories/auth_repository.dart';
import 'package:my_shedule/features/auth/domain/usecases/auth_usecases.dart';
import 'package:my_shedule/features/auth/presentation/bloc/auth_bloc.dart';

final GetIt sl = GetIt.instance;

void setupCoreLocator() {
  // Регистрация сервисов
  sl.registerLazySingleton<AuthServices>(() => AuthServicesImpl());
  // Регистрация репозиториев
  sl.registerLazySingleton<AuthRepository>(() => AuthRepositoryimpl());

  // Регистрация use cases
  sl.registerFactory(() => SignInUseCase(sl<AuthRepository>()));
  sl.registerFactory(() => SignOutUseCase(sl<AuthRepository>()));
  sl.registerFactory(() => SignUpUsecase(sl<AuthRepository>()));
  sl
      .registerFactory(() => GetCurrentUserUseCase(sl<AuthRepository>()));

  // Регистрация других сервисов и зависимостей можно добавить здесь
  sl.registerFactory(() => AuthBloc(
        signInUseCase: sl<SignInUseCase>(),
        signOutUseCase: sl<SignOutUseCase>(),
        signUpUseCase: sl<SignUpUsecase>(),
        getCurrentUserUseCase: sl<GetCurrentUserUseCase>(),
      ));
}
