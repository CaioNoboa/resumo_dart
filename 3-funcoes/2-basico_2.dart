import 'dart:math';

main() {
  // Como utilizar o valor gerado por uma função e armazenar em uma variável? Para isso a função precisa retornar algo, daí não utilizaremos void, podemos utilizar o tipo do retorno

  int resultado = somar(2, 3);
  resultado *= 2;
  print('O dobro do resultado é $resultado');

  print(somarNumerosAleatorios());
  print('O resultado é ${somarNumerosAleatorios()}');
}

int somar(int a, int b) {
  return a + b;
}

int somarNumerosAleatorios() {
  int a = Random().nextInt(11);
  int b = Random().nextInt(11);
  return a + b;
}