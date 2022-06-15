main() {

// Criando uma lista cujos elementos serão maps:
  var alunos = [
    {'nome': 'Alfredo', 'nota': 6.2},
    {'nome': 'Wilson', 'nota': 1.9},
    {'nome': 'Mariana', 'nota': 2.8},
    {'nome': 'Guilherme', 'nota': 5.9},
    {'nome': 'Ana', 'nota': 3.2},
    {'nome': 'Ricardo', 'nota': 8.0},
    {'nome': 'Flávia', 'nota': 7.7},
    {'nome': 'Richard', 'nota': 6.7},
    {'nome': 'Henrique', 'nota': 5.5},
    {'nome': 'Rodrigo', 'nota': 4.9},
  ];
  
  /*
  Temos uma lista com 10 elementos
  
  Ao usarmos um filtro com where, p. ex., o resultado será uma lista e essa lista poderá estar vazia ou poderá, no máximo, ser do mesmo tamanho da lista original.
  
  Ao utilizarmos o método/função map (map != Map) a lista originada será sempre de mesmo tamanho da lista original, isto porque map transforma um elemento em alguma outra coisa, não descarta.

  Map = { key: , value: };
  map = função que mapeia um elemento em outro elemento (podemos transformar string em int e etc.)
  */

  // Transformando um Map em uma String:
  String Function(Map) pegarApenasNome = (aluno) => aluno['nome'];
  // Uma variável do tipo função nomeada pegarApenasNome recebe um Map e retorna uma String. Essa variável armazena uma função anônima com parâmetro aluno, cujo retorno é o valor da chave 'nome'

  // Pegamos o nome da lista alunos e aplicamos map colocando nele a função que já descrevemos
  var nome = alunos.map(pegarApenasNome);
  print(nome);


  // Podemos pegar a variável nome, String, e ver quantas letras cada nome tem, int:
  int Function(String) contarCaracteres = (texto) => texto.length;
  var comprimentoNome = nome.map(contarCaracteres);
  print(comprimentoNome);

  // Podemos pegar o comprimento dos nomes e dobrar o valor:
  double Function(int) dobrarValor = (numero) => numero * 2;
  var dobraPorDois = comprimentoNome.map(dobrarValor);
  print(dobraPorDois);


  // Se quisermos apenas o valor dobrado da quantidadde de caracteres, poderíamos fazer as funções e depois fazer direto:
  print(alunos
    .map(pegarApenasNome)
    .map(contarCaracteres)
    .map(dobrarValor)
  );

  // Perceba que todas as listas geradas tem o mesmo número de elementos da original, 10
}