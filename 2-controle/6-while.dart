// Quantidade indeterminada de ações para sair do laço while

import 'dart:io';

main() {
  var digitado = '';

  // A partir da variável criada 'digitado' recebendo uma string vazia, entra no laço do while
  while(digitado != 'sair') {
    stdout.write('Digite algo ou sair: ');
    digitado = stdin.readLineSync().toString(); // essa linha é para modificar o valor da variável, senao ficará no laço infinitamente
  }

  print('Fim!');

  // Existe também o DO... WHILE:
  var digitado2 = 'sair';

  do {
    stdout.write('Digite algo ou sair: ');
    digitado2 = stdin.readLineSync().toString();
  } while(digitado2 != 'sair'); // é a única estrutura de controle que tem ; ao final!! E que tem a expressão que controla o laço também ao final, depois do bloco!

  print('Fim!');

  // A diferença entre while e do while é que se digitado = 'sair' não entrará no laço while, enquanto que no laço do while obrigatoriamente passará pelo laço pelo menos uma vez. Assim, mesmo que digitado2 = 'sair', entrará no laço
}