import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';

class TrendCarrousel extends StatelessWidget {
  final List<Map<String, dynamic>> items;

  const TrendCarrousel(this.items, {super.key});

  @override
  Widget build(BuildContext context) {
    return CarouselSlider(
      options: CarouselOptions(
        height: MediaQuery.of(context).size.height * 0.2,
        enableInfiniteScroll: true,
        autoPlay: true,
        autoPlayInterval: const Duration(seconds: 3),
        autoPlayAnimationDuration: const Duration(milliseconds: 800),
        pauseAutoPlayOnTouch: true,
        viewportFraction: 0.8,
      ),
      items: items.map((item) {
        String title = item['title'] ?? '';
        if (title.length > 20) {
          title = '${title.substring(0, 20)}...';
        }

        return Padding(
          padding: const EdgeInsets.symmetric(horizontal: 8.0),
          child: Container(
            width: MediaQuery.of(context).size.width * 0.8,
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage(item['imageURL'] ?? ''),
                fit: BoxFit.cover,
              ),
            ),
            child: Stack(
              children: [
                Positioned(
                  bottom: 16.0,
                  left: 16.0,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Tooltip(
                        message: item['title'] ?? '',
                        child: FittedBox(
                          fit: BoxFit.scaleDown,
                          child: Text(
                            title,
                            style: const TextStyle(
                              color: Color(0xFFEBFFFD),
                              fontSize: 20.0,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                      ),
                      const SizedBox(height: 4.0),
                      Text(
                        item['description'] ?? '',
                        style: TextStyle(
                          color: Colors.white,
                          backgroundColor: Colors.black.withOpacity(0.5),
                          fontSize: 14.0,
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        );
      }).toList(),
    );
  }
}