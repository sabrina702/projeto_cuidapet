import 'item.dart';

class Servico extends Item {
  Servico({required super.codigo, required super.nome, required super.preco});

  static List<Servico> listarServicos() {
    return [
      Servico(codigo: 01, nome: 'Banho', preco: 35.0),
      Servico(codigo: 02, nome: 'Tosa', preco: 50.0),
      Servico(codigo: 03, nome: 'Consulta Veterinária', preco: 70.0),
    ];
  }
}
