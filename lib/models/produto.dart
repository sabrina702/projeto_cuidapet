import 'item.dart';

class Produto extends Item {
  Produto({required super.codigo, required super.nome, required super.preco});


  static List<Produto> listarProdutos() {
    return [
      Produto(codigo: 10, nome: 'Ração Premium 1kg', preco: 25.0),
      Produto(codigo: 11, nome: 'Brinquedo Mordedor', preco: 15.0),
      Produto(codigo: 12, nome: 'Coleira Ajustável', preco: 20.0),
      Produto(codigo: 13, nome: 'Shampoo Pet', preco: 18.0),
    ];
  }
}
