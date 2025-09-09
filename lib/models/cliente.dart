import 'carrinho.dart';

class Cliente {
  String nome;
  Carrinho carrinho;

  // Construtor
  Cliente({required this.nome}) : carrinho = Carrinho();

}
