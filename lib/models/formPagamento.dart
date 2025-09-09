class FormPagamento {
  String forma;

  // Construtor
  FormPagamento({required this.forma});

  // Calcula desconto baseado na forma de pagamento
  double calcularDesconto(double valor) {
    double desconto = 0;

    switch (forma.toLowerCase()) {
      case 'cartao':
        desconto = 0.05; // 5% de desconto
        break;
      case 'pix':
        desconto = 0.10; // 10% de desconto
        break;
      case 'dinheiro':
        desconto = 0.0; // sem desconto
        break;
      default:
        desconto = 0.0;
        print('Forma de pagamento não reconhecida. Sem desconto aplicado.');
    }

    return valor * (1 - desconto);
  }
}
