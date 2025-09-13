class Sessao {
  int totalClientesAtendidos = 0;
  double totalFaturado = 0.0;

  void registrarVenda(double valor) {
    totalClientesAtendidos++;
    totalFaturado += valor;
  }

  void exibirResumo() {
    print('\n--- Resumo da Sessão ---');
    print('Total de clientes atendidos: $totalClientesAtendidos');
    print('Total faturado: R\$ ${totalFaturado.toStringAsFixed(2)}');
  }
}
