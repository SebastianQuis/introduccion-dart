// async*: significa que la funcion regresa un stream

main() {
  
  emitNumbers().listen((value) { 
    print(value);
  })
  .onDone(() { 
    print('Tarea completada');
  });

}

Stream emitNumbers() async* {
  final numbers = [1,2,3,4,5,6];

  for (int i in numbers) {
    await Future.delayed( Duration(seconds: 1) );
    yield i;
  }
}
