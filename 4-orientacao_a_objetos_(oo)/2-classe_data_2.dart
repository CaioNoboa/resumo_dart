// Continuando com o exemplo da aula anterior, agora queremos formatar como data aparecerá. Formatar dentro da própria classe

class Data {
  late int dia;
  late int mes;
  late int ano;

  // faremos um método, isto é, função dentro de uma classe:
  // uma função receberia os parâmetros obter(int dia, int mes, int ano) , mas como estamos dentro da classe não precisamos definir os parâmetros das funções, pq o programa já entende que os parâmetros serão os atributos da classe
  obterDataFormatada() {
    print("$dia/$mes/$ano");
  }
}

main() {
  var dataAniversario = new Data();
  dataAniversario.dia = 3;
  dataAniversario.mes = 10;
  dataAniversario.ano = 2020;

  Data dataCompra = Data();
  dataCompra.dia = 23;
  dataCompra.mes = 12;
  dataCompra.ano = 2021;

  dataAniversario.obterDataFormatada();
  dataCompra.obterDataFormatada();
}