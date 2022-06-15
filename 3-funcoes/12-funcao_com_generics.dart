// Aqui veremos sobre o uso de generics. Generics aq é representado como <E>, mas pode ser qualquer coisa, <COISA>, <A>, <ABC>

// O tipo object é o mais abrangente do dart, abrange todos os tipos
Object segundoElemento1(List lista) {
  return lista.length >= 2 ? lista[1] : null;
}

// Mas podemos usar generics para que o tipo da função não seja objeto, mas sim do mesmo tipo dos valores de uma lista:
E? segundoElemento2<E>(List<E> lista) {
  return lista.length >= 2 ? lista[1] : null;
}

main() {
  var listaNumeros = [1, 3, 5, 7, 9, 11, 13, 15, 17, 19];
  
  print(segundoElemento1(listaNumeros));

  print(segundoElemento2(listaNumeros)); // utilizando generics, a função poderá ser utilizada para listas com elementos de diferentes tipos e não ficará com um tipo object (abrangente).
  // Podemos tmbm discriminar os tipos:
  int segundoElemento = segundoElemento2<int>(listaNumeros)!;
  print(segundoElemento);
}