import 'item.dart';

class Produto extends Item {
  Produto({required super.codigo, required super.nome, required super.preco});


  static List<Produto> listarProdutos() {
    return [
      Produto(codigo: 'P01', nome: 'Ração Premium 1kg', preco: 25.0),
      Produto(codigo: 'P02', nome: 'Brinquedo Mordedor', preco: 15.0),
      Produto(codigo: 'P03', nome: 'Coleira Ajustável', preco: 20.0),
      Produto(codigo: 'P04', nome: 'Shampoo Pet', preco: 18.0),
    ];
  }
}
