Algoritmo "troco_verificado"

Var

   // variáveis para entrada de dados
      // produto escolhido
   quantidadeUnidadesProduto : inteiro
   valorUnitarioProduto : real
      // pagamento cliente
   dinheiroCliente : real

   // variáveis para processamento de dados
   dinheiroTrocoOuDivida : real

Inicio

   escreval("------ CAIXA REGISTRADORA ------")
   escreval()
   escreval()
   
   
   // entrada de dados (com saída para usuário entender dado solicitado)
   escreval("PRODUTO")
   escreva(" Valor Unitário do Produto: ")
   leia(valorUnitarioProduto)
   escreva(" Quantidade de Unidades Compradas: ")
   leia(quantidadeUnidadesProduto)
   escreval()
   
   escreval("PAGAMENTO")
   escreva(" Dinheiro Entregue pelo Cliente: ")
   leia(dinheiroCliente)

   escreval()
   escreval("--------------------------------")
   escreval()
   
   dinheiroTrocoOuDivida <- dinheiroCliente - valorUnitarioProduto * quantidadeUnidadesProduto

   se (dinheiroTrocoOuDivida >= 0) entao
      escreval("Cliente têm TROCO de R$", dinheiroTrocoOuDivida:4:2)
   senao
      dinheiroTrocoOuDivida <- abs(dinheiroTrocoOuDivida)
      escreval("Cliente têm DÍVIDA de R$", dinheiroTrocoOuDivida:4:2)
      escreval("(Dinheiro Insuficiente)")
   fimSe
   
FimAlgoritmo