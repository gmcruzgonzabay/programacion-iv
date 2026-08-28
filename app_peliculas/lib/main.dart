import 'package:app_peliculas/screens/details_screen.dart';
import 'package:app_peliculas/screens/home_screen.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Peliculas App',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      initialRoute: 'home',
      routes:{
        'home': (_)=>HomeScreen(),
        'detail': (_)=>DetailScreen()
      }
    );
  }
}