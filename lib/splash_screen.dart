import 'dart:async';

import 'package:disaster_management_app_final/main.dart';
import 'package:flutter/material.dart';

void main(){
  runApp(splashScreen());
}

class splashScreen extends StatefulWidget {
  const splashScreen({super.key});

  @override
  State<splashScreen> createState() => _splashScreenState();
}

class _splashScreenState extends State<splashScreen> {

  void initState(){
    super.initState();

    Timer(Duration(seconds: 3) , () {
      Navigator.pushReplacement(
          context , MaterialPageRoute(
          builder: (context) => FirstPage()
        )
      );
  });
}
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child:Center(child: Image.asset('images/Saviour.png')),

      )
    );
  }
}

