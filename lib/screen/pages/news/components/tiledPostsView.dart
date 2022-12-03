import 'package:flutter/material.dart';

import '../constants/values.dart';
import '../models/news.dart';
import '../models/posts.dart';
import '../pages/newsView.dart';

class TiledNewsView extends StatelessWidget {
  final int selectedCategory;

  const TiledNewsView({Key? key, required this.selectedCategory})
      : super(key: key);
  static List posts = [
    StaticValues.doctors,
    StaticValues.clinics,
    StaticValues.pharmacies,
    StaticValues.kindergartens,
    StaticValues.nannies,
  ];

  @override
  Widget build(BuildContext context) {
    final data = posts.elementAt(selectedCategory);
    return Column(
      children: List.generate(
        data.length,
        (index) {
          Post post = data[index];
          return Container(
            margin: EdgeInsets.symmetric(vertical: 5),
            padding: EdgeInsets.all(5),
            decoration: BoxDecoration(
                color: Colors.grey[200],
                borderRadius: BorderRadius.circular(10)),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                ClipRRect(
                  child: Image.asset(
                    post.image,
                    width: 100,
                    height: 100,
                    fit: BoxFit.cover,
                  ),
                  borderRadius: BorderRadius.circular(10),
                ),
                Expanded(
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Container(
                          child: Text(
                            post.title
                          ),
                        ),
                        SizedBox(height: 5,),
                        Text(
                          getTruncatedTitle( post.secondTitle,30),
                          style: TextStyle(
                              fontSize: 13, color: Colors.grey[700]),
                        ),
                        SizedBox(height: 2,),
                        Text(
                          getTruncatedTitle(post.thirdTitle, 60),
                          style: TextStyle(
                              fontSize: 13, color: Colors.grey[700]),
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: [
                           Text( post.endText)
                          ],
                        )
                      ],
                    ),
                  ),
                ),
              ],
            ),
          );
        },
      ),
    );
  }

  String getTruncatedTitle(String actualString, int maxLetters) {
    return actualString.length > maxLetters
        ? actualString.substring(0, maxLetters) + "..."
        : actualString;
  }
}
