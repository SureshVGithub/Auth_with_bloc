import 'package:auth_with_bloc/src/features/auth/bloc/login_bloc/login_validation_bloc.dart';
import 'package:auth_with_bloc/src/theme/light_theme.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'src/features/auth/bloc/register_bloc/register_validation_bloc.dart';
import 'src/routing/go_routing.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (context) => LoginValidationBloc(),
        ),
        BlocProvider(
          create: (context) => RegisterValidationBloc(),
        ),
      ],
      child: MaterialApp.router(
        debugShowCheckedModeBanner: false,
        theme: lightTheme,
        title: 'Auth with bloc',
        routerConfig: router,
      ),
    );
  }
}
