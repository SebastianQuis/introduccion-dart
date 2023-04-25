main() {
  final cuadro = Cuadrado(lado: -20);

  // cuadro.lado = 4;

  print(cuadro.area);
}

class Cuadrado {
  double _lado;

  Cuadrado({required double lado}) 
    : assert( lado >= 0, 'El lado tiene que ser mayor a 0'),
      _lado = lado;

  double get area {
    return _lado * _lado;
  }

  set lado(double value) {
    if (value <= 0) throw 'No puede ser negativo';
    _lado = value;
  }

  double calcularArea() {
    return _lado * _lado;
  }
}
