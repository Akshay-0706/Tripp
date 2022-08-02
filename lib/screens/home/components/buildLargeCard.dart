import 'dart:ui';

import 'package:flutter/material.dart';

import '../../../size.dart';
import '../../../theme.dart';

class BuildLargeCard extends StatelessWidget {
  const BuildLargeCard(
      {Key? key,
      required this.image,
      required this.title,
      required this.location})
      : super(key: key);
  final String image, title, location;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(right: getWidth(40), bottom: 20),
      child: InkWell(
        onTap: () {
          if (title == "Pantai Ubud") {
            Navigator.pushNamed(context, "/details");
          }
        },
        child: Ink(
          decoration: BoxDecoration(
            boxShadow: [
              BoxShadow(
                offset: const Offset(7, 7),
                color: Colors.black.withOpacity(0.2),
                blurRadius: 7,
              )
            ],
          ),
          child: Stack(
            children: [
              ClipRRect(
                borderRadius: BorderRadius.circular(8),
                child: Image.asset(
                  image,
                  width: getHeight(194),
                  height: getHeight(194),
                ),
              ),
              Positioned.fill(
                bottom: 10,
                child: Align(
                  alignment: Alignment.bottomCenter,
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(8),
                    child: BackdropFilter(
                      filter: ImageFilter.blur(sigmaX: 10, sigmaY: 10),
                      child: Container(
                        width: getHeight(178),
                        color: MyTheme.background.withOpacity(0.2),
                        child: Padding(
                          padding: const EdgeInsets.all(10),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Column(
                                mainAxisSize: MainAxisSize.min,
                                mainAxisAlignment: MainAxisAlignment.center,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    title,
                                    style: const TextStyle(color: Colors.white),
                                  ),
                                  Row(
                                    children: [
                                      Image.asset(
                                        "assets/icons/location.png",
                                        width: 12,
                                        height: 12,
                                      ),
                                      SizedBox(
                                        width: 4,
                                      ),
                                      Text(
                                        location,
                                        style: const TextStyle(
                                            color: Colors.white),
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                              Icon(
                                Icons.favorite,
                                color: Colors.red,
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
