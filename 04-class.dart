main() {
  final spiderman = Hero(nombre: 'Spiderman', poder: 'Telaraña');

  print('El poder de ${spiderman.nombre} es: ${spiderman.poder}');
  print(spiderman.toString());
}

class Hero {
  final String nombre;
  final String poder;

  Hero({required this.nombre, this.poder = 'sin poder'});

  @override
  String toString() {
    return this.nombre + ' ' + this.poder;
  }
}
