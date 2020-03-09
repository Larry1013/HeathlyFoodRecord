import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class CreateMeal extends StatefulWidget{
  @override
  _CreateMealStates createState() => _CreateMealStates();
}

class _CreateMealStates extends State<CreateMeal> {
    @override 
    Widget build(BuildContext context) {
      return Scaffold(
        appBar: AppBar(
          title: Text('新增餐點營養'),
        ),
        body: Column(
          children: <Widget>[
            CreateOneMealWidget(),
            Padding(
              padding: const EdgeInsets.only(top: 32),
              child: Container(
                alignment: Alignment.center,
                child: IconButton(
                  icon: Icon(Icons.add),
                  onPressed: () {
                    print('save');
                    Navigator.pop(context);
                  },
                ),
              ),
            )
          ],
        )
      );
    }
}
class CreateOneMealWidget extends StatefulWidget {
  @override
  _CreateOneMealWidgetState createState() => _CreateOneMealWidgetState();
}

class _CreateOneMealWidgetState extends State<CreateOneMealWidget> {
  int proteinCount = 0;
  int waterCount = 0;
  int fatCount = 0;
  int carbohydrateCount = 0;
  int fruitCount = 0;
  int vegCount = 0;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        FlatButton(child: 
        Text('蛋白質${proteinCount}份'), onPressed: () { 
          setState(() {
            proteinCount+=1;
          });
        },),
        FlatButton(child: 
        Text('水${waterCount}份'), onPressed: () { 
          setState(() {
            waterCount+=1;
          });
        },),
        FlatButton(child: 
        Text('脂肪${fatCount}份'), onPressed: () { 
          setState(() {
            fatCount+=1;
          });
        },),
        FlatButton(child: 
        Text('碳水化合物${carbohydrateCount}份'), onPressed: () { 
          setState(() {
            carbohydrateCount+=1;
          });
        },),
        FlatButton(child: 
        Text('蔬菜${vegCount}份'), onPressed: () { 
          setState(() {
            vegCount+=1;
          });
        },),
        FlatButton(child: 
        Text('水果${fruitCount}份'), onPressed: () { 
         setState(() {
            fruitCount+=1;
          });
        },),
      ],
    );
  }
}