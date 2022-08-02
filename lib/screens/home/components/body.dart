import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:tripp/categories.dart';
import 'package:tripp/size.dart';
import 'package:tripp/theme.dart';

import 'appHeader.dart';
import 'buildLargeCard.dart';
import 'buildSmallCard.dart';
import 'searchBar.dart';
import 'sectionTitle.dart';
import 'tripTypes.dart';

class HomeBody extends StatelessWidget {
  const HomeBody({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: SingleChildScrollView(
        child: Container(
          decoration: BoxDecoration(
            gradient: MyTheme.backgroundGradient,
          ),
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: getWidth(40)),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(
                  height: getHeight(20),
                ),
                AppHeader(),
                SizedBox(
                  height: getHeight(20),
                ),
                Text(
                  "Hey!",
                  style: TextStyle(
                      color: Theme.of(context).textTheme.headline2?.color,
                      fontSize: getHeight(20),
                      fontWeight: FontWeight.w500),
                ),
                SizedBox(
                  height: getHeight(14),
                ),
                Text(
                  "Explore and Find Your Favorite Places in the World",
                  style: TextStyle(
                      color: MyTheme.foreground,
                      fontSize: getHeight(26),
                      fontWeight: FontWeight.bold),
                ),
                SizedBox(
                  height: getHeight(40),
                ),
                SearchBar(),
                SizedBox(
                  height: getHeight(20),
                ),
                TripTypes(),
                SizedBox(
                  height: getHeight(40),
                ),
                SectionTitle(
                  title: "Categories",
                  subTitle: "See all",
                ),
                SizedBox(
                  height: getHeight(20),
                ),
                SingleChildScrollView(
                  physics: const BouncingScrollPhysics(),
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    children: [
                      ...List.generate(
                          categories.length,
                          (index) => BuildSmallCard(
                                image: categories[index].image,
                                title: categories[index].title,
                              ))
                    ],
                  ),
                ),
                SizedBox(
                  height: getHeight(20),
                ),
                SectionTitle(
                  title: "Top Destinations",
                  subTitle: "See all",
                ),
                SizedBox(
                  height: getHeight(20),
                ),
                SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  physics: const BouncingScrollPhysics(),
                  child: Row(
                    children: [
                      ...List.generate(
                          destinations.length,
                          (index) => BuildLargeCard(
                              image: destinations[index].image,
                              title: destinations[index].title,
                              location: destinations[index].location))
                    ],
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
