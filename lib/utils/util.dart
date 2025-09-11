import 'dart:io';
import '../models/item.dart';
import '../models/carrinho.dart';

  void mostrarLista<T extends Item>(List<T> lista, String titulo) {
    print('\n--- $titulo ---');
    for (var item in lista) {
      item.mostrar();
    }
    print('');
  }

  void menuAdicionarAoCarrinho<T extends Item>(
      List<T> lista) {
    while (true) {
      print('\nO que deseja fazer?');
      print('1 - Adicionar item ao carrinho');
      print('0 - Voltar');

      stdout.write('Escolha uma opção: ');
      String? opcao = stdin.readLineSync();

      switch (opcao) {
        case '1':
          stdout.write('Digite o código do item: ');
        case '0':
          return;
        default:
          print('Opção inválida.');
      }
    }
  }