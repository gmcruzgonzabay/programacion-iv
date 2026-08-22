import 'package:flutter/material.dart';

class ImageScreen extends StatelessWidget {
   
const ImageScreen({super.key});
  
  @override
  Widget build(BuildContext context) {
    final size= MediaQuery.of(context).size;
              debugPrint(" Ancho: ${size.width}");
              debugPrint("Alto: ${size.height}");


    return  Scaffold(
      appBar: AppBar(title: Text('Imagenes'),),
      body: SingleChildScrollView(
        child: Column(

        
          children: [
            SizedBox(height: 50,),
        
              FadeInImage(placeholder: AssetImage('assets/gif/jar-loading.gif'), 
              
              image: NetworkImage('https://picsum.photos/500/250'), 
             //width: double.infinity, obtengo todo el ancho de la pantalla
             width: size.width >600 ? 500 : double.infinity,
              height: 400,
              fit: BoxFit.fitHeight,
              
              ),
        
               SizedBox(height: 50,),
        
              ClipRRect(
                borderRadius: BorderRadiusGeometry.circular(40),
                
                child: Image.asset('assets/fondos/fondo.jpeg', width: 300, fit: BoxFit.cover,)
                
                
                ),
        
              SizedBox(height: 10,),
        
               Image.asset('assets/fondos/fondo.jpeg'),
        

              Image.network("https://picsum.photos/500/250",
               width: double.infinity, height: 200,fit: BoxFit.cover, ),

              Image.network("https://picsum.photos/500/250",
               width: double.infinity, height: 200,fit: BoxFit.cover, ),
          SizedBox(height: 20,),
          
          Container(
            width: 30,

            height: 30,
            color: Colors.amber,
          ),


              Container(
                decoration: BoxDecoration(
                  border: Border.all(
                      color: Colors.amber,
                      width: 5

                  ),
                  boxShadow: [

                    BoxShadow(color: Colors.red,
                    blurRadius: 20,
                    offset: Offset(5, 5 )
                    
                    
                    )
                  ]
                ),

                
                child: Image.network("https://picsum.photos/500/250",
                 width: double.infinity, height: 200,fit: BoxFit.cover, ),
              )
        
          ],
        ),
      )
    );
  }
}