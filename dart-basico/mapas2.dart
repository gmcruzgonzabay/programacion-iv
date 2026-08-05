void main() {
  Map<String, dynamic> estudiante = {
    "nombre": "Calors",
    "edad": 21,
    "materia": {"nombre": "Programacion Movil", "nota": 9.1},
  };

  //Acceder a un mapa anidado
  print("Nombre: ${estudiante["nombre"]}");
  print("Edad: ${estudiante["edad"]}");

  print("Nombre: ${estudiante["materia"]["nombre"]} ");
}
