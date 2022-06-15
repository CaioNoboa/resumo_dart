class CarroComWhile {
  int velocidadeMaxima = 250;
  int velocidadeAtual = 0;

  CarroComWhile(this.velocidadeMaxima);

  int acelerar() {
    while(velocidadeAtual < velocidadeMaxima) {
      velocidadeAtual += 5;
      print(velocidadeAtual);
    }
    return velocidadeAtual;
  }
}