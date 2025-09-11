import 'carrinho.dart';

class Cliente {
  String nome;
  Carrinho carrinho;

  Cliente({required this.nome}) : carrinho = Carrinho();

}
