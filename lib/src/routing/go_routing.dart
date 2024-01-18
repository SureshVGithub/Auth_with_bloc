import 'package:auth_with_bloc/src/features/auth/presentation/login.dart';
import 'package:auth_with_bloc/src/features/auth/presentation/register.dart';
import 'package:auth_with_bloc/src/features/onboarding/presentation/onboarding_screen.dart';
import 'package:go_router/go_router.dart';

final GoRouter router = GoRouter(
  initialLocation: ('/'),
  routes: [
    //login screen
    GoRoute(
      name: 'login',
      path: "/login",
      builder: (context, state) => const LoginScreen(),
    ),
    GoRoute(
      name: 'register',
      path: "/register",
      builder: (context, state) => const RegisterScreen(),
    ),
    GoRoute(
      name: 'onboarding',
      path: "/",
      builder: (context, state) => const OnboardingScreen(),
    ),
  ],
);
