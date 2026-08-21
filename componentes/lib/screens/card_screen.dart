import 'package:flutter/material.dart';

class CardScreen extends StatelessWidget {
   
const CardScreen({super.key});
  
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar(title: Text('Cards')),
      body: ListView(

        padding: EdgeInsets.all(20),
      
        children: [
     
      
          Card(

            shape: RoundedRectangleBorder(borderRadius: BorderRadiusGeometry.circular(30)),
            clipBehavior: Clip.antiAlias,
            color: Colors.blue.shade100,
            margin: EdgeInsets.all(10),
            shadowColor: Colors.green,
            elevation: 10,

            child: Padding(
              padding: EdgeInsetsGeometry.all(20),
              child: Column(
                    
                children: [
                    
                ListTile(
                    
                  title: Text("Soy un titulo"),
                  leading: Icon(Icons.phonelink_ring_rounded, color: Colors.red,),
                  subtitle: Text( 'LoreAdipisicing incididunt ut consectetur tempor ea laborum. Adipisicing incididunt irure culpa ullamco nostrud. In cupidatat cupidatat esse elit qui.'),
                
                ),  

                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,

                    children: [
                      ElevatedButton(onPressed: (){}, child: Text('Aceptar')),
                      SizedBox(width: 20,),
                        ElevatedButton(onPressed: (){}, child: Text('Cancelar'))
                    ],
                  ),
                  

                ],
              ),
            ),
          ),

          SizedBox(height: 30,),
       
        Card(
            child: Column(
      
              children: [
      
              ListTile(
      
                title: Text("Soy un titulo"),
                leading: Icon(Icons.phonelink_ring_rounded, color: Colors.red,),
                subtitle: Text( 'LoreAdipisicing incididunt ut consectetur tempor ea laborum. Adipisicing incididunt irure culpa ullamco nostrud. In cupidatat cupidatat esse elit qui.'),
              
              ),

              Image.network("https://picsum.photos/500/250", width: double.infinity, height: 200, fit: BoxFit.cover,)



              ],
            ),
          ),

           SizedBox(height: 30,),
           Card(
            child: Column(
      
              children: [
      
              ListTile(
      
                title: Text("Soy un titulo"),
                leading: Icon(Icons.phonelink_ring_rounded, color: Colors.red,),
                subtitle: Text( 'LoreAdipisicing incididunt ut consectetur tempor ea laborum. Adipisicing incididunt irure culpa ullamco nostrud. In cupidatat cupidatat esse elit qui.'),
              
              )
              ],
            ),
          )
       
       
       
       
       
        ],
      )
    );
  }
}