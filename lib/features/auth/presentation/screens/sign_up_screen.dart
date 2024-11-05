import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:my_shedule/core/utils/helpers.dart';
import 'package:my_shedule/features/auth/presentation/bloc/auth_bloc.dart';
import 'package:my_shedule/features/shedule/presentation/pages/schedule_screen.dart';
import '../widgets/custom_text_field.dart';
import '../widgets/custom_button.dart';

class SignUpScreen extends StatelessWidget {
  final TextEditingController emailController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();
  final TextEditingController confirmPasswordController =
      TextEditingController();

  SignUpScreen({super.key});

  despose() {
    emailController.dispose();
    passwordController.dispose();
    confirmPasswordController.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Sign Up')),
      body: BlocListener<AuthBloc, AuthState>(
        listener: (context, state) {
          state.when(
            initial: () {},
            loading: () => const CircularProgressIndicator(),
            authenticated: () => Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => const ScheduleScreen(),
              ),
            ),
            unauthenticated: () => MessageHelper.displayError(
              context,
              'Unauthenticated',
            ),
            error: () => MessageHelper.displayError(
              context,
              'Error signing up',
            ),
          );
        },
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              CustomTextField(
                controller: emailController,
                hintText: 'Email',
                icon: Icons.email,
                keyboardType: TextInputType.emailAddress,
              ),
              const SizedBox(height: 16),
              CustomTextField(
                controller: passwordController,
                hintText: 'Password',
                icon: Icons.lock,
                obscureText: true,
                keyboardType: TextInputType.visiblePassword,
              ),
              const SizedBox(height: 16),
              CustomTextField(
                controller: confirmPasswordController,
                hintText: 'Confirm Password',
                icon: Icons.lock,
                obscureText: true,
                keyboardType: TextInputType.visiblePassword,
              ),
              const SizedBox(height: 32),
              CustomButton(
                label: 'Sign Up',
                onPressed: () {
                  if (passwordController.text.trim() ==
                      confirmPasswordController.text.trim()) {
                    context.read<AuthBloc>().add(
                          AuthEvent.signUp(
                            emailController.text,
                            passwordController.text,
                          ),
                        );
                  } else {
                    print('Password mismatch');
                    // Handle password mismatch
                    MessageHelper.displayError(context, 'Password mismatch');
                  }
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
