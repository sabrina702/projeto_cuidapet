import 'dart:io';

import 'package:projeto_cuidapet/controllers/funcionario_controller.dart';
import 'package:projeto_cuidapet/models/funcionario.dart';
import 'package:projeto_cuidapet/models/sessao.dart';
import 'package:projeto_cuidapet/view/menu_cliente.dart';
import 'package:projeto_cuidapet/view/menu_funcionario.dart';

void menuPrincipal() {
  Sessao sessao = Sessao();

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
        menuCliente(sessao);
        break;
      case 2:
        stdout.write('Digite o login: ');
        String login = stdin.readLineSync() ?? '';

        stdout.write('Digite a senha: ');
        String senha = stdin.readLineSync() ?? '';

        Funcionario funcionario = Funcionario(login: login, senha: senha);
        FuncionarioController controller = FuncionarioController();

        if (controller.autenticar(funcionario)) {
          menuFuncionario(sessao);
        } else {
          print('Acesso negado! Login ou senha incorretos.');
        }
        break;
      case 0:
        print('Saindo do sistema...');
        sessao.exibirResumo();
        break;
      default:
        print('Opção inválida!');
    }
  } while (opcao != 0);
}
