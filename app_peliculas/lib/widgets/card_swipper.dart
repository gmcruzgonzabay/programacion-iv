import 'package:card_swiper/card_swiper.dart';
import 'package:flutter/material.dart';

class CardSwipper extends StatelessWidget {
  const CardSwipper({super.key});


  @override
  Widget build(BuildContext context) {
  final size= MediaQuery.of(context).size;
   debugPrint(" total ${size}");


 debugPrint(" alto ${size.height*0.3}");
    return Container(

      width: double.infinity,
      height: 500,
      color: Colors.amber,
      
      child: Swiper(itemCount: 10,
      layout: SwiperLayout.STACK,
     
      itemHeight: size.height*0.3,
      itemWidth: size.width*0.9,
      itemBuilder: (_,int index){

        return FadeInImage(placeholder: NetworkImage('https://picsum.photos/300/300'), image: NetworkImage('https://picsum.photos/300/300'));
      },
      ),
    );
  }
}