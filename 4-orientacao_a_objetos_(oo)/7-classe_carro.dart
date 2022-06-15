// Importar a classe Carro, criar um carro, definir velocidade máxima, acelerar de 0 até a velocidade máxima e imprimir cada valor e freiar

import 'classe_carro/carro_for.dart';
import 'classe_carro/carro_while.dart';

main() {
  var carro1 = Carro(250);
  print(carro1.acelerar());
  print(carro1.freiar());
  carro1.velocidadeAtual = 150;
  print(carro1.estaNoLimite());

  var carro2 = CarroComWhile(250);
  print(carro2.acelerar());
}