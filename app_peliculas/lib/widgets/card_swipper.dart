import 'package:app_peliculas/models/movie.dart';
import 'package:card_swiper/card_swiper.dart';
import 'package:flutter/material.dart';

class CardSwipper extends StatelessWidget {
  final List<Movie> movies;


  const CardSwipper({super.key, required this.movies});


  @override
  Widget build(BuildContext context) {
  final size= MediaQuery.of(context).size;

   //debugPrint(" total ${size}");


 //debugPrint(" alto ${size.height*0.3}");
    return SizedBox(

      width: double.infinity,
      height: 500,
      
      
      child: Swiper(
      itemCount: movies.length,
      layout: SwiperLayout.STACK,
     
      itemHeight: size.height*0.4,
      itemWidth: size.width*0.9,
      itemBuilder: (_,int index){

        final movie=movies[index];
        debugPrint(movie.posterPath);
        

        return GestureDetector(
              onTap: () =>  Navigator.pushNamed(context, 'detail',arguments: 'movie-instance'),

          child: ClipRRect(
            borderRadius: BorderRadiusGeometry.circular(20),
            child: FadeInImage(
              placeholder: AssetImage('assets/no-image.jpg'),
               image: NetworkImage(movie.fullPosterImage)),
          ),
        );
      },
      ),
    );
  }
}