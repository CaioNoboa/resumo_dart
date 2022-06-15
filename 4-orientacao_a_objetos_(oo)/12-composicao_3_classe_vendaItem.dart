import '11-composicao_2_classe_produto.dart';

class VendaItem {
  late Produto produto;
  late int quantidade;
  late double _preco;

  VendaItem({required this.produto, this.quantidade = 1});

  double get precoVariavel {
    _preco = produto.precoComDesconto;
    return _preco;
  }

  void set precoVariavel(double novoPreco) {
    if(novoPreco > 0) {
      _preco = novoPreco;
    }
  }
  
}