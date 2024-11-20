import 'package:flutter/material.dart';
import 'package:my_shedule/features/schedule/presentation/widgets/animated_background.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Stack(
        children: [
          Positioned.fill(child: AnimatedGradientDemo()),
          Center(
            child: Text(
              'Splash Screen',
              style: TextStyle(fontSize: 24, color: Colors.white),
            ),
          ),
        ],
      ),
    );
  }
}
