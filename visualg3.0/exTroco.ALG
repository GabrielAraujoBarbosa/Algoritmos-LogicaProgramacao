Algoritmo "troco"

Var

   // dados do cliente (para a entrada de dados)
   precoUnitario, dinheiroPagamento : real
   quantidadeUnidades : inteiro

   // preços calculados (para o processamento de dados)
   valorTroco, precoTotalPagar : real

Inicio

   // Perfurmaria
   escreval("MERCADINHO GABRIELs")
   escreval()
   
   // sequência de entrada de dados
   // (usando a saída para o usuário informar o dado desejado)
   escreva("Qual o preço do produto que deseja comprar? R$")
   leia(precoUnitario)
   escreva("Quantas unidades desse produto vai levar? ")
   leia(quantidadeUnidades)

   // 1º Processamento de dados
   precoTotalPagar <- precoUnitario * quantidadeUnidades


   // operação de saída de dados
   escreval()
   escreval("O valor total a pagar é R$", precoTotalPagar:1:2)

   // operação de entrada de dados
   // (usando a saída para o usuário informar o dado desejado)
   escreva("Com quantos reais em dinheiro você irá pagar? R$")
   leia(dinheiroPagamento)
   
   // 2º Processamento de dados
   valorTroco <- dinheiroPagamento - precoTotalPagar
   
   // Espaçamento
   escreval()
   
   // Estrutura de Decisão e Saída de Dados
   // ação tomada com base na variável, assim mostrando a saída desejada
   se (valorTroco >= 0) entao
      escreval("COMPRA EFETUADA!")
      escreval("Você pagou R$", dinheiroPagamento:1:2, " pelo valor de R$", precoTotalPagar:1:2)
      escreval("Você receberá o troco de R$", valorTroco:1:2)
   senao
      escreval("Você não pode pagar R$", dinheiroPagamento:1:2, " pelo valor total de R$", precoTotalPagar:1:2)
      escreval("COMPRA CANCELADA!")
   fimSe

Fimalgoritmo