class FormPagamento {
  String forma;

  FormPagamento({required this.forma});

  double calcularDesconto(double valor) {
    double desconto = 0;

    switch (forma.toLowerCase()) {
      case 'cartao':
        desconto = 0.0; 
        break;
      case 'pix':
        desconto = 0.0;
        break;
      case 'dinheiro':
        desconto = 0.10; 
        break;
      default:
        desconto = 0.0;
        print('Forma de pagamento não reconhecida. Sem desconto aplicado.');
    }

    return valor * (1 - desconto);
  }
}
