import 'package:flutter/material.dart';
import 'package:tripp/size.dart';
import 'package:tripp/theme.dart';

class TripTypes extends StatefulWidget {
  TripTypes({
    Key? key,
  }) : super(key: key);
  final List<String> types = ["All", "Nearby", "Popular", "Best Deals"];

  @override
  State<TripTypes> createState() => _TripTypesState();
}

class _TripTypesState extends State<TripTypes> {
  int selected = 0;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        ...List.generate(
            widget.types.length, (index) => buildAsSelected(index)),
      ],
    );
  }

  // Text buildAsNormal(int index) {
  //   return Text(
  //     widget.types[index],
  //     style: const TextStyle(
  //       color: Color(0xffd2d2d2),
  //     ),
  //   );
  // }

  InkWell buildAsSelected(int index) {
    return InkWell(
      onTap: () {
        setState(() {
          selected = index;
        });
      },
      borderRadius: BorderRadius.circular(10),
      child: Container(
        padding: EdgeInsets.symmetric(horizontal: getWidth(10)),
        width: getWidth(160),
        height: getHeight(30),
        alignment: Alignment.center,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          color: selected == index
              ? Theme.of(context).primaryColorLight
              : Colors.transparent,
        ),
        child: Text(
          widget.types[index],
          style: TextStyle(
              fontSize: getHeight(14),
              color: selected == index
                  ? MyTheme.foreground
                  : MyTheme.foreground.withOpacity(0.4),
              fontWeight:
                  selected == index ? FontWeight.bold : FontWeight.normal),
        ),
      ),
    );
  }
}

// class TypeSelected extends StatelessWidget {
//   const TypeSelected({
//     Key? key,
//     required this.text,
//   }) : super(key: key);
//   final String text;

//   @override
//   Widget build(BuildContext context) {
//     return 
//   }
// }
