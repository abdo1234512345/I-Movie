import 'package:flutter/material.dart';

class Splashviewbody extends StatelessWidget {
  const Splashviewbody({
    super.key,
    required AnimationController controller,
    required Animation<double> rotationAnimation,
    required Animation<double> scaleAnimation,
    required Animation<double> fadeAnimation,
  })  : _controller = controller,
        _rotationAnimation = rotationAnimation,
        _scaleAnimation = scaleAnimation,
        _fadeAnimation = fadeAnimation;

  final AnimationController _controller;
  final Animation<double> _rotationAnimation;
  final Animation<double> _scaleAnimation;
  final Animation<double> _fadeAnimation;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            AnimatedBuilder(
              animation: _controller,
              builder: (context, child) {
                return Transform.rotate(
                  angle: _rotationAnimation.value,
                  child: Transform.scale(
                    scale: _scaleAnimation.value,
                    child: Icon(
                      Icons.movie_outlined,
                      size: 120,
                      color: Colors.white,
                    ),
                  ),
                );
              },
            ),
            SizedBox(height: 20),
            FadeTransition(
              opacity: _fadeAnimation,
              child: Text(
                'I Movie',
                style: TextStyle(
                    fontSize: 28,
                    color: Colors.white,
                    fontWeight: FontWeight.bold),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
