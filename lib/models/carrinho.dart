import 'item.dart';

class Carrinho {
  List<Item> itens = [];
  int limite = 3;

  void adicionarItem(Item item) {
    if (itens.length >= limite) {
      print('Não é possível adicionar mais itens. Limite do carrinho ($limite) atingido.');
      return;
    }
    itens.add(item);
    print('${item.nome} adicionado ao carrinho!');
  }

  void listarItens() {
    for (var item in itens) {
      print('${item.nome} - R\$ ${item.preco}');
    }
  }

  double total() {
    double soma = 0.0;
    for (var item in itens) {
      soma += item.preco;
    }
    return soma;
  }
}
