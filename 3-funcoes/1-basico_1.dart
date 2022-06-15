// A porta de entrada de um programa em dart é uma função, main()

import 'dart:math';

void main() {
  
  int a = 2;
  int b = 3;
  print(a + b);

  int c = 4;
  int d = 5;
  print(c + d);

  // No exemplo acima entramos com duas variáveis e efetuamos a soma, mas para entrar com novas variáveis, repetimos os códigos. Assim, podemos utilizar funções para otimização:

  somaComPrint(2, 3);
  somaComPrint(4, 5);
  somaComPrint(c, d);

  somaDoisNumerosQuaisquer(); // essa função não recebe nenhum parâmetro de entrada e não retorna absolutamente nada como resposta
  // Uma função com () vazios significa que não está sendo passado nenhum parâmetro de entrada

  print('Exemplo comentários da aula 512: ');
  print(somaComRetornoComPrint(2, 3));
}

void somaComPrint(int a, int b) { // o void significa que essa função não retornará absolutamente nada. Essa função recebe dois parâmetros de entrada, a e b, e vai fazer uma sequência de dados
// Colocando variáveis dentro dos () indica os parâmetros de entrada, que serão obrigatórios ao chamar a função 'somaComPrint(2, 3);'
  print(a + b);  
}

void somaDoisNumerosQuaisquer() {
  int n1 = Random().nextInt(11);
  int n2 = Random().nextInt(11);
  print('Os valores sorteados foram: $n1 e $n2');
  print(n1 + n2);
}

int somaComRetornoComPrint (int a, int b) {
  print(a + b);
  return a + b;
}