import '8-getters_setters_1.dart';

main() {
  var carro = new Carro(320);

  while(!carro.estaNoLimite()) {
    print("A velocidade atual é ${carro.acelerar()}");
  }
  print("O carro atingiu velocidade máxima de ${carro.velocidadeAtual}");

  carro.velocidadeAtual = 322;
  print("O carro atingiu velocidade máxima de ${carro.velocidadeAtual}");
  
  // Apesar de get ser um método, acessaremos ele como se fosse um atributo, isto é, apenas carro.velocidadeAtual e não carro.velocidadeAtual()

  while(!carro.estaParado()) {
    print("A velocidade atual é ${carro.frear()}");
  }
  print("O carro parou. Sua velocidade atual é ${carro.velocidadeAtual}");

  carro.velocidadeAtual = 500; // sem get e set, podíamos alterar o valor de velocidadeAtual quando quiséssemos. Daí o carro estava parado, mas mostrava velocidade de 500. Com get e set podemos alterar o valor do atributo velocidadeAtual, mas com filtros definidos no set
  print("O carro parou. Sua velocidade atual é ${carro.velocidadeAtual}");

  carro.velocidadeAtual = 3; // aqui como deltaValido será true, poderemos reatribuir o valor
  print("O carro parou. Sua velocidade atual é ${carro.velocidadeAtual}");
}