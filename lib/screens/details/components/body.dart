import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:tripp/size.dart';
import 'package:tripp/theme.dart';

class DetailsBody extends StatelessWidget {
  const DetailsBody({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Container(
        width: double.infinity,
        height: double.infinity,
        decoration: const BoxDecoration(
            image: DecorationImage(
          image: AssetImage("assets/images/background.png"),
          fit: BoxFit.cover,
        )),
        child: Padding(
          padding: EdgeInsets.all(getWidth(40)),
          child: Column(
            children: [
              Row(
                children: [
                  Container(
                    width: getHeight(40),
                    height: getHeight(40),
                    decoration: BoxDecoration(
                      color: Theme.of(context).iconTheme.color,
                      shape: BoxShape.circle,
                    ),
                    alignment: Alignment.center,
                    child: Icon(
                      Icons.arrow_back_ios_new,
                      size: 18,
                      color: MyTheme.foreground,
                    ),
                  ),
                  const Spacer(),
                  Text(
                    "Details",
                    style: TextStyle(
                        color: Theme.of(context).secondaryHeaderColor,
                        fontSize: getHeight(18),
                        fontWeight: FontWeight.w600),
                  ),
                  const Spacer()
                ],
              ),
              const Spacer(),
              ClipRRect(
                borderRadius: BorderRadius.circular(6),
                child: BackdropFilter(
                  filter: ImageFilter.blur(sigmaX: 10, sigmaY: 10),
                  child: Container(
                    width: getHeight(335),
                    height: getHeight(292),
                    color: MyTheme.background.withOpacity(0.2),
                    child: Padding(
                      padding: const EdgeInsets.all(15),
                      child: Column(
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                "Pantai Ubud",
                                style: TextStyle(
                                    color:
                                        Theme.of(context).secondaryHeaderColor,
                                    fontSize: getHeight(24),
                                    fontWeight: FontWeight.bold),
                              ),
                              const Icon(
                                Icons.favorite,
                                color: Colors.red,
                              )
                            ],
                          ),
                          const Spacer(),
                          Text(
                            "Ubud tourism is also supported by complete accommodation facilities, available from cheap hotels to luxury resorts. Finding a place to eat is also very easy in Ubud, and currently the Ubud tourism area is very famous as a culinary tourism destination in Bali.",
                            style: TextStyle(
                                color: Theme.of(context).secondaryHeaderColor,
                                wordSpacing: 4,
                                fontSize: getHeight(16)),
                          ),
                          const Spacer(),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              getInfo(
                                  context: context,
                                  type: "Distance",
                                  info: "105 ml"),
                              getInfo(
                                  context: context,
                                  type: "Elevation",
                                  info: "3.872"),
                              getInfo(
                                  context: context,
                                  type: "Difficulty",
                                  info: "Easy")
                            ],
                          ),
                          const Spacer(),
                          Container(
                            width: getHeight(300),
                            height: getHeight(45),
                            decoration: BoxDecoration(
                                color: Theme.of(context).secondaryHeaderColor,
                                borderRadius: BorderRadius.circular(8)),
                            alignment: Alignment.center,
                            child: Row(
                              children: [
                                const Spacer(),
                                Text(
                                  "Join Trip",
                                  style: TextStyle(
                                      fontSize: getHeight(18),
                                      fontWeight: FontWeight.bold),
                                ),
                                const Spacer(),
                                Stack(
                                  children: [
                                    Positioned(
                                      right: 14,
                                      child: Icon(Icons.arrow_right_rounded,
                                          size: 35,
                                          color: MyTheme.foreground
                                              .withOpacity(0.3)),
                                    ),
                                    Icon(Icons.arrow_right_rounded,
                                        size: 35,
                                        color: MyTheme.foreground
                                            .withOpacity(0.6)),
                                    Positioned(
                                      left: 14,
                                      child: Icon(
                                        Icons.arrow_right_rounded,
                                        size: 35,
                                        color: MyTheme.foreground,
                                      ),
                                    ),
                                  ],
                                ),
                                SizedBox(
                                  width: getWidth(40),
                                )
                              ],
                            ),
                          )
                        ],
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

  Column getInfo(
      {required BuildContext context,
      required String type,
      required String info}) {
    return Column(
      children: [
        Text(
          type,
          style: TextStyle(
              color: Theme.of(context).secondaryHeaderColor,
              fontSize: getHeight(16),
              fontWeight: FontWeight.bold),
        ),
        Text(
          info,
          style: TextStyle(
            color: Theme.of(context).secondaryHeaderColor,
            fontSize: getHeight(12),
          ),
        ),
      ],
    );
  }
}
