import 'package:flutter/material.dart';
import 'package:android_example/page/my_home_page.dart';
import 'package:android_example/page/second_screen.dart';

void main() {
  runApp(MaterialApp(
    initialRoute: '/',
    routes: {'/': (BuildContext context) => MyHomePage()}
  ));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: MyHomePage(),
    );
  }
}