  void main() 
{
    
    //Mapas, diccionarios, key value
    
    // Es una buena practica dejar el tipo de datos de los mapas
    Map <dynamic, dynamic>  persona={
      
      'nombre': 'Jose',
      'apellido': 'Perez',
      'activo': true,
      true: false,
      1: 10000,
      0.4: 200
    };
    print(persona);
    
    print("Acceder al key");
    print(persona['apellido']);
    
    
 
    // Las variables se declaran usando camelCase(variables, funciones y metodos)
    
    
    //Donde no se usa el camelCase : en clases, en archivos

    
    String nombreCompleto;
    
    
    Map<String, dynamic> estudiante={
      "nombre": "Ana",
      "edad": 20,
      "carrera": "Sistemas inteligentes",
      "promedio": 8.5
      
    };
    
    print("============Informacion inicial===============");
    print(estudiante);
    
    //Cambiar el promedio
    estudiante["promedio"]= 9.2;
    
    //Agregar una llave o key
    
    estudiante["ciudad"]="Guayaquil";
    
    print("============Informacion actualizada===============");
    
    estudiante.forEach((clave,valor){
      print("$clave : $valor");
    });
    
    
    
    
    
    
    
    
    
    
}
