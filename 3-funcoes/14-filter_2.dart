// Tenho uma lista de notas e quero filtrar apenas as notas boas

main() {
  var notas = [8.2, 3.6, 5.4, 4.4, 8.9, 9.9, 8.5, 6.4];
  
  // Agora utilizaremos o método where, que é o método filter de outras linguagens

  // Faremos uma função cujo retorno é um valor booleano
  var notasBoasFn = (double value) => value >= 7;
  // ou:
  bool Function(double) notasMuitoBoasFn = (double nota) => nota >= 8.5;

  var notasBoas = notas.where(notasBoasFn);
  var notasMuitoBoas = notas.where(notasMuitoBoasFn);

  // Perceba que as funções criadas são reutilizáveis. No exercício anterior amarramos uma lista específica ao for in. Aqui, apenas criamos funções que retornam verdadeiro ou falso. Assim, ao criarmos uma variável, chamamos a lista que queremos e no where colocamos a função que queremos.
  print(notas);
  print(notasBoas);
  print(notasMuitoBoas);


  var notasRuinsFn = (double value) => value < 7;
  var notasMuitoRuinsFn = (double value) => value < 5;

  var notasRuins = notas.where(notasRuinsFn);
  var notasMuitoRuins = notas.where(notasMuitoRuinsFn);

  print(notasRuins);
  print(notasMuitoRuins);
}