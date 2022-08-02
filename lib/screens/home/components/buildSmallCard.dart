import 'package:flutter/material.dart';

import '../../../size.dart';

class BuildSmallCard extends StatelessWidget {
  const BuildSmallCard({
    Key? key,
    required this.image,
    required this.title,
  }) : super(key: key);
  final String image, title;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(right: getWidth(40), bottom: 20),
      child: Container(
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
            Container(
              width: getHeight(89),
              height: getHeight(113),
              foregroundDecoration: BoxDecoration(
                gradient: LinearGradient(
                    begin: Alignment.topCenter,
                    end: Alignment.bottomCenter,
                    colors: [
                      Colors.transparent,
                      Colors.transparent,
                      Colors.black.withOpacity(0.5),
                      Colors.black.withOpacity(0.7),
                      Colors.black
                    ],
                    stops: const [
                      0,
                      0.7,
                      0.8,
                      0.9,
                      1
                    ]),
                borderRadius: BorderRadius.circular(8),
              ),
              child: ClipRRect(
                borderRadius: BorderRadius.circular(8),
                child: Image.asset(
                  image,
                ),
              ),
            ),
            Positioned(
                bottom: 10,
                child: Container(
                  width: getHeight(89),
                  alignment: Alignment.center,
                  child: Text(
                    title,
                    textAlign: TextAlign.center,
                    style: const TextStyle(color: Colors.white),
                  ),
                ))
          ],
        ),
      ),
    );
  }
}
