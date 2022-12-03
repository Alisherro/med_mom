import 'package:flutter/cupertino.dart';

class Post {
  String title;
  String secondTitle;
  String thirdTitle;
  String image;
  String endText;
  Widget widget;

  Post(this.image, this.title, this.secondTitle, this.thirdTitle, this.endText,
      this.widget);
}
