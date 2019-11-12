import 'package:flutter/material.dart';
import './ui/Home.dart';


void main() {
  runApp(new MaterialApp(
    title: "WeCARE",
    home: new Home(),
    routes: <String , WidgetBuilder>{
      "/SecondPage": (BuildContext context) => new SecondPage()
    }
  ));
}
