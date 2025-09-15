

import '../models/cliente.dart';
import '../models/formPagamento.dart';
import '../models/produto.dart';
import '../models/recibo.dart';
import '../models/servico.dart';
import '../models/carrinho.dart';
import '../models/item.dart';
import '../models/sessao.dart';
import '../view/menu_formPagamento.dart';

class ClienteController {
  void listarProdutos(Carrinho carrinho) {
    for (var p in Produto.listarProdutos()) {
      p.mostrar();
    }
  }

  void listarServicos(Carrinho carrinho) {
    for (var s in Servico.listarServicos()) {
      s.mostrar();
    }
  }

  void adicionarAoCarrinho(Carrinho carrinho, Item item) {
    carrinho.adicionarItem(item);
  }

  bool adicionarItemAoCarrinho(Carrinho carrinho, int codigo) {
    Item? item;

    try {
      item = Produto.listarProdutos().firstWhere((p) => p.codigo == codigo);
    } catch (e) {}

    if (item == null) {
      try {
        item = Servico.listarServicos().firstWhere((s) => s.codigo == codigo);
      } catch (e) {}
    }

    if (item != null) {
      adicionarAoCarrinho(carrinho, item); 
      return true;
    }

    return false;
  }

  void listarCarrinho(Carrinho carrinho) {
    carrinho.listarItens(); 
  }

  void finalizarCarrinho(Carrinho carrinho, Sessao sessao, Cliente cliente) {
    if (carrinho.itens.isEmpty) {
      print('Carrinho vazio! Não é possível finalizar a compra.');
      return;
    }
    double total = carrinho.total();
    
    int opcao = MenuFormaPagamento.exibir();

    String forma;
    switch (opcao) {
      case 1:
        forma = 'dinheiro';
        break;
      case 2:
        forma = 'cartao';
        break;
      case 3:
        forma = 'pix';
        break;
      default:
        forma = 'cartao';
    }

    FormPagamento pagamento = FormPagamento(forma: forma);
    double valorFinal = pagamento.calcularDesconto(total);

    print('\nCompra finalizada!');
    print('Valor total a pagar: R\$ ${valorFinal.toStringAsFixed(2)}');

    sessao.registrarVenda(valorFinal);

    Recibo recibo = Recibo(
    cliente: cliente,
    itens: List.from(carrinho.itens), // copia dos itens
    total: total,
    );
    recibo.imprimir();

    carrinho.itens.clear();
  }

  
}
