import 'package:flutter/material.dart';

class AnimatedGradientDemo extends StatefulWidget {
  const AnimatedGradientDemo({super.key});

  @override
  State<AnimatedGradientDemo> createState() => _AnimatedGradientDemoState();
}

class _AnimatedGradientDemoState extends State<AnimatedGradientDemo>
    with SingleTickerProviderStateMixin {
  late AnimationController _controller;
  late Animation<Color?> _colorAnimation1;
  late Animation<Color?> _colorAnimation2;

  @override
  void initState() {
    super.initState();

    // Инициализация AnimationController
    _controller = AnimationController(
      duration: const Duration(seconds: 5),
      vsync: this,
    )..repeat(reverse: true);

    // Определение первого цвета анимации
    _colorAnimation1 = ColorTween(
      begin: Colors.blue,
      end: Colors.purple,
    ).animate(_controller);

    // Определение второго цвета анимации
    _colorAnimation2 = ColorTween(
      begin: Colors.red,
      end: Colors.orange,
    ).animate(_controller);
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return AnimatedBuilder(
      animation: _controller,
      builder: (context, child) {
        return Container(
          decoration: BoxDecoration(
            gradient: LinearGradient(
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
              colors: [
                _colorAnimation1.value ?? Colors.blue,
                _colorAnimation2.value ?? Colors.red,
              ],
            ),
          ),
        );
      },
    );
  }
}
