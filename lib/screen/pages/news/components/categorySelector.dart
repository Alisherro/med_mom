import 'package:flutter/material.dart';

import '../constants/values.dart';
import '../models/category.dart';

class CategorySelector extends StatefulWidget {
  const CategorySelector({Key? key}) : super(key: key);

  @override
  _CategorySelectorState createState() => _CategorySelectorState();
}

class _CategorySelectorState extends State<CategorySelector> {
  List<Category> categories = StaticValues().categories;
  int selectedCategoryIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(left: 10),
      child: SingleChildScrollView(
        scrollDirection: Axis.horizontal,
        child: Row(
            children: List.generate(categories.length, (index) {
          Category category = categories[index];
          bool isSelected = index == selectedCategoryIndex;
          return GestureDetector(
            onTap: () {
              setState(() {
                selectedCategoryIndex = index;
              });
            },
            child: AnimatedContainer(
              duration: const Duration(milliseconds: 150),
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: isSelected ? Colors.blue[200] : Colors.white),
              padding: const EdgeInsets.symmetric(vertical: 5, horizontal: 15),
              margin: const EdgeInsets.symmetric(horizontal: 2),
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text(
                  category.name,
                  style: TextStyle(
                      fontSize: 15,
                      color: isSelected ? Colors.white : Colors.blue[300]),
                ),
              ),
            ),
          );
        })),
      ),
    );
  }
}
