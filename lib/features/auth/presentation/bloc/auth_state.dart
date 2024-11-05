part of 'auth_bloc.dart';

@freezed
class AuthState with _$AuthState {
  const factory AuthState.initial() = _AuthInitial;

  const factory AuthState.loading() = _AuthLoading;

  const factory AuthState.authenticated() = _Authenticated;

  const factory AuthState.unauthenticated() = _Unauthenticated;

  const factory AuthState.error() = _AuthError;
}
