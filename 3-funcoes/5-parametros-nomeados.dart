/*
Geralmente os parâmetros são posicionais, ou seja, quando defino uma função soma(a, b){}, quando eu chamar a função, soma(2, 3), a=2 e b=3

Mas há a possibilidade de fazermos parâmetros nomeados, onde a posição já não importará mais, para fazermos isso, basta adicionarmos {} nos parâmetros na função
*/

main() {

  saudarPessoa(nome: 'Maria', idade: 47);
  saudarPessoa(idade: 15, nome: 'Carol',);

  imprimirData();
  imprimirData(ano: 1995);
  imprimirData(dia: 21, mes: 09, ano: 1995);
  imprimirData(ano: 1995, mes: 05);
  imprimirData(ano: 1969, dia: 05, mes: 05);

  imprimirDataDois(31);
  imprimirDataDois(31, ano: 1969, mes: 11);
  imprimirDataDois(03, mes: 11, ano: 1999);

}

saudarPessoa({String nome = 'João', int idade = 20}) {
  print('Olá $nome, nem parece que você tem $idade anos, na verdade parece que você tem ${idade * 2}');
}

// No exemplo da aula anterior, podemos fazer:
imprimirData({int dia = 01, int mes = 01, int ano = 1970}) {
  print('$dia/$mes/$ano');
}

// Podemos misturar posicional com nomeado e opcionais:
imprimirDataDois(int dia, {int mes = 01, int ano = 1970}) { // nesse caso é obrigatório passar o dia (parâmetro posicional). Mes e ano são parâmetros nomeados e opcionais
  print('$dia/$mes/$ano');
}