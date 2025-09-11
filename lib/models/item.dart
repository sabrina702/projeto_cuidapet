abstract class Item {
  String codigo;
  String nome;
  double preco;

  Item({required this.codigo, required this.nome, required this.preco});

  void mostrar() {
    print('$codigo - $nome: R\$ ${preco.toStringAsFixed(2)}');
  }
}
