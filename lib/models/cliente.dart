import 'carrinho.dart';

class Cliente {
  String nome;
  Carrinho carrinho;

  Cliente({required this.nome}) : carrinho = Carrinho();

  String get getnome => nome;

  set setnome(String novoNome) {
    if (novoNome.trim().isEmpty) {
      throw Exception('Nome inválido.');
    }
    nome = novoNome;
  }
  

}
