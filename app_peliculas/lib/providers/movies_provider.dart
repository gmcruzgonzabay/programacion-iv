
import 'dart:convert';
import 'package:app_peliculas/models/movie.dart';
import 'package:app_peliculas/models/movie_model.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

class MoviesProvider extends ChangeNotifier {

  String _apiKey='5bd32ef97e1568a8582ee4c212d5c25c';
  String _baseUrl='api.themoviedb.org';
  String _language='es-ES';

  List<Movie> onDisplayMovie =[];


  MoviesProvider()
  {
    debugPrint('Movies Provider Inicializado');
    getOnDisplayMovies();
  }


  Future<void> getOnDisplayMovies() async 
  {
    debugPrint('getOnDisplayMovies');
    var url=Uri.https(_baseUrl,'3/movie/now_playing',
    {
      'api_key': _apiKey,
      'language':_language,
      'page': '1'

    });


    final response = await  http.get(url);
    //final Map<String, dynamic> decodeData=json.decode(response.body);
    //debugPrint(decodeData['dates']['maximum']);
    final nowPlayingResponse= NowPlayingResponse.fromRawJson(response.body);
  //debugPrint(nowPlayingResponse.results?[2].title);
    onDisplayMovie=nowPlayingResponse.results!;
    notifyListeners();

  } // Fin OnDisplayMovie


  Future<void> getPopularMovies() async
  {

     debugPrint('getOnDisplayMovies');
    var url=Uri.https(_baseUrl,'3/movie/now_playing',
    {
      'api_key': _apiKey,
      'language':_language,
      'page': '1'

    });


    final response = await  http.get(url);
    //final Map<String, dynamic> decodeData=json.decode(response.body);
    //debugPrint(decodeData['dates']['maximum']);
    final nowPlayingResponse= PopularResponse.fromRawJson(response.body);
  //debugPrint(nowPlayingResponse.results?[2].title);
    onDisplayMovie=nowPlayingResponse.results!;
    notifyListeners();


  }// Fin getPopularMovies



}