import 'dart:math';

void executar(Function fnPar, Function fnImpar) {
  var sorteado = Random().nextInt(10);
  print('O valor sorteado foi $sorteado');
  sorteado % 2 == 0 ? fnPar() : fnImpar();

  // Sem saber o valor sorteado poderíamos fazer direto:
  // Random().nextInt(10) % 2 == 0 ? fnPar() : fnImpar();
}

  /* Poderia também escrever:
  if(Random().nextInt(10) % 2 == 0) {
    fnPar();
  } else {
    fnImpar();
  }
  */

main() {
  var minhaFnPar = () => print('O valor é par!');
  var minhaFnImpar = () => print('O valor é ímpar!');

  executar(minhaFnPar, minhaFnImpar);
  // Podemos nomear os parametros também, ex.:
  // executar(fnPar: minhaFnPar, fnImpar: minhaFnImpar);
  // mas daí a fn executar precisaria ficar:
  // void executar({required Function fnPar, required Function fnImpar}) {
}