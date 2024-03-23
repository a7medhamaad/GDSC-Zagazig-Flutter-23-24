import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home:  Scaffold(
        appBar: AppBar(
           title: Text(
            "YouTube",
            style: TextStyle(color: Colors.white ,fontSize: 25),
            ),
          backgroundColor: Colors.black,
          leading: Icon(
            Icons.play_circle_fill, // Using a generic play icon
             size: 55,
            color: Color.fromARGB(255, 159, 15, 5), // Red color for the icon
          ),

          actions:const [
            Icon(Icons.cast_connected),
            SizedBox(width: 18),
              Icon(Icons.notification_add),
              SizedBox(width: 18),
              Icon(Icons.search),
              
              
          ],
        ),
      ),
    );
  }
}


//1. YouTube Appbar :
 //Write a flutter code to make a screen containing the     //youtube appbar