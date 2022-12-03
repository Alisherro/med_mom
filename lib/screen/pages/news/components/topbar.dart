import 'package:flutter/material.dart';

import 'searchbar.dart';

class TopBar extends StatelessWidget {
  const TopBar({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        const Expanded(flex: 6, child: SearchBar()),
        const SizedBox(
          width: 10,
        ),
        Container(
          child: const Icon(Icons.menu, size: 30),
        )
      ],
    );
  }
}
