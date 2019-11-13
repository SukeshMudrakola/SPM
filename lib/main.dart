import 'package:flutter/material.dart';
import './ui/Home.dart';
import 'package:animated_splash/animated_splash.dart';


void main() {
  runApp(new MaterialApp(
    title: "WeCARE",
    home:  AnimatedSplash(
      imagePath: 'assets/Log2.png',
      home: Home(),
      duration: 2500,
      type: AnimatedSplashType.StaticDuration,
    ),


    routes: <String , WidgetBuilder>{
      "/SecondPage": (BuildContext context) => new SecondPage(),
      "/AdminPage": (BuildContext context) => new AdminPage(),
      "/HomePage": (BuildContext context) => new Home(),
  //    "/": (BuildContext context) => new MainPage(),

    }
  ));
}

