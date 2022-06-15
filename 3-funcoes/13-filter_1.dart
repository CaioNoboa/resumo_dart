// Tenho uma lista de notas e quero filtrar apenas as notas boas

main() {
  var notas = [8.2, 3.6, 5.4, 4.4, 8.9, 9.9, 8.5, 6.4];

  // Há de uma forma de resolvermos isso. A seguir será a forma que é comum as pessoas utilizarem:
  var notasBoas = []; // primeiro criamos uma lista vazia
  var notasRuins = [];
  for (var nota in notas) {
    if(nota >= 7) {
      notasBoas.add(nota); // com for in percorremos toda a lista e as notas >= 7 serão adicionadas à lista notasBoas
    } else {
      notasRuins.add(nota);
    }
  }
  
  print(notas);
  print(notasBoas);
  print(notasRuins);
}