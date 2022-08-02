import 'package:flutter/material.dart';
import 'package:tripp/theme.dart';

import '../../../size.dart';

class SectionTitle extends StatelessWidget {
  const SectionTitle({
    Key? key,
    required this.title,
    required this.subTitle,
  }) : super(key: key);
  final String title, subTitle;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          title,
          style: TextStyle(
              color: MyTheme.foreground,
              fontSize: getHeight(20),
              fontWeight: FontWeight.w600),
        ),
        Text(
          subTitle,
          style: TextStyle(
            color: Color(0xff8a8a8a),
            fontSize: getHeight(14),
          ),
        ),
      ],
    );
  }
}
