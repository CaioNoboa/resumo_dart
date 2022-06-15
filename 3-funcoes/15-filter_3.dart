/* 
Receber como parâmetro uma lista e uma função daí fazer alguma lógica. Utilizaremos generics.

Criaremos uma função que recebe uma lista e que recebe uma função. A partir das regras dessa função, a lista será filtrada. Mas não amarraremos com uma lista específica e nem função específica. Assim, quando chamarmos a função que passaremos as regras.
*/

List<E> filtrar<E>(List<E> lista, bool Function(E) fn){
  List<E> listaFiltrada = [];
  for(E elemento in lista) {
    if(fn(elemento)) {
      listaFiltrada.add(elemento);
    }
  }
  return listaFiltrada;
}
/*
Criamos uma função chamada filtrar que retorna uma lista.
A função recebe uma lista e uma função.
É uma função genérica<E> que gera uma lista de qualquer coisa, que recebe uma lista de qualquer coisa e que recebe uma função, cujo parâmetro é de qualquer coisa

A partir disso, criamos uma nova lista de qualquer coisa (listaFiltrada)

O for vai percorrer um elemento do tipo E na lista e fazer um teste com uma função fn que recebe um parâmetro(E) e retorna um valor booleano

A função fn retorna um valor booleano e se retornar verdadeiro, o elemento será adicionado à nova lista
*/

main() {

  var notas = [8.2, 3.6, 5.4, 4.4, 8.9, 9.9, 8.5, 6.4];

  // Nós já temos toda a estrutura de lógica, agora é só informarmos qual é a lista e qual é a função
  var boasNotasFn = (double nota) => nota >= 7.5;
  var somenteNotasBoas = filtrar(notas, boasNotasFn);
  print(somenteNotasBoas);

  var nomes = ['Ana', 'Bia', 'Caio', 'Igor', 'João', 'Augusto', 'Amanda', 'Leonardo', 'Murilo', 'Angela', 'Marcelo', 'Otávio', 'Victor'];
  // Queremos filtrar nomes com mais de 8 letras
  var nomesGrandesFn = (String nome) => nome.length >= 8;
  print(filtrar(nomes, nomesGrandesFn));

  var nomesPequenosFn = (String nome) => nome.length <= 4;
  print(filtrar(nomes, nomesPequenosFn));
}