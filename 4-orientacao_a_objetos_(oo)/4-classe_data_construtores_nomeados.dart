// Continuando com o exemplo da aula anterior, agora seguindo com construtores nomeados
// Construtores nomeados não são comuns em outras linguagens, mas será usado sim em Flutter

class Data {
  late int dia;
  late int mes;
  late int ano;


  // Todo construtor começa com o nome da classe

  Data([this.dia = 1, this.mes = 1, this.ano = 1970]);

  // Construindo um construtor nomeado (o com não é padrão, poderia ser qualquer coisa):
  Data.com({this.dia = 1, this.mes = 1, this.ano = 1970});

  // Podemos fazer um construtor nomeado que possui corpo:
  Data.ultimoDiaDoAno(this.ano) {
    dia = 31;
    mes = 12;
  }

  String obterDataFormatada() {
    return "$dia/$mes/$ano";
  }

  String toString() {
    return obterDataFormatada();
  }
}

main() {
  // Chamando o contrutor normal
  print(Data(31, 12, 2021));

  // Chamando o construtor nomeado, agora a posição não importa mais:
  print(Data.com(ano: 2022));
  print(Data.com(mes: 9, ano: 1995, dia: 21));

  print(Data.ultimoDiaDoAno(2022));
}