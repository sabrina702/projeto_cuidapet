abstract class Item {
  int codigo;
  String nome;
  double preco;

  Item({required this.codigo, required this.nome, required this.preco});

  void mostrar() {
    print('Código: $codigo - $nome - R\$ ${preco.toStringAsFixed(2)}');
  }
}
