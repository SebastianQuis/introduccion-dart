void main() {
  // principio de inversión de dependencias
  final plantaAire = PlantaAire(energiaInicial: 100);
  final plantaNuclear = PlantaNuclear(energiaTotal: 200);
  final plantaAgua = PlantaAgua(energiaTotal: 200);

  plantaAgua.consumirEnergia(200);

  plantaAire.consumirEnergia(80);

  print('Aire: ${cargarCelular(plantaAire)}');
  print('Nuclear: ${cargarCelular(plantaNuclear)}');
  print('Agua: ${plantaAgua.energiaTotal}');
}

double cargarCelular(PlantaEnergia planta) {
  if (planta.energiaTotal < 10) {
    throw 'No hay suficiente energia energy';
  }

  return planta.energiaTotal - 10;
}

enum TipoPlanta { nuclear, aire, agua }

abstract class PlantaEnergia {
  // no puede ser inicializadas, solo extendidas
  double energiaTotal;
  final TipoPlanta tipo; // nuclear, wind, water

  PlantaEnergia({required this.energiaTotal, required this.tipo});

  void consumirEnergia(double valor);
}

// extends: hereda clase abstracta, de uso general
class PlantaAire extends PlantaEnergia {
  PlantaAire({required double energiaInicial})
      : super(energiaTotal: energiaInicial, tipo: TipoPlanta.aire);

  @override
  void consumirEnergia(double valor) {
    energiaTotal -= valor;
  }
}

// implements: implementacion, uso más especifico
class PlantaNuclear implements PlantaEnergia {
  @override
  double energiaTotal;

  @override
  final TipoPlanta tipo = TipoPlanta.nuclear;

  PlantaNuclear({required this.energiaTotal});

  void consumirEnergia(double amount) {
    energiaTotal -= amount;
  }
}

class PlantaAgua implements PlantaEnergia {
  double energiaTotal;
  final TipoPlanta tipo = TipoPlanta.agua;

  PlantaAgua({required this.energiaTotal});

  @override
  void consumirEnergia(double valor) {
    energiaTotal -= (valor * 0.5);
  }
}
