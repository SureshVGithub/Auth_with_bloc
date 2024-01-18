import 'package:auth_with_bloc/src/features/auth/bloc/login_bloc/login_validation_bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return BlocListener<LoginValidationBloc, LoginValidationState>(
      listener: (context, state) {
        if (state is LoginValidationFailure) {
          ScaffoldMessenger.of(context).showSnackBar(
            SnackBar(
              backgroundColor: Colors.white,
              content: Text(
                state.error,
                style: const TextStyle(color: Colors.red),
              ),
            ),
          );
        }
        if (state is LoginValidationSuccess) {
          GoRouter.of(context).go("/home");
          ScaffoldMessenger.of(context).showSnackBar(
            const SnackBar(
              backgroundColor: Colors.white,
              content: Text(
                'Logged in',
                style: TextStyle(color: Colors.green),
              ),
            ),
          );
        }
        // TODO: implement listener

        // TODO: implement listener
      },
      child: Scaffold(
          body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Hello again!',
              style: Theme.of(context).textTheme.titleMedium,
            ),
            Text(
              'Welcome back',
              style: Theme.of(context).textTheme.bodyLarge,
            ),
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.05,
            ),
            TextFormField(
              style: const TextStyle(
                fontSize:
                    18.0, // Set font size for the text inside the TextField
                fontWeight: FontWeight.normal, // Set font weight for the text
              ),
              controller: emailController,
              cursorColor: Colors.black,
              decoration: const InputDecoration(
                prefixIcon: Icon(
                  Icons.email,
                  color: Colors.grey,
                ),
                label: Text(' Enter your email'),
              ),
            ),
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.02,
            ),
            TextFormField(
              style: const TextStyle(
                fontSize:
                    18.0, // Set font size for the text inside the TextField
                fontWeight: FontWeight.normal, // Set font weight for the text
              ),
              controller: passwordController,
              cursorColor: Colors.black,
              decoration: const InputDecoration(
                prefixIcon: Icon(
                  Icons.lock,
                  color: Colors.grey,
                ),
                label: Text(' Enter password'),
              ),
            ),
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.02,
            ),
            ElevatedButton(
                onPressed: () {
                  context
                      .read<LoginValidationBloc>()
                      .add(LoginValidationPressed(
                        context: context,
                        email: emailController.text,
                        password: passwordController.text,
                      ));
                  // GoRouter.of(context).go("/home");
                },
                child: const Text('Login')),
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.02,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Text('Do not you have an account?',
                    style: TextStyle(color: Colors.grey)),
                TextButton(
                  onPressed: () {
                    GoRouter.of(context).push("/login");
                  },
                  child: const Text(' Register'),
                ),
              ],
            )
          ],
        ),
      )),
    );
  }
}
