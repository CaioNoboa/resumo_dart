import 'dart:math';

main() {
  // Criando uma variável que receberá um valor aleatório de 0 a 10. Note, o valor passado dentro de nextInt não é incluído. nextInt retornará números inteiros.
  var nota = Random().nextInt(11);

  print('A nota informada foi $nota.');

  if(nota >= 9) {
    print('Parabéns!');
  }

  if(nota >= 7) {
    print('Aprovado');
  } else if(nota >= 5) {
    print('SAC');
  } else {
    print('Reprovado');
  }
}