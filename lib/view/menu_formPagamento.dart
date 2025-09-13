import 'dart:io';

class MenuFormaPagamento {
  static int exibir() {
    print('\n--- Formas de Pagamento ---');
    print('1 - Dinheiro (10% de desconto)');
    print('2 - Cartão');
    print('3 - PIX');
    stdout.write('Escolha a forma de pagamento: ');

    int? opcao = int.tryParse(stdin.readLineSync() ?? '');
    return opcao ?? 0; 


  }
}
