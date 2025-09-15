# 🐾 Sistema CuidaPet

## 📖 Descrição
O **CuidaPet** é um sistema de autoatendimento para clientes de pet shop, desenvolvido em **Dart**.  
Ele permite que clientes adicionem produtos e serviços ao carrinho, que funcionários gerenciem atendimentos e que relatórios de faturamento sejam gerados ao final do expediente.  
O sistema foi construído com base no paradigma de **programação orientada a objetos (POO)** e no padrão arquitetural **MVC**.

---

## ⚙️ Requisitos para execução
- [Dart SDK](https://dart.dev/get-dart) versão **3.x** ou superior  
- Sistema operacional: Windows, Linux ou macOS  
- Editor de código recomendado: [Visual Studio Code](https://code.visualstudio.com/) com extensão oficial do Dart  

---

## 🚀 Como rodar localmente

1. **Clone o repositório**:
   ```bash
   git clone https://github.com/seu-usuario/projeto-cuidapet.git
   cd projeto-cuidapet
2. Rode no terminal
   ```bash
   Dart run

---

## 🚀 Instruções de uso
## 1) Fluxo inicial
Ao executar você verá o Menu Principal:
```
--- Sistema CuidaPet ---
1 - Cliente
2 - Funcionário
0 - Sair
Escolha uma opção:
```

## 2) Como Cliente (opção 1)
O sistema pede seu nome (para personalizar).
Em seguida aparece o Menu Cliente:
```
--- Menu Cliente ---
1 - Ver promoções de produtos
2 - Solicitar serviços
3 - Listar carrinho de compra
4 - Finalizar carrinho
0 - Voltar
Escolha uma opção:
```

### Exemplo de uso (Cliente):
Digite 1 → são listados produtos com códigos (ex.: 1, 2, 3, 4) e valores.
Após listar, o menu de itens (MenuItem) aparece:
```
--- Menu Item ---
1 - Adicionar ao carrinho
0 - Voltar
Escolha uma opção:
```
Ao escolher 1, informe o código numérico do produto (ex.: 1). O Controller tentará adicionar ao carrinho.

Para finalizar a compra, escolha 4 no Menu Cliente. O sistema exibirá o MenuFormaPagamento:
```
--- Formas de Pagamento ---
1 - Dinheiro (10% de desconto)
2 - Cartão
3 - PIX
Escolha uma opção:
```

* Se 1 (dinheiro): aplica desconto de 10% no total.
* Após confirmar, o sistema gera o recibo (imprime no terminal) e registra a venda na Sessao.
* O carrinho é então limpo.

**Observações importantes:**
* O Carrinho possui limite padrão de 3 itens. Ao tentar adicionar além disso, o sistema alerta e não adiciona.
* Os códigos de itens devem corresponder ao que foi listado (ex.: 1,2,3...). Digite conforme exibido.

## 3) Como Funcionário (opção 2)
Ao entrar como funcionário, o sistema solicita login e senha.
Credenciais padrão (se mantidas no projeto): login: admin, senha: cuidapetrestrito
Após autenticação, aparece o Menu Funcionário:
```
--- Menu Funcionário ---
1 - Registrar venda
2 - Mostrar total de vendas do dia
0 - Voltar
```

* **Registrar venda**: funcionário informa nome do cliente, valor da compra e escolhe forma de pagamento (o desconto é aplicado usando a mesma rotina do cliente). A venda é registrada na Sessao e no total do funcionário.
* **Mostrar total de vendas do dia**: imprime o total acumulado.

## 4) Encerrando (opção 0 no Menu Principal)
Ao sair do sistema, você pode exibir o resumo da Sessao:
* Número total de clientes atendidos
* Valor total faturado

---

## 📚 Wiki do Projeto

Toda a documentação detalhada do **CuidaPet** está disponível na Wiki do projeto:

[📖 Acessar Wiki do CuidaPet](https://github.com/sabrina702/projeto_cuidapet/wiki)
