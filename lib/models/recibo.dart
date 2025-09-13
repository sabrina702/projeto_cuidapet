import 'cliente.dart';

class Recibo {
  final Cliente cliente;
  final List itens;
  final double total;

  Recibo({
    required this.cliente,
    required this.itens,
    required this.total,
  });

  void imprimir() {
    print('\n=== Recibo CuidaPet ===');
    print('Cliente: ${cliente.nome}');
    print('-------------------------');
    for (var item in itens) {
      print('${item.codigo} - ${item.nome} - R\$ ${item.preco.toStringAsFixed(2)}');
    }
    print('-------------------------');
    print('Total a pagar: R\$ ${total.toStringAsFixed(2)}');
    print('=========================\n');
  }
}
