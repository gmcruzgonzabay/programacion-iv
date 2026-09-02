import 'package:flutter/material.dart';

class DetailScreen extends StatelessWidget {
   
const DetailScreen({super.key});
  
  @override
  Widget build(BuildContext context) {
    final String movie = ModalRoute.of(context)?.settings.arguments.toString() ?? 'no-movie' ;
    return  Scaffold(
     
      body: CustomScrollView(
        slivers: [

_customSlider()
        ],


      )



    );
  }
}


class _customSlider extends StatelessWidget {
 

  @override
  Widget build(BuildContext context) {
    return SliverAppBar(
        backgroundColor: Colors.indigo,
        expandedHeight: 200,
        floating: false,
        pinned:true, 
        flexibleSpace: FlexibleSpaceBar(

          centerTitle: true,
          title: Text('Movie-title'),

          background: FadeInImage(placeholder: AssetImage('assets/loading.gif'), image:NetworkImage('https://picsum.photos/300/300')),

        ),





    );
  }
}