// Const x final

import 'dart:io';

main() {
  // Área de uma circunferência = pi * raio^2
  
  // Recebendo dados do usuário:
  // stdin.readLineSync();
  // String? texto = stdin.readLineSync();
  // print("O valor que você digitou foi: " + texto!);
  // Não podemos rodar através de ctrl alt N, pois no outout não podemos inserir valores, para isso usamos o terminal com dart constantes_1.dart

  // stdout = saída padrão (standard), tela
  // stdin = entrada padrão, teclado

  // print("Informe o valor do raio da circunferência: ");
  // Para que o valor a ser digitado apareça na mesma linha da pergunta:
  stdout.write("Informe o valor do raio da circunferência: ");

  final entradaDoUsuario = stdin.readLineSync()!; // Recebendo o dado do usuário
  // var raio = double.parse(entradaDoUsuario); // Transformando em double
  // Os ? e ! são agora necessários por uma atualização, ver mais em 480 e 484
  // Ao colocarmos raio como var, podemos alterá-lo ao longo do código, é interessante atribuir o máximo possível as variáveis em constantes para dar menos erros:
  final raio = double.parse(entradaDoUsuario); // final = constante
  const PI = 3.1415; // poderíamos usar final também, mas como o valor já está definido, optamos por const. Nos outros casos não podemos usar const pq os valores não estão pré-definidos, serão definidos durante a execução do código.

  final area = PI * raio * raio;

  print("A área da circunferência, cujo valor do raio é " + raio.toString() + ", é " + area.toString());
}