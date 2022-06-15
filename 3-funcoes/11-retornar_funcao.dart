// Uma funcao pode retornar uma funcao

// Função:
int Function(int) somaParcial(int a) { // int Function(int) quer dizer que a função somaParcial retornará uma Função com parâmetro int e cujo retorno dessa função é int

  // Farei um processamento com o parâmetro a:
  if(a > 10) {
    a += a;
  } else {
    a *= a;
  }

  // Essa função retornará uma outra função:
  return (int b) {
    return a + b;
  };

  // O que isso significa? Que posso utilizar apenas a primeira parte da função, armazená-la em uma variável, e daí utilizar essa variável para usar a segunda parte da função. Isso evita ficar processando a mesma coisa.
}

main() {
  print(somaParcial(5)(0)); // estamos passando o valor de 'a' e o de 'b'

  // Imagine que precisarei que 'a' seja igual a 10 em várias situações, em vários 'b's diferentes. Não preciso processar a primeira parte do código várias vezes, posso armazenar em uma variável:
  var somaCom10 = somaParcial(10);
  // print(somaCom10); // se eu fizer isso dará erro Closure: (int) => int, pq está retornando uma função
  print(somaCom10(5)); // o parâmetro é o valor de 'b'
  print(somaCom10(15));
  print(somaCom10(25));
  print(somaCom10(25));
  print(somaCom10(45));
}