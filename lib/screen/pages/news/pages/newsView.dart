import 'package:flutter/material.dart';

import '../models/news.dart';

class NewsViewPage extends StatelessWidget {
  final News newsPost;

  const NewsViewPage({Key? key, required this.newsPost}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: Colors.black,
      body: Container(
        width: size.width,
        child: Stack(
          alignment: Alignment.topLeft,
          children: [
            Opacity(
              opacity: 0.4,
              child: ClipRRect(
                child: Image(
                  fit: BoxFit.cover,
                  image: AssetImage(newsPost.image),
                  height: size.height,
                  width: size.width,
                ),
              ),
            ),
            Container(
              width: size.width,
              height: size.height,
              decoration: const BoxDecoration(
                gradient: LinearGradient(
                  begin: Alignment.topCenter,
                  end: Alignment.bottomCenter,
                  colors: [
                    // const Color(0xCC000000),
                    Color(0x00000000),
                    Color(0x00000000),
                    Color(0xCC000000),
                  ],
                ),
              ),
            ),
            ListView(
              children: [
                SizedBox(
                  height: size.height / 3,
                ),
                Padding(
                  padding: const EdgeInsets.all(16),
                  child: Container(
                    width: size.width,
                    child: Column(
                      children: [
                        Text(
                          newsPost.title,
                          style: const TextStyle(
                            color: Colors.white,
                            fontSize: 19,
                          ),
                        ),
                        SizedBox(
                          height: 5.0,
                        ),
                        Row(
                          children: [
                            Container(
                              width: 30,
                              height: 30,
                              decoration: BoxDecoration(
                                shape: BoxShape.circle,
                                image: DecorationImage(
                                  image: NetworkImage(newsPost.sourceImage),
                                ),
                              ),
                            ),
                            Expanded(
                              child: Container(
                                margin: const EdgeInsets.only(
                                  left: 10,
                                ),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  children: [
                                    Text(
                                      newsPost.source,
                                      style: const TextStyle(
                                          color: Colors.white,
                                          fontWeight: FontWeight.bold),
                                    ),
                                    Text(
                                      newsPost.time,
                                      style: TextStyle(color: Colors.grey[400]),
                                    )
                                  ],
                                ),
                              ),
                            ),
                            Container(
                              child: Row(
                                children: [
                                  const Icon(
                                    Icons.bookmark_outlined,
                                    color: Colors.white,
                                    size: 30,
                                  ),
                                  const Icon(
                                    Icons.share,
                                    color: Colors.white,
                                    size: 30,
                                  ),
                                ],
                              ),
                            )
                          ],
                        ),
                        Container(
                          margin: const EdgeInsets.only(top: 10),
                          height: 3,
                          decoration: const BoxDecoration(color: Colors.white),
                        ),
                        Container(
                          margin: const EdgeInsets.only(top: 10),
                          child: Text(newsPost.descrption,
                              style: const TextStyle(
                                color: Colors.white,
                              )),
                        )
                      ],
                    ),
                  ),
                )
              ],
            ),
            SafeArea(
              child: Align(
                alignment: Alignment.topLeft,
                child: GestureDetector(
                  onTap: () {
                    Navigator.pop(context);
                  },
                  child: Container(
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(10)),
                    padding: const EdgeInsets.all(5),
                    margin: const EdgeInsets.only(top: 30, left: 10),
                    child: const Icon(
                      Icons.arrow_back,
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
