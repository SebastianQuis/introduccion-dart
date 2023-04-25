main() {
  // LOS MIXINS SON CLASES QUE PUEDEN TOMAR FUNCIONALIDADES ESPECIFICAS DE CLASES ABSTRACTAS
  // LOS MIXINS NOS SIRVE PARA REUTILIZAR EL CODIGO DE UNA CLASE EN VARIAS JERARQUIAS

  final delfin = Delfin();
  final murcielago = Murcielago();

  delfin.nadar();

  murcielago.volar();
  murcielago.caminar();

  //===========================================================
  //===========================================================
  final sebastian = Sebastian();
  final fabiola = Fabiola();

  fabiola.pintarUnias();
  
  sebastian.pintarUnias();
  sebastian.raparCabello();
}


abstract class Animal {}

abstract class Mamifero with Animal {}
abstract class Ave with Animal {}
abstract class Pez with Animal {}

abstract class Nadador {
  void nadar() => print('Estoy nadando');
}

abstract class Caminante {
  void caminar() => print('Estoy caminando');
}

abstract class Volador {
  void volar() => print('Estoy volando');
}

class Delfin extends Mamifero with Nadador{}
class Murcielago extends Mamifero with Caminante, Volador{}
class Gato extends Mamifero with Caminante{}

class Paloma extends Ave with Caminante, Volador{}
class Pato extends Ave with Caminante, Volador, Nadador{}

class Tiburon extends Pez with Nadador{}
class TiburonVolador extends Pez with Nadador, Volador{}

// ========================================================================
// ========================================================================
// ========================================================================

abstract class Persona{}

abstract class Hombre extends Persona{}
abstract class Mujer extends Persona{}

abstract class PintarUnias{
  void pintarUnias() => print('Me puedo pintar las uñas'); 
}

abstract class RaparCabello{
  void raparCabello() => print('Me puedo rapar el cabello');
}

class Fabiola extends Mujer with PintarUnias{}
class Sebastian extends Hombre with RaparCabello,PintarUnias{}
