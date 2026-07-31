√  void main() 
{
  
    String nombre= ' Gregorio';
    String? apellido= null;
    int? edad;
    
    print( nombre);
   
    print(apellido ?? "Sin Apellido");
    
    print("Edad: ${edad ?? 18 }");
    
    if(apellido == null)
    {
      print("Usuario sin apellido");
    }

}
