import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class RegisterScreen extends StatelessWidget {
  const RegisterScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
          ElevatedButton(onPressed: () {}, child: const Text('Register')),
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
    ));
  }
}
