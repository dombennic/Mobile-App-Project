import 'package:flutter/material.dart';
import 'drawer.dart';
import 'home.dart';
import 'profile.dart';
import 'setting.dart';
import 'login.dart';



void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  // This widget is the root of your application.
  @override
 _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  String title ='Home';

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home:Scaffold(
        appBar:AppBar(
          title:Text(title),
          ),
          body: Home(),
          drawer: MyDrawer(),
          ),
    );
  }
}