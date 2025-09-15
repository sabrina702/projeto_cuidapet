import 'dart:io';

import '../controllers/cliente_controller.dart';
import '../models/carrinho.dart';
import '../models/cliente.dart';
import '../models/sessao.dart';
import 'menu_item.dart';

void menuCliente(Sessao sessao) {
  stdout.write('\nBem-vindo! Por favor, digite seu nome: ');
  String nomeCliente = stdin.readLineSync()!;
  Cliente cliente = Cliente(nome: nomeCliente);
  Carrinho carrinho = Carrinho();
  ClienteController controller = ClienteController();
  

  print('\nOlá, ${cliente.nome}! Que bom ter você aqui.');
  
  int opcao;
  do {
    print('\n--- Menu Cliente ---');
    print('1 - Ver promoções de produtos');
    print('2 - Solicitar serviços');
    print('3 - Listar carrinho de compra');
    print('4 - Finalizar carrinho');
    print('0 - Voltar');
    stdout.write('Escolha uma opção: ');
    opcao = int.parse(stdin.readLineSync()!);

    switch (opcao) {
      case 1:
        print('\n');
        controller.listarProdutos(carrinho);
        MenuItem().exibir(controller, carrinho);
        break;
      case 2:
        print('\n');
        controller.listarServicos(carrinho);
        MenuItem().exibir(controller, carrinho);
        break;
      case 3:
        controller.listarCarrinho(carrinho);
        break;
      case 4:
        controller.finalizarCarrinho(carrinho, sessao, cliente);
        break;
      case 0:
        print('Voltando ao menu principal...');
        break;
      default:
        print('Opção inválida!');
    }
  } while (opcao != 0);
}
