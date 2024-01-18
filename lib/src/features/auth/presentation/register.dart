import 'package:auth_with_bloc/src/features/auth/bloc/register_bloc/register_validation_bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';

class RegisterScreen extends StatelessWidget {
  const RegisterScreen({super.key});

  @override
  Widget build(BuildContext context) {
    TextEditingController nameController = TextEditingController();

    TextEditingController emailController = TextEditingController();
    TextEditingController passwordController = TextEditingController();

    return BlocListener<RegisterValidationBloc, RegisterValidationState>(
      listener: (context, state) {
        if (state is RegisterValidationFailure) {
          ScaffoldMessenger.of(context).showSnackBar(
            SnackBar(
              backgroundColor: Colors.red,
              content: Text(
                state.error,
                style: const TextStyle(color: Colors.white),
              ),
            ),
          );
        }
        if (state is RegisterValidationSuccess) {
          GoRouter.of(context).go("/home");
          ScaffoldMessenger.of(context).showSnackBar(
            const SnackBar(
              backgroundColor: Colors.green,
              content: Text(
                'Logged in',
                style: TextStyle(color: Colors.white),
              ),
            ),
          );
        }
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
              'Hello',
              style: Theme.of(context).textTheme.titleMedium,
            ),
            Text(
              'Sign Up to Get Started',
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
              controller: nameController,
              cursorColor: Colors.black,
              decoration: const InputDecoration(
                prefixIcon: Icon(
                  Icons.person,
                  color: Colors.grey,
                ),
                label: Text(' Enter your name'),
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
                      .read<RegisterValidationBloc>()
                      .add(RegisterValidationPressed(
                        name: nameController.text,
                        context: context,
                        email: emailController.text,
                        password: passwordController.text,
                      ));
                  // GoRouter.of(context).go("/home");
                },
                child: const Text('Register')),
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.02,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Text('Already have an account?',
                    style: TextStyle(color: Colors.grey)),
                TextButton(
                    onPressed: () {
                      GoRouter.of(context).push("/login");
                    },
                    child: const Text(' Login')),
              ],
            )
          ],
        ),
      )),
    );
  }
}
