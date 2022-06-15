import '10-composicao_1_classe_cliente.dart';
import '11-composicao_2_classe_produto.dart';
import '12-composicao_3_classe_vendaItem.dart';
import '13-composicao_4_classe_venda.dart';

main() {
  var cliente1 = new Cliente(nome: 'Caio', cpf: '15948726358');
  print(' O nome do cliente é ${cliente1.nome} e seu cpf é ${cliente1.cpf}');

  var produto1 = new Produto(codigo: 10, nome: 'computador', preco: 2000, desconto: 0.05);
  print('O produto desejado é ${produto1.nome}, cujo preco é ${produto1.preco}');

  var produtoComDesconto = produto1.precoComDesconto;
  print('O produto desejado é ${produto1.nome}, cujo preco com desconto fica $produtoComDesconto');

  var venda1 = new VendaItem(produto: produto1, quantidade: 1);
  print('O produto desejado na venda é ${venda1.produto.nome}, cujo valor está R\$ ${venda1.produto.preco}, mas como você recebeu um desconto de ${venda1.produto.desconto * 100}%, o valor atual é R\$ $produtoComDesconto. A quantidade desejada é ${venda1.quantidade}.');

  var vendaFinal = new Venda(cliente: cliente1, itens: [venda1]);
  print(vendaFinal.valorTotal);
  
}