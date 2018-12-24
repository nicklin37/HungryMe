import 'package:flutter/material.dart';
import './src/grocerylist.dart';
import './src/inventory.dart';
import './src/cook.dart';

void main(){
  runApp(MyApp());
}

class MyApp extends StatelessWidget{
  @override
  Widget build(BuildContext context){
    return MaterialApp(
      home: MyHome()
    );
  }
}

class MyHome extends StatelessWidget{
  @override
  Widget build(BuildContext context){

    RaisedButton buildPages(String name, String imagePath){
      return RaisedButton(
        padding: const EdgeInsets.all(10.0),
        // decoration: BoxDecoration(
        //   border: Border.all(
        //     color: Colors.black,
        //     width: 2.0,
        //   ),
        //   borderRadius: new BorderRadius.circular(20.0),
        // ),

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
        onPressed: () {
          switch(name){
            case "My Grocery List":
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => GroceryList())
              );
              break;
            case "Inventory":
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => Inventory())
              );
              break;
            case "Cook":
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => Cook())
              );
              break;
          }
          
        }
      );
    }

    return Container(
      child: ListView(
        children: [
          buildPages("My Grocery List", 'images/groceries.jpg'),
          buildPages("Inventory", 'images/fridge.jpeg'),
          buildPages("Cook", 'images/cooking.jpg'),
        ],
      ),
    );
  }
}