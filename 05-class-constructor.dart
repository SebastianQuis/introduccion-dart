main() {
  final Map<String, dynamic> rawJson = {
    'nombre': 'Spiderman',
    'poder': 'Telaraña',
    'isAlive': true
  };

  final ironman = Hero.fromJson(rawJson);
  print(ironman);
}

class Hero {
  String nombre;
  String poder;
  bool isAlive;

  Hero({required this.nombre, required this.poder, this.isAlive = false});

  Hero.fromJson(Map<String, dynamic> json)
      : this.nombre = json['nombre'] ?? 'no nombre',
        this.poder = json['poder'] ?? 'no poder',
        this.isAlive = json['isAlive'] ?? false;

  @override
  String toString() {
    return '${this.nombre} - ${this.poder} - ${this.isAlive}';
  }
}
