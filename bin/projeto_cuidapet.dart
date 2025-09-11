import 'dart:io';

import 'package:projeto_cuidapet/models/cliente.dart';
import 'package:projeto_cuidapet/models/funcionario.dart';
import 'package:projeto_cuidapet/models/produto.dart';
import 'package:projeto_cuidapet/models/servico.dart';
import 'package:projeto_cuidapet/utils/util.dart';

void main() {
  print('=== Sistema de Auto Atendimento — Cuidapet ===\n');

  while (true) {
    print('Você é:');
    print('1 - Cliente');
    print('2 - Funcionário');
    print('0 - Sair');
    stdout.write('Escolha uma opção: ');
    String? escolha = stdin.readLineSync();

    switch (escolha) {
      case '1':
        fluxoCliente();
        break;
      case '2':
        fluxoFuncionario();
        break;
      case '0':
        print('\nEncerrando o sistema... Até logo!');
        return;
      default:
        print('\nOpção inválida. Tente novamente.\n');
    }
  }
}

void fluxoCliente() {
  stdout.write('\nDigite seu nome: ');
  String? nomeInput = stdin.readLineSync();

  if (nomeInput == null || nomeInput.trim().isEmpty) {
    print('Nome inválido. Voltando ao menu inicial.\n');
    return;
  }

  var cliente = Cliente(nome: nomeInput.trim());
  print('\nOlá, ${cliente.nome}! Seja bem-vindo(a).\n');

  while (true) {
    print('----- Menu do Cliente -----');
    print('1 - Ver promoções de produtos');
    print('2 - Solicitar serviços');
    print('3 - Listar carrinho de compra');
    print('4 - Finalizar carrinho');
    print('0 - Voltar ao menu inicial');

    stdout.write('Escolha uma opção: ');
    String? opcao = stdin.readLineSync();

    switch (opcao) {
      case '1':
        mostrarLista<Produto>(Produto.listarProdutos(), 'Promoções de Produtos');
        menuAdicionarAoCarrinho<Produto>(Produto.listarProdutos());
        break;
      case '2':
        mostrarLista<Servico>(Servico.listarServicos(), 'Serviços Disponíveis');
        menuAdicionarAoCarrinho<Servico>(Servico.listarServicos());
        break;
      case '3':
        print('\n[Carrinho - a implementar]\n');
        break;
      case '4':
        print('\n[Finalizar carrinho - a implementar]\n');
        break;
      case '0':
        print('\nVoltando ao menu inicial...\n');
        return;
      default:
        print('\nOpção inválida. Tente novamente.\n');
    }
  }
}

void fluxoFuncionario() {
  stdout.write('\nDigite o login: ');
  String? login = stdin.readLineSync();
  stdout.write('Digite a senha: ');
  String? senha = stdin.readLineSync();

  if (login != Funcionario.loginCorreto || senha != Funcionario.senhaCorreta) {
    print('\nLogin ou senha incorretos. Voltando ao menu inicial...\n');
    return;
  }

  print('\nAcesso concedido à Área Restrita!\n');

  while (true) {
    print('----- Menu do Funcionário -----');
    print('1 - Registrar venda manualmente');
    print('2 - Controlar pagamentos');
    print('0 - Voltar ao menu inicial');

    stdout.write('Escolha uma opção: ');
    String? opcao = stdin.readLineSync();

    switch (opcao) {
      case '1':
        print('\n[Registrar venda - a implementar]\n');
        break;
      case '2':
        print('\n[Controlar pagamento - a implementar]\n');
        break;
      case '0':
        print('\nVoltando ao menu inicial...\n');
        return;
      default:
        print('\nOpção inválida. Tente novamente.\n');
    }
  }
}
