// A melhor coisa é falar qual o tipo do parâmetro de entrada de uma função, se não falar, o programa assumirá como dynamic

main() {
  juntar(1, 9); // o resultado é 19
  juntar('Bom ', 'dia!');
  var resultado = juntar('O valor de PI é: ', 3.1415);
  print(resultado.toUpperCase()); // aq aparecem duas vezes pq na função tmbm tem um print
}

juntar(a, b){ // se eu não informo a tipagem, o programa assumirá que são do tipo dynamic
  print(a.toString() + b.toString());
  return a.toString() + b.toString();
}