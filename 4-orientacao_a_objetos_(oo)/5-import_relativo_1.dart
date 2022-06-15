// Aqui importaremos a classe presente em "6-import_relativo_2.dart" e de "teste.dart" na pasta import_relativo

import '6-import_relativo_2.dart';
// Poderia ser utilizando ./ mas como estamos na mesma pasta, não precisa
// import './6-import_relativo_2.dart';

import './import_relativo/teste.dart';

// Se tivesse que sair da pasta usaria ../

main() {
  var pessoa1 = Pessoa();
  pessoa1.name = 'Caio';
  print("O nome da pessoa é ${pessoa1.name}");

  var pessoa2 = PessoaDois();
  pessoa2.nome = 'Gustavo';
  print("O nome da segunda pessoa é ${pessoa2.nome}");
}