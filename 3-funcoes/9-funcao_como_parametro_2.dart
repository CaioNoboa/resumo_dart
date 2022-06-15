import 'dart:io';

void executarPor({required int repeticoes, required String sentenca, required Function(String) fn}) {
  for(int i = 0; i < repeticoes; i++) {
    fn(sentenca);
  }
}

main() {  
  stdout.write('Digite algo a ser imprimido: ');
  var texto = stdin.readLineSync().toString();

  stdout.write('Digite a quantidade de vezes que o texto "$texto" deve ser impresso: ');
  var qtde = int.parse(stdin.readLineSync()!);

  var mandarImprimir = (String texto) => print(texto);
  
  executarPor(repeticoes: qtde, sentenca: texto, fn: mandarImprimir);
}