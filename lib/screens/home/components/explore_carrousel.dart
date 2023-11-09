import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';

class ExploreCarrousel extends StatelessWidget {
  final List<Widget> cards;

  const ExploreCarrousel(this.cards, {super.key});

  @override
  Widget build(BuildContext context) {
    return CarouselSlider(
      options: CarouselOptions(
        height: MediaQuery.of(context).size.height * 0.5,
        enableInfiniteScroll: true,
        autoPlay: true,
        autoPlayInterval: const Duration(seconds: 5),
        autoPlayAnimationDuration: const Duration(milliseconds: 1200),
        viewportFraction: 0.5, // Mostrar dos tarjetas a la vez
        pauseAutoPlayOnTouch: true,
        enlargeCenterPage: false,
        pageSnapping: true, // Desplazarse de una en una
      ),
      items: cards.length > 2 ? cards : cards.reversed.toList(),
    );
  }
}
