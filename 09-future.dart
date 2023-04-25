main() {
  print('Inicio del programa');
  
  httpGet('https://fernando-herrera.com').then((value) => print(value)).catchError( (err) => print(err));

  print('Fin del programa');
}

Future<String> httpGet( String url ) {
  return Future.delayed( Duration(seconds: 2), () {
    throw 'Error de la petición'; //
    // return 'Respuesta de la petición';
  });
}

