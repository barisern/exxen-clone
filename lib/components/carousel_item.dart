import 'package:flutter/material.dart';

import '../constants.dart';

class CarouselItem extends StatelessWidget {
  final String imageUrl;
  final String title;

  const CarouselItem({this.imageUrl, this.title});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        image: DecorationImage(
          image: AssetImage(imageUrl),
          fit: BoxFit.cover,
        ),
        boxShadow: [
          BoxShadow(
            offset: Offset(2, -2),
            color: Colors.black12,
            blurRadius: 10,
          ),
        ],
      ),
      child: Container(
        margin: EdgeInsets.only(left: kDefaultPadding, top: 200),
        width: double.infinity,
        decoration: BoxDecoration(
          boxShadow: [
            BoxShadow(
              offset: Offset(-kDefaultPadding, 0),
              color: Colors.black45,
              blurRadius: 10,
            ),
          ],
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Expanded(
              child: Text(
                title,
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 34,
                  fontWeight: FontWeight.bold,
                ),
                overflow: TextOverflow.fade,
                softWrap: false,
              ),
            ),
            Container(
              margin: EdgeInsets.only(right: kDefaultPadding),
              child: IconButton(
                icon: Icon(
                  Icons.play_circle_filled,
                  color: Colors.white, // ? kYellowColor
                  size: 36,
                ),
                onPressed: () => print("pressed play $title"),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
