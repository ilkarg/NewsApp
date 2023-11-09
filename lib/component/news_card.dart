import 'package:android_example/model/news_model.dart';
import 'package:flutter/material.dart';

class NewsCard extends StatelessWidget {
  final News data;
  NewsCard({required this.data});

  @override
  Widget build(BuildContext context) {
    return Card(
      child: ListTile(
        title: Text(data.title),
        subtitle: Text(data.description),
      ),
    );
  }
}