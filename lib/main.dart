import 'package:flutter/material.dart';
import 'package:tripp/routes.dart';
import 'package:tripp/theme.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  void initState() {
    MyTheme.changeTheme();

    final window = WidgetsBinding.instance.window;
    window.onPlatformBrightnessChanged = () {
      setState(() {
        MyTheme.changeTheme();
      });
    };

    super.initState();
  }

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Tripp',
      theme: MyTheme.lightTheme(context),
      darkTheme: MyTheme.darkTheme(context),
      routes: routes,
    );
  }
}
