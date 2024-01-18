import 'package:auth_with_bloc/src/routing/go_routing.dart';
import 'package:auth_with_bloc/src/theme/light_theme.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      debugShowCheckedModeBanner: false,
      theme: lightTheme,
      title: 'Flutter Demo',
      routerConfig: router,
    );
  }
}
