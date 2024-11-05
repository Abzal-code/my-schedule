import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:my_shedule/core/utils/helpers.dart';
import 'package:my_shedule/features/auth/presentation/bloc/auth_bloc.dart';
import 'package:my_shedule/features/auth/presentation/screens/sign_in_screen.dart';
import 'package:my_shedule/features/shedule/presentation/pages/schedule_screen.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocListener<AuthBloc, AuthState>(
      listener: (context, state) {
        state.when(
            initial: () {},
            loading: () => const Center(
                  child: CircularProgressIndicator(),
                ),
            authenticated: () {
              Navigator.of(context).pushReplacement(
                MaterialPageRoute(builder: (context) => const ScheduleScreen()),
              );
            },
            unauthenticated: () {
              Navigator.of(context).pushReplacement(
                MaterialPageRoute(builder: (context) => SignInScreen()),
              );
            },
            error: () => MessageHelper.displayError(
                  context,
                  'Something went wrong. Please try again.',
                ));
      },
      child: const Scaffold(
        body: Center(
          child: Text('Splash Screen'),
        ),
      ),
    );
  }
}
