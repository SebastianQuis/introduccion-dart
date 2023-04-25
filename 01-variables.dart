void main() {
  final String pokemon = 'Picachú';
  final int hp = 100;
  final bool isAlive = false;
  final List<String> abilities = ['trueno', 'tira piedra'];
  final fotos = <String>['picachu-cama.jpg', 'picachu-parque.png'];

  // dynamic == null
  dynamic errorMesagge = 'hola';
  errorMesagge = true;
  errorMesagge = [1, 2, 3, 4, 5];
  errorMesagge = {1, 2, 3, 4, 5};
  errorMesagge = () => true;
  // errorMesagge += 1;

  print('''
    $pokemon
    $hp
    $isAlive
    $abilities
    $fotos
    $errorMesagge
  ''');

  final Map<String, dynamic> pokemones = {
    'nombre': 'Picachú',
    'hp': 100,
    'isAlive': true,
    'abilities': ['trueno', 'tira piedra'],
    'fotos': {
      1: 'picachu-front.jpg',
      2: 'picachu-back.jpg',
    }
  };

  print('Nombre: ${pokemones['nombre']}');
  print('Abilities: ${pokemones['abilities']}');

  print('Back: ${pokemones['fotos'][2]}');
  print('Front: ${pokemones['fotos'][1]}');
}
