import 'item.dart';

class Carrinho {
  List<Item> itens = [];
  int limite = 3;

  void adicionarItem(Item item) {
    itens.add(item);
    print('${item.nome} adicionado ao carrinho!');
  }

  void listarItens() {
    for (var item in itens) {
      print('${item.nome} - R\$ ${item.preco}');
    }
  }
}
