import 'package:get_it/get_it.dart';
import 'package:my_shedule/core/services/firebase/auth_services.dart';
import 'package:my_shedule/core/services/firestore/firestore_service.dart';
import 'package:my_shedule/features/auth/data/repositories/auth_repositoryimpl.dart';
import 'package:my_shedule/features/auth/domain/repositories/auth_repository.dart';
import 'package:my_shedule/features/auth/domain/usecases/auth_usecases.dart';
import 'package:my_shedule/features/auth/presentation/bloc/auth_bloc.dart';
import 'package:my_shedule/features/schedule/data/repositories/schedule_repository_impl.dart';
import 'package:my_shedule/features/schedule/domain/repositories/schedule_repository.dart';
import 'package:my_shedule/features/schedule/domain/usecases/schedule_usecases.dart';
import 'package:my_shedule/features/schedule/presentation/bloc/schedule/schedule_bloc.dart';

final GetIt sl = GetIt.instance;

void setupCoreLocator() {
  // Register services
  sl.registerLazySingleton<AuthServices>(() => AuthServicesImpl());
  sl.registerLazySingleton<FirestoreService>(() => FirestoreServiceImpl());

  // Register repositories
  sl.registerLazySingleton<AuthRepository>(() => AuthRepositoryimpl());
  sl.registerLazySingleton<ScheduleRepository>(() => ScheduleRepositoryImpl());

  // Register use cases
  sl.registerFactory(() => SignInUseCase(sl<AuthRepository>()));
  sl.registerFactory(() => SignOutUseCase(sl<AuthRepository>()));
  sl.registerFactory(() => SignUpUsecase(sl<AuthRepository>()));
  sl.registerFactory(() => GetCurrentUserUseCase(sl<AuthRepository>()));
  sl.registerFactory(() => LoadEventsUseCase(sl<ScheduleRepository>()));
  sl.registerFactory(() => CreateEventUseCase(sl<ScheduleRepository>()));
  sl.registerFactory(() => DeleteEventUseCase(sl<ScheduleRepository>()));
  sl.registerFactory(() => UpdateEventUseCase(sl<ScheduleRepository>()));
  sl.registerFactory(() => GetEventsByDateUseCase(sl<ScheduleRepository>()));

  // Register bloc
  sl.registerFactory(
    () => AuthBloc(
      signInUseCase: sl<SignInUseCase>(),
      signOutUseCase: sl<SignOutUseCase>(),
      signUpUseCase: sl<SignUpUsecase>(),
      getCurrentUserUseCase: sl<GetCurrentUserUseCase>(),
    ),
  );

  sl.registerFactory(
    () => ScheduleBloc(
      loadEventsUseCase: sl<LoadEventsUseCase>(),
      createEventUseCase: sl<CreateEventUseCase>(),
      deleteEventUseCase: sl<DeleteEventUseCase>(),
      updateEventUseCase: sl<UpdateEventUseCase>(),
      getEventsByDateUseCase: sl<GetEventsByDateUseCase>(),
    ),
  );
}
