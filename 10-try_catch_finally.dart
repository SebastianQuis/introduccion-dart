main() async {
  print('Inicio del programa');
  
  try {
    final value = await httpGet('https://fernando-herrera.com');
    print(value);  
  } on Exception catch(e){
    print('Tenemos una excepecion!!! $e');
  } catch (e) {
    print('Algó salió mal $e');
  } finally {
    print('Final del try!!');
  }

  print('Fin del programa');
}

Future<String> httpGet( String url ) async{
  await Future.delayed(Duration(seconds: 3));
  throw Exception('Error de excepcion!!!');
  // throw 'error en la peticion';
  // return 'Peticion realizada';  
}