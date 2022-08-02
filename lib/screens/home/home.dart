import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:tripp/screens/home/components/body.dart';
import 'package:tripp/size.dart';

class Home extends StatelessWidget {
  const Home({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size.init(context);
    return Scaffold(
      backgroundColor: Colors.white,
      body: HomeBody(),
    );
  }
}
