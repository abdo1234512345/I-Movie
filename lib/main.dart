import 'package:flutter/material.dart';
import 'package:movieapp/Features/SplashView/Presention/Views/splash_view.dart';

void main() {
  runApp(MovieApp());
}

class MovieApp extends StatelessWidget {
  const MovieApp({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: MaterialApp(
        darkTheme: ThemeData.dark(),
        home: SplashScreen(),
        debugShowCheckedModeBanner: false,
      ),
    );
  }
}
