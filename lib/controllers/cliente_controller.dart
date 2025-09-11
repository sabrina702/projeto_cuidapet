import '../models/produto.dart';
import '../models/servico.dart';
import '../models/carrinho.dart';
import '../models/item.dart';

class ClienteController {
  void listarProdutos(Carrinho carrinho) {
    for (var p in Produto.listarProdutos()) {
      print('${p.codigo} - ${p.nome}: R\$ ${p.preco}');
    }
  }

  void listarServicos(Carrinho carrinho) {
    for (var s in Servico.listarServicos()) {
      print('${s.codigo} - ${s.nome}: R\$ ${s.preco}');
    }
  }

  void adicionarAoCarrinho(Carrinho carrinho, Item item) {
    carrinho.adicionarItem(item); 
  }

  void listarCarrinho(Carrinho carrinho) {
    carrinho.listarItens(); 
  }
}
