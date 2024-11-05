part of 'auth_bloc.dart';

@freezed
class AuthEvent with _$AuthEvent {
  const factory AuthEvent.signIn(String email, String password) = _SignInEvent;
  const factory AuthEvent.signUp(String email, String password) = _SignUpEvent;
  const factory AuthEvent.signOut() = _SignOutEvent;
  const factory AuthEvent.checkAuthentication() = _CheckAuthenticationEvent;
}
