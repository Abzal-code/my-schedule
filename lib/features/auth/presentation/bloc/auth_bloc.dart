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

  AuthBloc({
    required SignInUseCase signInUseCase,
    required SignUpUsecase signUpUseCase,
    required SignOutUseCase signOutUseCase,
  })  : _signInUseCase = signInUseCase,
        _signUpUseCase = signUpUseCase,
        _signOutUseCase = signOutUseCase,
        super(const AuthState.initial());

  @override
  Future<void> onEventHandler(AuthEvent event, Emitter<AuthState> emit) async {
    await event.map(
      signIn: (e) async => await _signIn(e, emit),
      signUp: (e) async => await _signUp(e, emit),
      signOut: (e) async => await _signOut(emit),
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
    print('event: ${event.email} ${event.password}');
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
}
