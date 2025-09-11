import 'dart:io';

void menuFuncionario() {
  int opcao;
  do {
    print('\n--- Menu Funcionário ---');
    print('1 - Registrar compra de cliente');
    print('0 - Voltar');
    stdout.write('Escolha uma opção: ');
    opcao = int.parse(stdin.readLineSync()!);

    switch (opcao) {
      case 1:
        registrarCompra();
        break;
      case 0:
        print('Voltando ao menu principal...');
        break;
      default:
        print('Opção inválida!');
    }
  } while (opcao != 0);
}

void registrarCompra() {
 
}
