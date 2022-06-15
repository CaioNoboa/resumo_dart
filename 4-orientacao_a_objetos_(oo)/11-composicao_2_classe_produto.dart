class Produto {
  late int codigo;
  late String nome;
  late double preco;
  late double desconto;

  Produto({this.codigo = 1, this.nome = '', this.preco = 1.0, this.desconto = 0.0});

  double get precoComDesconto {
    return preco * (1 - desconto);
  }
}