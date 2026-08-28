import 'package:flutter/material.dart';

class DetailScreen extends StatelessWidget {
   
const DetailScreen({super.key});
  
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar(title: Text('Detalle de Pelicula'),elevation: 10,),
      body: Center(
         child: Text('DetailScreen'),
      ),
    );
  }
}