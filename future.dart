main() {
  // síncrono:
  int r1 = soma(7, 3);
  print(r1);

  // assíncrono:
  print('Antes de chamar a função somaDoFuturo()');
  somaDoFuturo(70, 30)
    .then((value) => value * 2)
    .then((value) => value * 10)
    .then((value) => value / 5)
    .catchError((err) {})
    .then((value) => print(value));
  print('Depois de chamar a função somaDoFuturo()');

  /*
    Resultado:
      Antes de chamar a função somaDoFuturo()
      Depois de chamar a função somaDoFuturo()
      400.0

    Mesmo que o print('Depois...') tenha sido colocado após a função somaDoFuturo(), como se trata de um Future, o print(value) será executado apenas quando for concluído.
    Dessa forma, podemos observar a assincronia, onde um código foi executado antes de outro ter sido concluído.
    Isso existe para que o programa não pare de rodar apenas para ficar esperando uma parte do código ser executada.
  */
}

int soma(int a, int b) {
  return a + b;
}

Future<int> somaDoFuturo(int a, int b) {
  return Future(() {
    return a + b;
  });
}
