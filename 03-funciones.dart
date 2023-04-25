main() {
  print(saludar('Sebastian'));
  print(sumaDosNumeros(5));
  print(despedir(mensaje: 'Adios', nombre: 'Fernando'));
}

String saludar(nombre) => 'Hola $nombre';

int sumaDosNumeros(int a, [int b = 0]) {
  // [] => opcional
  // b = b ?? 0;
  // b ??= 0;

  return a + b;
}

String despedir({required String mensaje, String nombre = 'Sebastian'}) {
  return '$mensaje $nombre';
}
