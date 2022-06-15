// Aqui é como o professor fez

import '10-composicao_1_classe_cliente.dart';
import '11-composicao_2_classe_produto.dart';
import '12-composicao_3_classe_vendaItem.dart';
import '13-composicao_4_classe_venda.dart';

main() {
  var venda = Venda(
    cliente: Cliente(
      nome: 'Caio',
      cpf: '951.847.623-45'
    ),
    itens: <VendaItem>[
      VendaItem(
        produto: Produto(
          codigo: 1,
          nome: 'Computador',
          preco: 2000.00,
          desconto: 0.05
        ),
        quantidade: 1
      ),
      VendaItem(        
        produto: Produto(
          codigo: 2,
          nome: 'caneta',
          preco: 2.00,
          desconto: 0          
        ),
        quantidade: 5,
      ),
      VendaItem(
        produto: Produto(
          codigo: 3,
          nome: 'borracha',
          preco: 1.00,
          desconto: 0.5
        ),
        quantidade: 10  
        )
    ]
  );

  print('O valor toral da venda é R\$ ${venda.valorTotal}');

  print('O primeiro produto da lista é ${venda.itens[0].produto.nome}, cujo valor unitário sem desconto é R\$ ${venda.itens[0].produto.preco}, mas que com o desconto ficou R\$ ${venda.itens[0].precoVariavel}');

  print('Olá ${venda.cliente.nome}, é um prazer vê-lo novamente aqui! Você acabou de adquirir ${venda.itens[0].quantidade} ${venda.itens[0].produto.nome}, ${venda.itens[1].quantidade} ${venda.itens[1].produto.nome}s e ${venda.itens[2].quantidade} ${venda.itens[2].produto.nome}s.');
}