import 'package:flutter/material.dart';
import 'package:heathlyfoodrecord/createMeal.dart';

import 'nutrient.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: '均衡飲食',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(title: '均衡飲食'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);
  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  void getDailyMealDetail() {
    setState(() {
      Nutrient fakeNutrient = Nutrient(fruit: 1, fat: 2, carbohydrate: 3, water: 4, protein: 5);
      print(fakeNutrient.protein);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              '今日還沒有任何飲食記錄唷 :)',
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.push(
            context, 
          MaterialPageRoute(
            builder: (context) => CreateMeal())
          );
        },
        tooltip: 'Increment',
        child: Icon(Icons.fastfood),
      ),
    );
  }
}
