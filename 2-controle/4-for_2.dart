/*
  for in
  em outras linguagens é for it
  Percorrendo listas e map
*/

main() {
  var notas = [8.9, 9.3, 7.8, 6.9, 9.1];

  // Fazendo apenas com for:
  for(var i = 0; i < notas.length; i++) {
    print('Nota ${i + 1} = ${notas[i]}');
  }

  // Estrutura otimizada usando for in:
  for(var nota in notas) {
    print('O valor da nota é $nota');
  }

  // Uma lista com listas:
  var coordenadas = [
    [1, 3],
    [9, 1],
    [19, 23],
    [2, 14],
  ];

  for(var coordenada in coordenadas) {
    for(var ponto in coordenada) {
      print('O valor do ponto da matriz é $ponto');
    }
  }


  // Map:
  Map<String, double> avaliacoes = {
    'Fulano': 9.1,
    'Ciclano': 6.3,
    'Fulanex da Silva': 2.4,
    'Ciclanex de Moura': 1.3,
    'Quadrano': 4.5,
  };

  for(String nome in avaliacoes.keys) { // O string podemos dizer ou deixar o programa inferir
    print('O nome do aluno é $nome e a nota é ${avaliacoes[nome]}');
  }

  for(var notaAlunos in avaliacoes.values) {
    print('A nota é $notaAlunos');
  }

  for(var registro in avaliacoes.entries) {
    print('O(a) aluno(a) ${registro.key} obteve nota ${registro.value}');
  }
}