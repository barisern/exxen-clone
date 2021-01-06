import 'package:flutter/material.dart';

import '../components/carousel.dart';
import '../components/my_appbar.dart';
import '../components/scrollable_display.dart';
import '../constants.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kBackgroundColor,
      appBar: MyAppBar(),
      body: ListView(
        children: [
          Carousel(),
          SizedBox(height: kDefaultPadding * 2),
          ScrollableDisplay(
            title: 'Sizin için öneriler',
            images: recommendedList,
          ),
          SizedBox(height: kDefaultPadding),
          ScrollableDisplay(
            title: 'En çok izlenenler',
            images: mostWatchedList,
          ),
          SizedBox(height: kDefaultPadding * 2),
        ],
      ),
    );
  }
}
