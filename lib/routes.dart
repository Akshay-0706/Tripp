import 'package:flutter/material.dart';
import 'package:tripp/screens/details/details.dart';
import 'package:tripp/screens/home/home.dart';

final Map<String, WidgetBuilder> routes = {
  "/": (context) => const Home(),
  "/details": (context) => const Details(),
  };
