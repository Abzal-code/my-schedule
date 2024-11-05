import 'package:flutter/material.dart';
import 'package:my_shedule/features/auth/presentation/bloc/auth_bloc.dart';

class AuthChangeNotifier extends ChangeNotifier {
  final AuthBloc authBloc;

  AuthChangeNotifier(this.authBloc) {
    authBloc.stream.listen((state) {
      notifyListeners();
    });
  }

  bool get isAuthenticated {
    final state = authBloc.state;
    return state.maybeWhen(
      authenticated: () => true,
      orElse: () => false,
    );
  }

  bool get isCheckingAuth {
    final state = authBloc.state;
    return state.maybeWhen(
      initial: () => true,
      orElse: () => false,
    );
  }
}
