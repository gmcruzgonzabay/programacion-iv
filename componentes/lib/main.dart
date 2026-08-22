import 'package:componentes/screens/home_screen.dart';
import 'package:componentes/screens/card_screen.dart';
import 'package:componentes/screens/images_screen.dart';
import 'package:flutter/material.dart';
import 'screens/list_view.dart';


void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'App Componentes',
     // themeMode: ThemeData().primaryColorLight(),

      theme: ThemeData.light().copyWith(
          primaryColor: Colors.cyan,
          appBarTheme: AppBarTheme(backgroundColor: Colors.indigo,
          foregroundColor: Colors.white,
          elevation: 8,)


      ),

    
      initialRoute:'imagescreen' ,
     // home: ListViewScreen(),
      routes: {
            '/': (context)=>HomeScreen(),
            'lisviewscreen': (context)=> ListViewScreen(),
            'cardscreen': (context)=> CardScreen(), 
            'imagescreen':(context) =>ImageScreen()
      },
     
    );
  }
}