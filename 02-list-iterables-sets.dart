void main() {
  final numbers = [1, 2, 3, 4, 4, 4, 5, 6, 7, 7, 7, 8, 9, 9];

  print('Primer numero: ${numbers.first}');
  print('Revertir orden e iterable: ${numbers.reversed}');

  final reversedNumbers = numbers.reversed;
  print('Iterable: ${reversedNumbers}');
  print('List: ${reversedNumbers.toList()}');
  print('Set: ${reversedNumbers.toSet()}');

  print('Numeros mayor a 5');
  final numerosMayoresA5 = numbers.where((num) => num > 5);

  print('>5: ${numerosMayoresA5.toSet()}');

  print('Eliminando datos duplicados');
  print(numbers.toSet().toList());
}
