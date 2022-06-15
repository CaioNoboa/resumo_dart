main() {
  var notas = [8.2, 3.6, 5.4, 4.4, 8.9, 9.9, 8.5, 6.4];

  // Somar todas as notas e mostrar o resultado
  
  // Abordagem mais 'tradicional':
  var total = 0.0;
  for(var nota in notas) {
    total += nota;
  }
  print(total);

  // Usando o método reduce. O reduce pode transformar uma lista em qualquer coisa, em objeto, string, int, double, outra lista, etc.
  var totalComReduce = notas.reduce(somar);
  print(totalComReduce);


  var nomes = ['Ana', 'Bia', 'Caio', 'Igor', 'João', 'Augusto', 'Amanda', 'Leonardo', 'Murilo', 'Angela', 'Marcelo', 'Otávio', 'Victor'];
  var nomesJuntos = nomes.reduce(juntarNomes);
  print(nomesJuntos);
}
  // Como o reduce funciona: ele pegará dois elementos de cada vez e executará algo. Na primeira vez os elementos 'a' e 'b' serão os intens 0 e 1 da lista, respectivamente. Considerando que é uma soma de 'a' e 'b', na segunda vez o parâmetro 'a' será o resultado da soma anterior e o 'b' será o iten 2 e assim por diante.

double somar(double acumulador, double elemento) {
  print("$acumulador + $elemento"); // colocamos isso só para ilustrar como o reduce funciona
  return acumulador + elemento;
}

String juntarNomes(String acumulador, String elemento) {
  print("$acumulador + $elemento");
  return "$acumulador, $elemento";
}