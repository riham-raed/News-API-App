import 'package:flutter/material.dart';

class Filters extends StatefulWidget {
  @override
  _FiltersState createState() => _FiltersState();
}

class _FiltersState extends State<Filters> {
  final List<String> categories = [
    'All',
    'Politics',
    'Sports',
    'Climate',
    'Science',
    'Space',
    'Health',
    'Middle East'
  ];
  int selectedIndex = 0;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 35,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: categories.length,
        itemBuilder: (context, index) => buildCategoryItem(index),
      ),
    );
  }

  Widget buildCategoryItem(int index) {
    return GestureDetector(
      onTap: () {
        setState(() {
          selectedIndex = index;
        });
      },
      child: Container(
        padding: EdgeInsets.symmetric(horizontal: 10),
        alignment: Alignment.center,
        margin: EdgeInsets.only(left: 10),
        decoration: BoxDecoration(
          color: selectedIndex == index ? Colors.amber : Colors.transparent,
        ),
        child: Text(categories[index]),
      ),
    );
  }
}
