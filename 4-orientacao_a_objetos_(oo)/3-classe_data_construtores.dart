// Continuando com o exemplo da aula anterior, agora seguindo com construtores

class Data {
  late int dia;
  late int mes;
  late int ano;

  /*  
  Sem nenhum construtor, não podemos passar um parâmetro quando chamamamos a classe (var dataAniversario = new Data();), tipo Data(21, 9, 1995), contudo, se usarmos construtores podemos alterar isso evitando ter que fazer
  dataAniversario.dia = 3;
  dataAniversario.mes = 10;
  dataAniversario.ano = 2020;
  Um contrutor padrão é o Data() usado em var dataAniversario = new Data();, onde não passamos nenhum parâmetro
  
  1 - Construtor padrão:
  Poderíamos fazer o seguinte e funcionaria:
  Data() {
  }
  Aqui apenas fizemos o que já existe internamente, um construtor padrão que não altera nada

  2 - Construtor que recebe parâmetros:
  Data(int dia, int mes, int ano){
  }
  Agora já somos obrigados a informar os parâmetros em var dataAniversario = new Data(); Mas apenas fazendo isso dá erro, pq o programa não entende que esses novos parâmetros são os atributos da classe
  late int dia;
  late int mes;
  late int ano;

  3 - Relacionando parâmetros com atributos_1:
  Data(int diaInicial, int mesInicial, int anoInicial) {
    dia = diaInicial;
    mes = mesInicial;
    ano = anoInicial;
  }
  O que fizemos aqui foi pegar os valores que passamos para o construtor e alteramos as variáveis de instância, pq são duas coisas diferentes (parâmetros construtor != atributos da classe)

  4 - Relacionando parâmetros com atributos_2:
  Vamos dizer que queremos que os parâmetros do contrutor sejam dia, mes e ano, iguais aos dos atributos
  Data(int dia, int mes, int ano){
    dia = dia;
    mes = mes;
    ano = ano;
  }
  Nesse caso é como se não tivéssemos feito absolutamente nada, o programa acaba entendendo que ambos os dias se referem aos parâmetros. Precisamos diferí-los de alguma forma, daí para isso existe o this
  O this vai alterar qual é o dia instanciado (this.dia) que recebe o parâmetro dia como valor:
  Data(int dia, int mes, int ano){
    this.dia = dia;
    this.mes = mes;
    this.ano = ano;
  Do lado esquerdo da atribuição (símbolo de igualdade) fica o que recebe o valor e do lado direito fica o valor
  }
  */

  /* Assim, poderíamos fazer o seguinte:
  Data(int dia, int mes, int ano) {
    this.dia = dia;
    this.mes = mes;
    this.ano = ano;
  }
  Mas há uma forma mais simplificada de se fazer:
  */
  // Data(this.dia, this.mes, this.ano);
  /*
  Poderíamos transformas os três parâmetros em opcionais, definindo valor padrão:
  */
  Data([this.dia = 1, this.mes = 1, this.ano = 1970]);


  String obterDataFormatada() {
    return "$dia/$mes/$ano";
  }

  String toString() {
    return obterDataFormatada();
  }  
}

main() {
  var dataAniversario = new Data(3, 10, 2020);
  String data1 = dataAniversario.obterDataFormatada();
  print("A data do aniversário é $data1");
  // Poderíamos chamar direto:
  print("A data do aniversário é ${dataAniversario.obterDataFormatada()}");


  Data dataCompra = Data(15, 2, 2022);
  // Podemos alterar os valores do parÂmetro:
  dataCompra.dia = 14;
  String data2 = dataCompra.obterDataFormatada();
  print("A data da compra foi $data2");

  print(new Data());
  print(Data());
  print(Data(31));
  print(Data(31, 12));
  print(Data(31, 12, 2021));
}