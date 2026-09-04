import 'package:app_peliculas/models/movie.dart';
import 'package:flutter/material.dart';

class DetailScreen extends StatelessWidget {
   
const DetailScreen({super.key});
  
  @override
  Widget build(BuildContext context) {
    //final String movie = ModalRoute.of(context)?.settings.arguments.toString() ?? 'no-movie' ;
    
    final Movie movie=ModalRoute.of(context)!.settings.arguments as Movie; 

    return  Scaffold(
     
      body: CustomScrollView(
        slivers: [

_customSlider(movie: movie,)
        ],


      )



    );
  }
}


class _customSlider extends StatelessWidget {
  final Movie movie;

  const _customSlider({super.key, required this.movie});
 

  @override
  Widget build(BuildContext context) {
    return SliverAppBar(
        backgroundColor: Colors.indigo,
        expandedHeight: 200,
        floating: false,
        pinned:true, 
        flexibleSpace: FlexibleSpaceBar(

          centerTitle: true,
          title: Text(movie.title!),

          background: FadeInImage(placeholder: AssetImage('assets/loading.gif'), image:NetworkImage('https://picsum.photos/300/300')),

        ),





    );
  }
}