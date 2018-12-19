import 'package:flutter/material.dart';

void main(){
  runApp(MyApp());
}

class MyApp extends StatelessWidget{
  @override
  Widget build(BuildContext context){

    Container buildPages(String name, String imagePath){
      return Container(
        margin: const EdgeInsets.all(10.0),
        decoration: BoxDecoration(
          border: Border.all(
            color: Colors.black,
            width: 2.0,
          ),
          borderRadius: new BorderRadius.circular(20.0),
        ),
        child: Column(
          children: <Widget>[
            Container(
              child: Text(
                name,
                style: new TextStyle(
                  fontSize: 20.0,
                ),
              ),
    
              height: 30.0,
            ),
            Image.asset(
              imagePath,
              height: 200.0,
              fit: BoxFit.cover,
            ),
          ],
        ),
      );
    }

    return MaterialApp(
      title: 'Hungry Me',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: Scaffold(
        appBar: AppBar(title: Text('Hungry Me'),
        ),
        body: ListView(
          children: [
            buildPages("Groceries", 'images/groceries.jpg'),
            buildPages("Inventory", 'images/fridge.jpeg'),
            buildPages("Cook", 'images/cooking.jpg'),
          ],
        ),
      ),
    );
  }
}