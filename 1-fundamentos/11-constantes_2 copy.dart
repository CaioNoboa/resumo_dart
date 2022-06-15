main() {
  final lista = ['Ana', 'Lia', 'Gui'];
  lista.add('Rebeca'); // mesmo sendo final, podemos adicionar mais coisas, o que não poderíamos fazer seria reatribuir:
  // lista = ['Banana', 'Maça'];
  print(lista);

  // Para evitarmos poder adicionar algo em uma lista, podemos fazer:
  var lista2 = const ['Ana', 'Cátia'];
  // lista2.add('Caio'); // Dá erro ao rodarmos, pois é uma const
  // Porém, como é uma var, podemos reatribuir o valor, apesar de não podermos alterar o que tem dentro da lista anterior:
  lista2 = const ['Caio', 'Gustavo'];
  print(lista2);

  const lista3 = ['Helena', 'Heliana'];
  print(lista3);

  // Marcar como final não impede de alterarmos o conteúdo
}