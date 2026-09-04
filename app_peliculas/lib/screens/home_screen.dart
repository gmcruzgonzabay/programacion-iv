import 'package:app_peliculas/providers/movies_provider.dart';
import 'package:app_peliculas/widgets/card_swipper.dart';
import 'package:app_peliculas/widgets/movie_slider.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class HomeScreen extends StatelessWidget {
   
const HomeScreen({super.key});
  
  @override
  Widget build(BuildContext context) {
    final moviesProvider= Provider.of<MoviesProvider>(context);
    debugPrint(moviesProvider.onDisplayMovie.toString());

    return  Scaffold(
      appBar: AppBar(title: Text('Peliculas en Cine'),
      elevation: 10,
      actions: [

        IconButton(onPressed: (){}, icon: Icon(Icons.search_off_outlined))
      ],
      
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            CardSwipper(movies: moviesProvider.onDisplayMovie ,),
            MovieSlider(), 
    
          ],
        ),
      ),
    );
  }
}