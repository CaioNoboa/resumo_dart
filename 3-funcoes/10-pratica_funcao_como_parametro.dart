/*
  O que eu quero aqui: receber um texto de entrada, repetir quantas vezes o usuário quiser e informar o tamanho total de caracteres
*/
import 'dart:io';

main() {
  stdout.write('Informe um texto: ');
  String texto = stdin.readLineSync()!;

  stdout.write('Informe quantas vezes o texto "$texto" deve ser repetido: ');
  int qtde = int.parse(stdin.readLineSync()!);

  var imprimir = (String texto) {
    print(texto);
    return texto;
  };

  executarTexto(sentenca: texto, numero: qtde, funcaoFN: imprimir);
  
  print('Olá');

  int tamanho = contarCaracteres(sentenca: texto, numero: qtde, funcaoFN: imprimir);
  print('O tamanho do texto é: $tamanho');
}

executarTexto({required String sentenca, required int numero, required Function(String) funcaoFN}) {
  for (var i = 0; i < numero; i++) {
    funcaoFN(sentenca);
  }
}

int contarCaracteres({required String sentenca, required int numero, required Function(String) funcaoFN}) {
  String textoCompleto = '';
  for (var i = 0; i < numero; i++) {
    textoCompleto += funcaoFN(sentenca);
  }
  return textoCompleto.length;
}