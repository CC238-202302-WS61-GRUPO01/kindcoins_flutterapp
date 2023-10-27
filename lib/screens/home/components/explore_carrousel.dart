import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';

class ExploreCarrousel extends StatelessWidget {
  final List<Widget> cards;

  ExploreCarrousel(this.cards);

  @override
  Widget build(BuildContext context) {
    return CarouselSlider(
      options: CarouselOptions(
        height: 350,
        enableInfiniteScroll: true,
        autoPlay: true,
        autoPlayInterval: Duration(seconds: 5),
        autoPlayAnimationDuration: Duration(milliseconds: 1200),
        viewportFraction: 0.5, // Mostrar dos tarjetas a la vez
        pauseAutoPlayOnTouch: true,
        enlargeCenterPage: false,
        pageSnapping: true, // Desplazarse de una en una
      ),
      items: cards.length > 2 ? cards : cards.reversed.toList(),
    );
  }
}