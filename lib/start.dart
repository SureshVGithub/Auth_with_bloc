import 'package:auth_with_bloc/src/features/auth/bloc/login_bloc/login_validation_bloc.dart';
import 'package:auth_with_bloc/src/features/home/data/data_repository/data_repository.dart';
import 'package:auth_with_bloc/src/theme/dark_theme.dart';
import 'package:auth_with_bloc/src/theme/light_theme.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'src/features/auth/bloc/register_bloc/register_validation_bloc.dart';
import 'src/features/home/bloc/userlist_bloc.dart';
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
        BlocProvider(
          create: (context) => UserlistBloc(DataRepositoryHome()),
        ),
      ],
      child: MaterialApp.router(
        debugShowCheckedModeBanner: false,
        darkTheme: darkTheme,
        theme: lightTheme,
        themeMode:ThemeMode.system ,
        title: 'Auth with bloc',
        routerConfig: router,
      ),
    );
  }
}
