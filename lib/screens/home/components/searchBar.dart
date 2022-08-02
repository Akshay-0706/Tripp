import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:tripp/theme.dart';

import '../../../size.dart';

class SearchBar extends StatelessWidget {
  const SearchBar({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          child: Container(
            padding: const EdgeInsets.only(right: 20),
            height: getHeight(45),
            decoration: BoxDecoration(
              border: Border.all(color: MyTheme.foreground, width: 0.3),
              borderRadius: BorderRadius.circular(10),
            ),
            alignment: Alignment.center,
            child: TextField(
              style: TextStyle(fontSize: getHeight(18)),
              decoration: const InputDecoration(
                prefixIcon: Icon(Icons.search_rounded),
                enabledBorder: InputBorder.none,
                focusedBorder: InputBorder.none,
                hintText: "Search",
              ),
            ),
          ),
        ),
        SizedBox(
          width: getWidth(20),
        ),
        Material(
          color: MyTheme.foreground,
          borderRadius: BorderRadius.circular(10),
          child: InkWell(
            onTap: () {},
            borderRadius: BorderRadius.circular(10),
            child: Container(
              padding: const EdgeInsets.all(12),
              height: getHeight(45),
              width: getHeight(45),
              child: SvgPicture.asset(
                "assets/icons/filter.svg",
                color: Theme.of(context).iconTheme.color,
              ),
            ),
          ),
        ),
      ],
    );
  }
}
