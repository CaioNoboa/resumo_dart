// Exercício usando tanto map quanto reduce

main() {
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

  // Objetivo é calcular a média da turma

  var pegandoAsNotas = (notas) => notas['nota'];
  var todasAsNotas = alunos.map(pegandoAsNotas);
  var somaNotas = todasAsNotas.reduce((value, element) => value + element);
  print("O valor arredondado da média das notas dos ${alunos.length} foi ${(somaNotas / alunos.length).roundToDouble()}");

  // Como professor fez:
  var total = alunos
    .map((aluno) => aluno['nota'])
    .map((nota) => nota as double) // teve que fazer essa conversão fazendo desse jeito, para que aceitasse a soma abaixo
    .reduce((t, a) => t + a);  
  print("O valor da média é: ${total / alunos.length}");

  // Média dos alunos que tiraram mais que 7:
  var totalAlunosAprovados = alunos
    .map((aluno) => aluno['nota'])
    .map((nota) => nota as double) // teve que fazer essa conversão fazendo desse jeito, para que aceitasse a soma abaixo
    .where((nota) => nota >= 7.0); // peguei as notas e filtrei
  
  var notaAlunosAprovados = totalAlunosAprovados.reduce((t, a) => t + a);
  print("O valor da média dos alunos aprovados é: ${notaAlunosAprovados / totalAlunosAprovados.length}");

  // Média alunos reprovados (< 7):
  var alunosReprovados = alunos
  .map((aluno) => aluno['nota'])
  .map((nota) => nota as double)
  .where((nota) => nota < 7.0);

  var somaNotasReprovados = alunosReprovados.reduce((t, a) => t + a);
  print("A média das notas dos alunos reprovados foi: ${somaNotasReprovados / alunosReprovados.length}");
}