import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:flutter/services.dart';

class MyTheme {
  // Custom variables
  static Color foreground = Colors.black;
  static Color background = Color.fromRGBO(137, 189, 237, 0.30);

  static LinearGradient backgroundGradient = const LinearGradient(
    begin: Alignment.topLeft,
    end: Alignment.bottomRight,
    colors: [
      Color.fromRGBO(137, 189, 237, 0.30),
      Color.fromRGBO(137, 189, 237, 0.25),
      Color.fromRGBO(137, 189, 237, 0.20),
      Color.fromRGBO(137, 189, 237, 0.15),
      Colors.transparent,
    ],
    stops: [0, 0.1, 0.2, 0.3, 1],
  );

  // Change theme manually
  static void setLightTheme() {
    foreground = Colors.black;
    background = Color.fromRGBO(137, 189, 237, 0.30);
    SystemChrome.setSystemUIOverlayStyle(const SystemUiOverlayStyle(
        statusBarBrightness: Brightness.dark,
        statusBarColor: Color.fromRGBO(137, 189, 237, 0.30),
        statusBarIconBrightness: Brightness.dark));

    backgroundGradient = const LinearGradient(
      begin: Alignment.topLeft,
      end: Alignment.bottomRight,
      colors: [
        Color.fromRGBO(137, 189, 237, 0.30),
        Color.fromRGBO(137, 189, 237, 0.25),
        Color.fromRGBO(137, 189, 237, 0.20),
        Color.fromRGBO(137, 189, 237, 0.15),
        Colors.transparent,
      ],
      stops: [0, 0.1, 0.2, 0.3, 1],
    );
  }

  static void setDarkTheme() {
    foreground = Colors.white;
    background = Colors.grey[900]!;

    SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle(
        statusBarBrightness: Brightness.light,
        statusBarColor: Colors.grey[900]!,
        statusBarIconBrightness: Brightness.light));

    backgroundGradient = LinearGradient(
      begin: Alignment.topLeft,
      end: Alignment.bottomRight,
      colors: [
        Colors.grey[900]!,
      ],
      stops: const [0],
    );
  }

  // Calls everytime theme is changed
  static void changeTheme() {
    bool isDarkMode =
        SchedulerBinding.instance.window.platformBrightness == Brightness.dark;

    isDarkMode ? setDarkTheme() : setLightTheme();
  }

  // Change stock theme
  static ThemeData lightTheme(BuildContext context) {
    return ThemeData(
        fontFamily: "Inter",
        primaryColor: Colors.black,
        secondaryHeaderColor: Colors.white,
        primaryColorLight: Colors.black.withOpacity(0.2),
        iconTheme: IconThemeData(color: Colors.white),
        colorScheme: ColorScheme.fromSwatch().copyWith(
          primary: Colors.black,
          brightness: Brightness.light,
        ),
        textTheme: const TextTheme(headline2: TextStyle(color: Colors.black)));
  }

  static ThemeData darkTheme(BuildContext context) {
    return ThemeData(
        fontFamily: "Inter",
        primaryColor: Colors.white,
        secondaryHeaderColor: Colors.black,
        primaryColorLight: Colors.white.withOpacity(0.2),
        iconTheme: IconThemeData(color: Colors.grey[900]),
        colorScheme: ColorScheme.fromSwatch().copyWith(
          primary: Colors.white,
          brightness: Brightness.dark,
        ),
        textTheme: const TextTheme(headline2: TextStyle(color: Colors.white)));
  }
}
