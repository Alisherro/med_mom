
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';

import '../constants/values.dart';

class NewsCarousel extends StatelessWidget {
  NewsCarousel({Key? key}) : super(key: key);
  final StaticValues staticValues = StaticValues();

  @override
  Widget build(BuildContext context) {
    return CarouselSlider(
      options: CarouselOptions(
        height: 250.0,
      ),
      items: staticValues.news.map((news) {
        return Builder(
          builder: (BuildContext context) {
            return Container(
              margin: const EdgeInsets.symmetric(horizontal: 5),
              child: Stack(
                children: [
                  ClipRRect(
                    borderRadius: BorderRadius.circular(20),
                    child: Image(
                      fit: BoxFit.cover,
                      image: AssetImage(news.image),
                      height: 250,
                      // width: MediaQuery.of(context).size.width,
                    ),
                  ),
                  Container(
                    width: MediaQuery.of(context).size.width,
                    margin: const EdgeInsets.symmetric(horizontal: 8.0),
                    decoration: BoxDecoration(
                        gradient: const LinearGradient(
                          begin: Alignment.topCenter,
                          end: Alignment.bottomCenter,
                          colors: [
                            Color(0xCC000000),
                            Color(0x00000000),
                            Color(0x00000000),
                            Color(0xCC000000),
                          ],
                        ),
                        borderRadius: BorderRadius.circular(20)),
                  ),
                  Align(
                      alignment: Alignment.bottomCenter,
                      child: Container(
                        padding: const EdgeInsets.all(20),
                        child: Text(
                          news.title,
                          style: const TextStyle(fontSize: 15, color: Colors.white),
                        ),
                      ))
                ],
              ),
            );
          },
        );
      }).toList(),
    );
  }
}
