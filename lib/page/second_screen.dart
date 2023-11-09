import 'package:android_example/model/news_model.dart';
import 'package:flutter/material.dart';

class SecondScreen extends StatelessWidget {
  final News data;

  const SecondScreen({required this.data});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(data.title)
      ),
      body: SafeArea(
        child: Center(
          child: Column(
            children: [
              Text(data.body.replaceAll("/n", "\n"))
            ]
          )
        )
      ),
    );
  }
}