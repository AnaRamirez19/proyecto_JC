import 'package:flutter/material.dart';
import 'login.dart';
import 'dart:async';

void main() {
  runApp(
    MaterialApp(
      home: MyApp(),
    ),
  );
}

class MyApp extends StatefulWidget {
  
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  void initState() {
    super.initState();
    Future.delayed(
      Duration(seconds: 3),
      (){
        Navigator.push(
          context, 
          MaterialPageRoute(
            builder: (context) => Login(),
          ),
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.orange,
      body: Center(
        child: Column(
          children: <Widget>[
            Container(
            padding: const EdgeInsets.only(top: 100.0),
            child: Image.asset('assets/Logo.png', height: 200.0),
            ),
            Container(
            padding: const EdgeInsets.only(top: 0.0),
            child: Image.network('https://isteam.wsimg.com  /ip/47fd6c14-f49d-422d-b828-b48b2051662f/J%C3%B3venes%20creaTIvos%20(2)-0001.png/:/cr=t:0%25,l:0%25,w:100%25,h:100%25/rs=w:400,cg:true', height: 200.0),
            ),
          ],
        ),
      ),
      bottomNavigationBar: Image.asset('assets/logo_sofka.png', height: 70.0),
    );
  } 
}


