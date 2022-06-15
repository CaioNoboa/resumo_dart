import 'dart:math';

main() {
  int n1 = numeroAleatorio(101);
  print(n1);

  int n2 = numeroAleatorio(); // aqui assumirá valor padrão e irá até 10
  print(n2);


  imprimirData();
  imprimirData(10);
  imprimirData(21, 09);
  imprimirData(21, 09, 1995);
  imprimirData(21, 09, 1995);
}

int numeroAleatorio([int maximo = 11]) { // quando passamos o parâmetro entre [] estamos dizendo que é um parâmetro opcional. Quando dizemos que maximo = 11, estamos dizendo que se não for passado um valor, deverá assumir que é 11, valor padrão
  return Random().nextInt(maximo);
}

imprimirData([int dia = 1, int mes = 1, int ano = 1970]) {
  print('$dia/$mes/$ano');
}