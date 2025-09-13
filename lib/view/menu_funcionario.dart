import 'dart:io';

import 'package:projeto_cuidapet/controllers/funcionario_controller.dart';
import 'package:projeto_cuidapet/models/sessao.dart';

void menuFuncionario(Sessao sessao) {
  int opcao;
  FuncionarioController controller = FuncionarioController();
  
  do {
    print('\n--- Menu Funcionário ---');
    print('1 - Registrar venda');
    print('2 - Mostrar total de vendas do dia');
    print('0 - Voltar');
    stdout.write('Escolha uma opção: ');
    opcao = int.parse(stdin.readLineSync()!);

    switch (opcao) {
      case 1:
        controller.registrarVenda(sessao);
        break;
      case 2:
        sessao.exibirResumo();
        break;
      case 0:
        print('Voltando ao menu principal...');
        break;
      default:
        print('Opção inválida!');
    }
  } while (opcao != 0);
}

