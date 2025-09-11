import 'dart:io';

import 'package:projeto_cuidapet/controllers/cliente_controller.dart';

class MenuItem {
  ClienteController controller = ClienteController();
  void exibir() {
    while (true) {
      print('\n--- Menu Item ---');
      print('1 - Adicionar ao carrinho');
      print('0 - Voltar');
      stdout.write('Escolha uma opção: ');

      int opcao;
      try {
        opcao = int.parse(stdin.readLineSync()!);
      } catch (e) {
        print('Opção inválida!');
        continue;
      }

      switch (opcao) {
        case 1:
          stdout.write('Digite o código do item que deseja adicionar: ');
          int codigo;
          try {
            codigo = int.parse(stdin.readLineSync()!);
          } catch (e) {
            print('Código inválido!');
            continue;
          }

          // Chama o método do Controller para adicionar ao carrinho
          bool sucesso = controller.adicionarAoCarrinho(carrinho, codigo);

          if (!sucesso) {
            print('Código inválido ou item não encontrado!');
          }
          break;
        case 0:
          print('Voltando...');
          return;
        default:
          print('Opção inválida!');
      }
    }
  }
}
