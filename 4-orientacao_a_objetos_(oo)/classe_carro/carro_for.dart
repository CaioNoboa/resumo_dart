class Carro {
  final int velocidadeMaxima;
  late int velocidadeAtual;

  Carro(this.velocidadeMaxima);

  // O carro acelera de 5 em 5 e não pode ultrapassar a velocidade máxima
  int acelerar() {
    for(velocidadeAtual = 0; velocidadeAtual < velocidadeMaxima; velocidadeAtual += 5) {
      print(velocidadeAtual);
    }
    return velocidadeAtual;
  }

  // O carro freia de 5 em 5 e não pode ficar negativa
  int freiar() {
    for(velocidadeAtual = velocidadeMaxima; velocidadeAtual > 0; velocidadeAtual -= 5) {
      print(velocidadeAtual);
    }
    return velocidadeAtual;
  }

  // A velocidadeAtual é igual à velocidadeMaxima?
  bool estaNoLimite() {
    if(velocidadeAtual == velocidadeMaxima) {
      return true;
    } else {
      return false;
    }
  }
}