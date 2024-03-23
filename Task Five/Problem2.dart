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
           title: Text("circel container"),
          backgroundColor: Colors.white,
          centerTitle: true,

        ),
        body: Center(
          child:Container(
            width: 300,
            height: 300,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(150),
              border: Border.all(color: Colors.black, width: 10),
              boxShadow: [
                BoxShadow(
                
                  blurRadius: 10,
                  blurStyle: BlurStyle.solid,
                )
              ]

            ) ,
          )
          ),
        
      ),
    );
  }
}


//2. Circler container
//Write a flutter code to create a circle using Container with //a 
//BoxDecoration make it with a solid border of colour black, //and a 
//shadow with a blur radius of 10 pixels.