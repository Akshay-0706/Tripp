import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:tripp/theme.dart';

class AppHeader extends StatelessWidget {
  const AppHeader({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        SvgPicture.asset(
          "assets/icons/menu.svg",
          width: 24,
          height: 24,
          color: MyTheme.foreground,
        ),
        Image.asset(
          "assets/images/avatar.png",
          width: 50,
          height: 50,
        ),
      ],
    );
  }
}
