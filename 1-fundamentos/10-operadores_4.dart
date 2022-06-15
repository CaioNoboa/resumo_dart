import 'dart:io';

main() {

  // print("Está chovendo? (s/N)"); // o N está em maiúsculo pq seria a resposta padrão
  // final resposta1 = stdin.readLineSync();
  // bool estaChovendo = resposta1 == 's' ? true : false; // essa linha está dizendo o seguinte: se a resposta do usuário for s, iremos atribuir true à variável estaChovendo
  // Fizemos direto:

  stdout.write("Está chovendo? (s/N) ");
  bool estaChovendo = stdin.readLineSync() == 's'; // para facilitar leitura, separe em partes, leia primeiro stdin.readLineSync() == 's', se a resposta for s, será atribuído true à estaChovendo

  stdout.write("Está frio? (s/N) ");
  bool estaFrio = stdin.readLineSync() == 's';

  // Operação ternária (no caso, atribuição condicional):
  String resultado = estaChovendo || estaFrio ? "Ficar em casa" : "Sair!";
  /*
    É uma operação ternária, pois temos três partes:
      1- estaChovendo || estaFrio - Aqui temos uma expressão cuja saída será true ou false
      2- "Ficar em casa" - Aq é a saída caso a expressão acima dê true
      3- "Sair!" - Aq é a saída caso a expressão acima dê false
  */
  print(resultado);
  print(estaChovendo || estaFrio ? "Sortudo, vai ver Netflix!!" : "Ixi, vai pro rolê sim, boa sorte!");
}