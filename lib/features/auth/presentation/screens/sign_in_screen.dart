import 'package:flutter/material.dart';
import 'package:my_shedule/core/services/firebase/auth_services.dart';
import 'package:my_shedule/features/auth/presentation/screens/sign_up_screen.dart';
import '../widgets/custom_text_field.dart';
import '../widgets/custom_button.dart';

class SignInScreen extends StatelessWidget {
  final TextEditingController emailController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();
  final AuthServices _authServices = AuthServicesImpl();

  despose() {
    emailController.dispose();
    passwordController.dispose();
  }

  SignInScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Sign In')),
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
            const SizedBox(height: 32),
            CustomButton(
              label: 'Sign In',
              onPressed: () {
                _authServices.signIn(
                  emailController.text.trim(),
                  passwordController.text.trim(),
                );
              },
            ),
            TextButton(
              onPressed: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => SignUpScreen()));
              },
              child: const Text('Don’t have an account? Sign Up'),
            ),
          ],
        ),
      ),
    );
  }
}
