import 'package:flutter/material.dart';
import 'details_screen.dart';
import 'dart:async';

class SplashScreen extends StatefulWidget {
  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    Timer(
        Duration(seconds: 2),
        () => Navigator.of(context).pushReplacement(MaterialPageRoute(
            builder: (BuildContext context) => DetailsScreen())));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Center(
        child: Text(
          'Match Cards',
          style: TextStyle(
            fontFamily: 'Oswald',
            fontWeight: FontWeight.w900,
            fontSize: 50.0,
            color: Colors.yellow,
          ),
        ),
      ),
    );
  }
}
