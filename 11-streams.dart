main() {
  // flujo de información que puede emitir valores periódicamente, ej: barra de progreso de un video de youtu

  emitNumbers().listen((event) {
    print('Escuchando del stream: $event');
  });

}


Stream<int> emitNumbers(){
  return Stream.periodic(Duration(seconds: 1), (value) {
    return value; 
  }).take(8); // solo cuente 8 numeros
  
  
  // .takeWhile((value) { // tome mientras que sea menor a 10 el value
  //   return value < 10; 
  // });
}