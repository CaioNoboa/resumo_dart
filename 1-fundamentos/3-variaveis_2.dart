// Outra forma de criar variáveis

main() {
  var n1 = 2; // Dart infere o tipo da variável
  var n2 = 5.45;
  print(n1 + n2);

  var t1 = "Hello ";
  var t2 = "World!";
  print(t1 + t2); // Concatenação

  var t3 = "O valor da soma é ";
  // print(t3 + n1 + n2); // Não podemos fazer isso, são tipos de variáveis diferentes, apesar de não termos falado o tipo da variável, o programa infere o tipo
  // print(t3 + (n1 + n2)); // Ainda não dá certo, precisamos transformar a soma das variáveis em string para concatenar:
  print(t3 + (n1 + n2).toString()); // O resultado da operação será transformado em string

  // Para sabermos o tipo da variável:
  print(n1.runtimeType);
  print(n2.runtimeType);
  print(t1.runtimeType);

  // Podemos testar o tipo (dá true ou false):
  print(n1 is int);
  print(n2 is int);
}