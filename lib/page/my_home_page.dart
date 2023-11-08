import 'package:android_example/page/second_screen.dart';
import 'package:flutter/material.dart';
import 'package:android_example/component/news_card.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';
import 'package:android_example/model/news_model.dart';

class MyHomePage extends StatelessWidget {
  Future<List<News>> fetchData() async {
    final response = await http.get(
      Uri.parse('http://192.168.100.10:8000/news/load_all_news/'), 
      headers: {"Accept": "application/json;charset=UTF-8"}
    );

    if (response.statusCode == 200) {
      List<dynamic> data = json.decode(utf8.decode(response.bodyBytes));
      List<News> myDataList = List<News>.from(data.map((news) => News.fromJson(news)));
      return myDataList;
    } else {
      return [];
    }
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: FutureBuilder(
        future: fetchData(), 
        builder: (BuildContext context, AsyncSnapshot snapshot) {
          if (snapshot.connectionState == ConnectionState.waiting) {
            return CircularProgressIndicator();
          } else if (snapshot.hasError) {
            return Text('Ошибка: ${snapshot.error}');
          } else {
            List<News> data = snapshot.data;
         
            List<Widget> components = [];
            for (News item in data) {
              components.add(
                GestureDetector(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => SecondScreen(data: item),
                      ),
                    );
                  },
                  child: NewsCard(data: item),
                ),
              );
            }

            return Column(
              children: components,
            );
          }
        }
      )
    );
  }
}