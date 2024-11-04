import 'package:flutter/material.dart';
import 'package:my_shedule/core/services/firebase/auth_services.dart';
import 'package:my_shedule/core/utils/helpers.dart';
import '../widgets/custom_text_field.dart';
import '../widgets/custom_button.dart';

class SignUpScreen extends StatelessWidget {
  final AuthServices _authServices = AuthServicesImpl();
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
      body: Padding(
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
                  _authServices.signUp(
                    emailController.text.trim(),
                    passwordController.text.trim(),
                  );
                } else {
                  // Handle password mismatch
                  MessageHelper.displayError(context, 'Password mismatch');
                }
              },
            ),
          ],
        ),
      ),
    );
  }
}
