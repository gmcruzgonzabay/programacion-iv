void saludar() {
  print("Hola desde Dart");
}

void main() {
  //FUNCIONES NOS PERMITEN ORGANIZAR CODIGO
  //REUTILIZAR CODIGO( EVITA REPITIR CODIGO, ORDENAR LA LOGICA
  //HACER EL PROGRAMA MAS LEGIBLE

  saludar();

  saludarUsuario("Carlos"); // De funciones con argumentos

  int resultado = sumar(5, 3);

  print(resultado);

  print(obtenerDato()); // llamo a funcion dinamica

  int respuesta = 0;

  //  suma(2,"1" );
  // respuesta()

  mostrarInfo('JUan Perez'); // con parametro opcional

  mostrarInfo('JUan Perez', 25); // COn parametro opcional 
  
  mostrarPerfil(nombre: "Danilo", edad: 30 ); // Me permite una mejor visualizacion o envio de datos
  
  
  print(multiplicar(4,2));
  
  
} // fin main

void saludarUsuario(String nombre) {
  print("Hola $nombre");
  // un void no retorna nada
}

int sumar(int a, int b) {
  // Con tipo de dato, retorna un valor
  return a + b;
}

//Funcion dinamica
dynamic obtenerDato() {
  return "Hola desde Dynamic";
}




//dynamic suma(int a, int? b)
//{
// return a+b;
//}

//FUNCIONES CON PARAMETROS OPCIONALES

void mostrarInfo(String nombre, [int? edad]) {
  if (edad != null)
  {
    print("Nombre: $nombre, Edad: $edad");
  } else {
    print("Nombre: $nombre");
  }
}


// PARAMATROS NOMBRADOS


void mostrarPerfil({ required String nombre, int edad=0})
{
   print("Nombre: $nombre, Edad: $edad");
  
  
}

//Funciones de Flecha
// Se utiliza cuando la funcion solo tiene una linea de codigo
int multiplicar(int a, int b) => a+b;






