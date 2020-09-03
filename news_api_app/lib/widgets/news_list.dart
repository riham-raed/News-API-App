import 'package:flutter/material.dart';

class NewsList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 465,
      child: ListView.builder(
        itemBuilder: (context, index) => buildNewsCard(),
      ),
    );
  }

  Card buildNewsCard() {
    return Card(
      color: Colors.grey[100],
      child: ListTile(
        leading: FlutterLogo(
          size: 80,
        ),
        title: Text('Headline'),
        subtitle: Text('3 hours ago'),
        trailing: Icon(Icons.more_horiz),
        isThreeLine: true,
      ),
    );
  }
}
