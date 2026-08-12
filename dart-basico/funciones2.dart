
void main() {

  List<String> materias= ["Programacion","Base de datos","Redes"];
  
  Map <String, dynamic> estudiante ={
    'nombre': 'Andrea',
    'edad:': 20,
    'estado': true
    
  };
  
  
  //Mostrar el mapa con una funcion
  //
  
  
  mostrarMaterias(materias);
  
  
  

}


//Funciones y Listas

void mostrarMaterias(List<String> materias)
{
  for( var materia in materias){
    print(materia);
  }
  
}



