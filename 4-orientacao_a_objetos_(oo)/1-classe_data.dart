/*
Nomenclatura padrão de classes LetraMaiuscula em todas as palavras, incluindo a primeira.

Dart é fortemente baseado em classe.

Entenda classe como um molde, como se fosse um molde de biscoito, a partir desse molde é possível fazer vários biscoitos (várias instâncias, objetos).

A partir de uma classe é possível instanciar quantos objetos forem desejados.

Classe define um tipo. Veja, int, double e etc tmbm são classes. Alguns tipos já estão definidos dentro da linguagem, outros temos que criar, como um tipo Cliente e etc.

Classe é um conjunto de membros e os membros são atributos e comportamentos(métodos). Os comportamentos podem acessar os atributos. Um método pode acessar outro método.
*/

class Data {
  // definiremos 3 atributos para a classe Data:
  late int dia; // o prof utilizou apenas int dia, mas devido atualização precisamos acrescentar late
  late int mes;
  late int ano;
}

main() {
  var dataAniversario = new Data(); // o new não é obrigatório, se escrever sem new o programa tmbm entende que é uma nova instância do tipo Data
  dataAniversario.dia = 3;
  dataAniversario.mes = 10;
  dataAniversario.ano = 2020;

  print("${dataAniversario.dia}/${dataAniversario.mes}/${dataAniversario.ano}");


  Data dataCompra = Data();
  dataCompra.dia = 23;
  dataCompra.mes = 12;
  dataCompra.ano = 2021;

  print("A data da compra foi: ${dataCompra.dia}/${dataCompra.mes}/${dataCompra.ano}");
}