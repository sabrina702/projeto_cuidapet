import 'dart:io';

import 'package:projeto_cuidapet/models/formPagamento.dart';
import 'package:projeto_cuidapet/models/funcionario.dart';
import 'package:projeto_cuidapet/models/sessao.dart';
import 'package:projeto_cuidapet/view/menu_formPagamento.dart';

class FuncionarioController {
  static const String loginCorreto = 'admin';
  static const String senhaCorreta = 'cuidapetrestrito';

  bool autenticar(Funcionario funcionario) {
    return funcionario.login == loginCorreto && funcionario.senha == senhaCorreta;
  }

  void registrarVenda(Sessao sessao) {
    stdout.write('Nome do cliente: ');
    String nomeCliente = stdin.readLineSync() ?? 'Cliente';

    stdout.write('Valor da compra: ');
    double? valorCompra = double.tryParse(stdin.readLineSync() ?? '');
    if (valorCompra == null || valorCompra <= 0) {
      print('Valor inválido!');
      return;
    }

    int opcao = MenuFormaPagamento.exibir();

    String forma;
    switch (opcao) {
      case 1:
        forma = 'dinheiro';
        break;
      case 2:
        forma = 'cartao';
        break;
      case 3:
        forma = 'pix';
        break;
      default:
        forma = 'cartao';
    }

    FormPagamento pagamento = FormPagamento(forma: forma);
    double valorFinal = pagamento.calcularDesconto(valorCompra);

    sessao.registrarVenda(valorFinal);

    print(
        'Venda registrada para $nomeCliente no valor de R\$ ${valorFinal.toStringAsFixed(2)}');
  }
}
