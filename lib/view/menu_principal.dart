import 'dart:io';

import 'package:projeto_cuidapet/view/menu_cliente.dart';
import 'package:projeto_cuidapet/view/menu_funcionario.dart';

void menuPrincipal() {
  int opcao;
  do {
    print('\n--- Sistema CuidaPet ---');
    print('1 - Cliente');
    print('2 - Funcionário');
    print('0 - Sair');
    stdout.write('Escolha uma opção: ');
    opcao = int.parse(stdin.readLineSync()!);

    switch (opcao) {
      case 1:
        menuCliente();
        break;
      case 2:
        menuFuncionario();
        break;
      case 0:
        print('Saindo do sistema...');
        break;
      default:
        print('Opção inválida!');
    }
  } while (opcao != 0);
}
