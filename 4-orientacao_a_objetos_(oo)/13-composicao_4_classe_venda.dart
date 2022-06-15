import '10-composicao_1_classe_cliente.dart';
import '12-composicao_3_classe_vendaItem.dart';

class Venda {
  late Cliente cliente;
  late List<VendaItem> itens; //Lista cuja tipagem dos itens da lista é VendaItem

  Venda({required this.cliente, this.itens = const []});

  double get valorTotal {
    return itens
    .map((item) => item.precoVariavel * item.quantidade)
    .reduce((t,a) => t + a);
  }
  
}