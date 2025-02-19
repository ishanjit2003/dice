import 'package:flutter/material.dart';
import 'package:untitled3/gradient.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: Center(child: Text('Dice',style: TextStyle(fontWeight: FontWeight.bold),)),
          backgroundColor: Colors.white24,
        ),
        body: GradientContainer(Colors.white,Colors.amberAccent),
      ),
    );
  }
}
