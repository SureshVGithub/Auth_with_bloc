import 'package:auth_with_bloc/src/features/onboarding/presentation/onboarding_screen.dart';
import 'package:auth_with_bloc/src/theme/light_theme.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      //! router                //! theme
      theme: lightTheme,
      title: 'Flutter Demo',

      home: const OnboardingScreen(),
    );
  }
}
