import 'package:auth_with_bloc/src/utils/constants/color_constants.dart';
import 'package:flutter/material.dart';

class OnboardingScreen extends StatelessWidget {
  const OnboardingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // backgroundColor: Colors.transparent,
      floatingActionButton: FloatingActionButton(
          onPressed: () {},
          backgroundColor: ColorConstants.buttonColor,
          child: const Icon(Icons.arrow_forward)),
      backgroundColor: ColorConstants.onboardingColor2,
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: const [
            Text(
              'GoFinance',
              style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.w700,
                  fontSize: 40),
              // style: Theme.of(context).textTheme.headline4,
            ),
            Text(
              'The most popular peer to peer lending at SEA',
              style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.normal,
                  fontSize: 18),
            ),
            Chip(
              backgroundColor: ColorConstants.buttonColor,
              label: Text(
                'Read More',
                style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.normal,
                    fontSize: 14),
              ),
            )
            // ElevatedButton(onPressed: () {}, child: const Text('Read more'))
            // Container(),
          ],
        ),
      ),
    );
  }
}
