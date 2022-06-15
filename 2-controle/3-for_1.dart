/*
Diferença entre for e while:
  for - quantidade determinada de repetições
  while - quantidade indeterminada de repetições
*/

main() {

  /* Leitura:
    variável inteira a iniciada em '0';
    expressão, a < 10, enquanto a < 10 for verdadeiro, será executado o 'print('a = $a');';
    como a variável se comportará, no caso será acrescida de 1 em 1
  */
  for (int a = 0; a < 10; a++) {
    print('a = $a');    
  }
  print('Fim');

  print('Desafio:');  
  for (int b = 100; b >= 0; b -= 4) {
    print('b = $b');
  }
  print('Fim!');

  print('Agora c:');
  double c = 0.0;
  for(; c <= 10.0; c += 0.5) { // Perceba que não preciso repetir o valor de c, que já foi dado
    print('c = $c');
  }

  print('[FORA DO LAÇO FOR] c = $c'); // O valor é 10.5, pois 10.5 foi o valor de c que tornou a expressão falsa

  print('Fim!');
}