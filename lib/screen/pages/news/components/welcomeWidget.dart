import 'package:flutter/material.dart';

class WelcomeWidget extends StatelessWidget {
  const WelcomeWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: const [
          Text(
            "Добрый день",
            style: TextStyle(fontSize: 30, fontWeight: FontWeight.w400),
            
          ),
          Text("Иследуй мир за один клик!")
        ],
      ),
    );
  }
}
