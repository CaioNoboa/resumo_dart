import 'resposta_professor_1.dart';

main() {
  var carro = new Carro(320);

  while(!carro.estaNoLimite()) { // enquanto carro não está no limite
    print("A velocidade atual é ${carro.acelerar()} km/h");
  }
  print("O carro chegou na velocidade máxima de ${carro.velocidadeAtual} km/h");

  while(!carro.estaParado()) { // enquanto carro não está no limite
    print("A velocidade atual é ${carro.freiar()} km/h");
  }
  print("O carro agora está parado, sua velocidade atual é ${carro.velocidadeAtual} km/h");
}