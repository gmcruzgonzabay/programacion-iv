//Crear la clase
class Estudiante {
  //Atributos
  String? nombre;
  int? edad;
  bool? activo;
  //Inicializar atributos

  //Envio los datos
  // Estudiante(this.nombre, this.edad, this.activo);

  //Puedo ver los atributos
  //Constructor
//   Estudiante( 
//     this.nombre=nombre, 
//     this.edad=0,
//     this.activo);
  
  

  //Constructor con datos inicializados
  Estudiante([String nombre="Carlos", int? edad=0, bool? activo=true]){
    this.nombre=nombre;
    this.edad= edad;
    this.activo=activo;
  }
  
  
  

  //Usando el metodo toString que permite convertir en texto
  String toString() {
    return "Nombre ${this.nombre} , edad: ${this.edad}, estado: ${this.activo}";
  }
}

void main() {
  //final estudiante= new Estudiante("Gregorio",20,true);

 // final estudiante = new Estudiante(nombre: " Jose");
  final estudiante = new Estudiante();

  print(estudiante);
}
