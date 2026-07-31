  void main() 
{
    
    
    
    
    //Listas o arrays
    // Empiezan en la posicion 0
    
   // List<dynamic> numeros=[1,2,3,4,5, "Juan",true,10.2];  Esto es una lista de tipo dinamica
    
    
    List <int> numeros=[1,2,3,4,5]; // lista de tipo entero
    
    print(numeros);
// Añado un elemento a la lista
    numeros.add(6);
    
    print(numeros);
    
    
    // Que error detectó??
   // print(numeros[6); acceder por indice
    
    
    final masNumero = List.generate(100,(int index) => index);
    print(masNumero);
    
    
   List <String> frutas=[ "Manzana","pera"];
    print(frutas);
    
    frutas.remove("Pera"); // elimina un elemento de la lista
    
    print(frutas);
    
    
    // Recorrer una lista
    
    for(int i=0;i < frutas.length ; i++)
    {
      
      
      print(frutas[i]);
    }
    
    print(frutas.length); // obtener el tamaño de una lista
    
    
    
}
