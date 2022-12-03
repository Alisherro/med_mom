import 'package:flutter/material.dart';

import '../components/categorySelector.dart';
import '../components/newsCarousel.dart';
import '../components/tiledNewsView.dart';
import '../components/topbar.dart';
import '../components/welcomeWidget.dart';

class News extends StatelessWidget {
  const News({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Scaffold(
      body: SafeArea(
        child: Container(
            width: size.width,
            child: SingleChildScrollView(
              scrollDirection: Axis.vertical,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    padding: const EdgeInsets.all(10),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const TopBar(),
                        const SizedBox(height: 20),
                        const WelcomeWidget(),
                      ],
                    ),
                  ),
                  const SizedBox(height: 10),
                  NewsCarousel(),
                  const SizedBox(
                    height: 20,
                  ),
                  const CategorySelector(),
                  const SizedBox(
                    height: 10,
                  ),
                  Container(
                    padding: const EdgeInsets.all(10),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [TiledNewsView()],
                    ),
                  )
                ],
              ),
            )),
      ),
    );
  }
}
