import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:my_shedule/core/base_bloc/base_bloc.dart';
import 'package:my_shedule/core/usecases/usecase.dart';
import 'package:my_shedule/features/auth/domain/usecases/auth_usecases.dart';

part 'auth_bloc.freezed.dart';
part 'auth_event.dart';
part 'auth_state.dart';

class AuthBloc extends BaseBloc<AuthEvent, AuthState> {
  final SignInUseCase _signInUseCase;
  final SignUpUsecase _signUpUseCase;
  final SignOutUseCase _signOutUseCase;
  final GetCurrentUserUseCase _getCurrentUserUseCase;

  AuthBloc({
    required SignInUseCase signInUseCase,
    required SignUpUsecase signUpUseCase,
    required SignOutUseCase signOutUseCase,
    required GetCurrentUserUseCase getCurrentUserUseCase,
  })  : _signInUseCase = signInUseCase,
        _signUpUseCase = signUpUseCase,
        _signOutUseCase = signOutUseCase,
        _getCurrentUserUseCase = getCurrentUserUseCase,
        super(const AuthState.initial());

  @override
  Future<void> onEventHandler(AuthEvent event, Emitter<AuthState> emit) async {
    await event.map(
      signIn: (e) async => await _signIn(e, emit),
      signUp: (e) async => await _signUp(e, emit),
      signOut: (e) async => await _signOut(emit),
      checkAuthentication: (e) async => await _checkAuthentication(emit),
    );
  }

  Future<void> _signIn(_SignInEvent event, Emitter<AuthState> emit) async {
    emit(const AuthState.loading());
    try {
      await _signInUseCase
          .call(AuthParams(email: event.email, password: event.password));
      emit(const AuthState.authenticated());
    } catch (e) {
      emit(const AuthState.error());
      addUIAction(ShowErrorAction('Ошибка при входе: ${e.toString()}'));
    }
  }

  Future<void> _signUp(_SignUpEvent event, Emitter<AuthState> emit) async {
    emit(const AuthState.loading());
    try {
      await _signUpUseCase
          .call(AuthParams(email: event.email, password: event.password));
      emit(const AuthState.authenticated());
    } catch (e) {
      emit(const AuthState.error());
      addUIAction(ShowErrorAction('Ошибка при регистрации: ${e.toString()}'));
    }
  }

  Future<void> _signOut(Emitter<AuthState> emit) async {
    emit(const AuthState.loading());
    try {
      await _signOutUseCase.call(const NoParams());
      emit(const AuthState.unauthenticated());
    } catch (e) {
      emit(const AuthState.error());
      addUIAction(ShowErrorAction('Ошибка при выходе: ${e.toString()}'));
    }
  }

  Future<void> _checkAuthentication(Emitter<AuthState> emit) async {
    await Future.delayed(const Duration(seconds: 2));
    try {
      final user = await _getCurrentUserUseCase.call(const NoParams());
      user != null
          ? emit(const AuthState.authenticated())
          : emit(const AuthState.unauthenticated());
    } catch (e) {
      emit(const AuthState.error());
      addUIAction(
          ShowErrorAction('Ошибка при проверке авторизации: ${e.toString()}'));
    }
  }
}
