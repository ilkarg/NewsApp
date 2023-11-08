import 'package:android_example/model/news_model.dart';
import 'package:flutter/material.dart';

class SecondScreen extends StatelessWidget {
  final News data;

  const SecondScreen({required this.data});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Второе окно')
      ),
      body: Center(
        child: TextButton(
          onPressed: (){ Navigator.pop(context); }, 
          child: Text('Назад')
        )
      ),
    );
  }
}