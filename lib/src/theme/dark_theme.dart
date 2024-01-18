import 'package:flutter/material.dart';

import '../utils/constants/color_constants.dart';

final darkTheme = ThemeData(
  fontFamily: 'PoppinsRegular',
  scaffoldBackgroundColor: Colors.black,
  appBarTheme: const AppBarTheme(
    backgroundColor: Colors.transparent,
    surfaceTintColor: Colors.transparent,
  ),
  useMaterial3: true,
  buttonTheme: const ButtonThemeData(),
  textTheme: const TextTheme(
    displayLarge: TextStyle(
      fontSize: 72,
    ),
    titleLarge: TextStyle(
      fontSize: 42,
      fontWeight: FontWeight.w600,
    ),
    titleMedium: TextStyle(
      fontSize: 26,
      fontWeight: FontWeight.w700,
    ),
    titleSmall: TextStyle(
      fontSize: 24,
    ),
    bodyLarge: TextStyle(
      fontSize: 18,
    ),
    bodyMedium: TextStyle(
      fontSize: 16,
    ),
    bodySmall: TextStyle(fontSize: 10),
    headlineLarge: TextStyle(
      fontSize: 42,
      fontFamily: 'PoppinsBold',
    ),
    headlineMedium: TextStyle(fontSize: 32, fontFamily: 'PoppinsBold'),
    headlineSmall: TextStyle(fontSize: 28, fontFamily: 'PoppinsBold'),
  ),
  iconTheme: const IconThemeData(color: Colors.white),
  cardTheme: CardTheme(
    shape: RoundedRectangleBorder(
      borderRadius: BorderRadius.circular(8),
    ),
  ),
  outlinedButtonTheme: OutlinedButtonThemeData(
    style: ButtonStyle(
      shape: MaterialStateProperty.all(
          RoundedRectangleBorder(borderRadius: BorderRadius.circular(8.0))),
      side: MaterialStateProperty.all(const BorderSide(color: Colors.grey)),
    ),
  ),
  elevatedButtonTheme: ElevatedButtonThemeData(
    style: ElevatedButton.styleFrom(
      minimumSize: const Size.fromHeight(60),
      backgroundColor: ColorConstants.buttonColor,
      foregroundColor: Colors.white,
      textStyle: const TextStyle(
        fontWeight: FontWeight.w700,
        fontSize: 16,
        fontFamily: 'PoppinsRegular',
      ),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(35.0),
      ),
      elevation: 4,
      shadowColor: const Color(0xF4845F82),
    ),
  ),
  textButtonTheme: TextButtonThemeData(
      style: TextButton.styleFrom(
    textStyle: const TextStyle(
      fontWeight: FontWeight.w700,
      fontSize: 16,
      fontFamily: 'PoppinsRegular',
    ),
  )),
  brightness: Brightness.dark,
  inputDecorationTheme: const InputDecorationTheme(
    prefixStyle: TextStyle(
        fontSize: 18, fontFamily: 'PoppinsRegular', color: Colors.white),
    hintStyle: TextStyle(
        fontSize: 16, fontFamily: 'PoppinsRegular', color: Colors.grey),
    labelStyle: TextStyle(
        fontSize: 16, fontFamily: 'PoppinsRegular', color: Colors.grey),
    counterStyle: TextStyle(
        fontSize: 16, fontFamily: 'PoppinsRegular', color: Colors.white),
    border: OutlineInputBorder(
      borderRadius: BorderRadius.all(Radius.circular(35.0)),
    ),
    disabledBorder: OutlineInputBorder(
      borderSide: BorderSide(color: ColorConstants.greyColor),
      borderRadius: BorderRadius.all(Radius.circular(35.0)),
    ),
    enabledBorder: OutlineInputBorder(
      borderSide: BorderSide(color: ColorConstants.greyColor),
      borderRadius: BorderRadius.all(Radius.circular(35.0)),
    ),
    focusedBorder: OutlineInputBorder(
      borderSide: BorderSide(
        color: Colors.white,
      ),
      borderRadius: BorderRadius.all(Radius.circular(35.0)),
    ),
  ),
  progressIndicatorTheme:
      const ProgressIndicatorThemeData(circularTrackColor: Colors.black),
);
