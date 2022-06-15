main() {
  Map<String, double> notas = {
    'Maria': 9.0,
    'João': 7.3,
    'Cátia': 5.0,
    'Abreu': 3.2,
    'Júlio': 1.5,
    'Caio': 10.0,
    'Gustavo': 10.0,
    'Luis': 0.3,
    'Fernanda': 8.8,
    'Sara': 5.8,
  };
  
  for(var registro in notas.entries) {
    if(registro.value >= 6.0) {
      print('O(a) aluno(a) ${registro.key} obteve nota ${registro.value}, portando está aprovado(a)');
    } else if(registro.value >= 5.0) {
      print('O(a) aluno(a) ${registro.key} obteve nota ${registro.value}, portando está de SAC');
    } else {
      print('O(a) aluno(a) ${registro.key} obteve nota ${registro.value}, portando está reprovado(a)');
    }
  }
}