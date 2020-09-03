import 'package:flutter/material.dart';

import '../widgets/filters.dart';
import '../widgets/news_list.dart';
import '../widgets/highlight_news_list.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: Text(
          'Latest News',
          style: TextStyle(
            color: Colors.black,
          ),
        ),
        backgroundColor: Colors.white,
        elevation: 0,
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Filters(),
            HighlightNewsList(),
            Text('Latest News'),
            NewsList(),
          ],
        ),
      ),
      bottomNavigationBar: buildBottomNavigationBar(),
    );
  }

  Widget buildBottomNavigationBar() {
    return Container(
      width: double.infinity,
      height: 80,
      color: Colors.amber,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Icon(Icons.home),
          Icon(Icons.search),
          Icon(Icons.bookmark),
          Icon(Icons.settings),
        ],
      ),
    );
  }
}
