/*
Break e continue:
  Break quebra/interrompe a execução do laço e manda para fora do bloco for
  Continue interrompe a repetição específica. O laço continua a ser executado, assim quando encontra o continue, passa pra próxima repetição

*/
main() {

  // O seguinte bloco faz com que assim que a == 5 for verdadeiro, lerá o break, o qual jogará para fora do bloco, no caso para print('Fim laço 01');
  for(int a = 0; a <= 10; a++) {
    if(a == 5) {
      break;
    }    
    print(a);
  }
  print('Fim laço 01');

  // O seguinte bloco faz com que quando a % 2 == 1, ou seja, quando o resto da divisão por dois for um, seguirá para o continue, que interromperá essa repetição específica, passando para a próxima. Ou seja, os valores impares não serão printados por terem sido interrompidos pelo continue
  for(int a = 0; a <= 10; a++) {
    if(a % 2 == 1) {
      continue;
    }    
    print(a);
  }

  print('Fim laço 02');

  // Para ler os ímpares:
  for(int a = 0; a <= 10; a++) {
    if(a % 2 == 0) {
      continue;
    }
    print(a);
  }

  print('Fim laço 03');
}