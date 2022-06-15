// Arrow function - função anônima mais enxuta

main() {
  var adicao = (int a, int b) {
    return a + b;
  };
  print(adicao(5, 5));

  // Também podemos urilizar uma arrow function (o return ficam implícito)
  var subtracao = (int a, int b) => a - b;
  print(subtracao(15, 5));

  var multiplicacao = (int a, int b) => a * b;
  print(multiplicacao(5, 5));

  var divisao = (int a, int b) => a / b;
  print(divisao(125, 25));

  // Se fizermos com {}, será um set!
  var somaSet = (int a, int b) => {
    a + b
  };
  print(somaSet(5, 5)); // dá {10}, um Set
  print(somaSet(5, 5) is Set); // dá true
}