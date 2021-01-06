import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';

import '../components/carousel_item.dart';

import '../constants.dart';

class Carousel extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(top: kDefaultPadding),
      child: CarouselSlider(
        items: [
          CarouselItem(
            title: 'Şeref Bey',
            imageUrl: 'assets/images/seref_bey_slider.jpg',
          ),
          CarouselItem(
            title: 'Konuşanlar',
            imageUrl: 'assets/images/konusanlar_slider.jpg',
          ),
          CarouselItem(
            title: 'Tolgshow Filtresiz',
            imageUrl: 'assets/images/tolgshow_filtresiz_slider.jpg',
          ),
          CarouselItem(
            title: 'Gibi',
            imageUrl: 'assets/images/gibi_slider.jpg',
          )
        ],
        options: CarouselOptions(
          height: 280,
          enlargeCenterPage: true,
          enableInfiniteScroll: true,
          autoPlayAnimationDuration: Duration(seconds: 15),
          aspectRatio: 16.0 / 9.0,
          viewportFraction: 0.8,
        ),
      ),
    );
  }
}
