import 'package:flutter/material.dart';

class HighlightNewsList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 200,
      width: double.infinity,
      color: Colors.black45,
      child: GridTile(
        // header: Text('header'),
        footer: Text('Headline is here'),
        child: FlutterLogo(),
      ),
    );
  }
}
