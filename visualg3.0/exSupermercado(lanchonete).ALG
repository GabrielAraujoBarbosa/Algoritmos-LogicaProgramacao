Algoritmo "supermercado(lanchonete)"

Var

   // variáveis para entrada de dados
   codigoProduto, quantidadeProdutosMesmoCodigo : inteiro
   variavelLixo : caractere

   // variável para processamento de dados
   valorPagar : real
   tipoProduto : caractere
   condicaoParaRepetir : logico

Inicio

   // regras introdutórias
   escreval("---------------------------------")
   escreval("        REGRAS DE NEGÓCIO        ")
   escreval("---------------------------------")
   escreval()
   escreval("CADA PRODUTO PODE TER ALGUM DOS CÓDIGOS: ")
   escreval()
   escreval(" [1] Produtos de Limpeza = R$ 2.50")
   escreval(" [2] Produtos de Higiene = R$ 4.00")
   escreval(" [3] Bebidas = R$ 5.50")
   escreval(" [4] Frutas = R$ 6.25")
   escreval(" [5] Legumes = R$ 8.00")
   escreval(" [6] Alimentos Congelados = R$ 10.00")
   escreval(" [7] Roupas (Vestuário) = R$ 20.00")
   escreval(" [8] Brinquedos = R$ 30.00")
   escreval(" [9] Produtos de Beleza = R$ 50.00")
   leia(variavelLixo)
   limpaTela()
   
    // Valor Inicial para poder realizar a estrutura Enquanto
   condicaoParaRepetir <- verdadeiro

   enquanto (condicaoParaRepetir) faca
      // introdução
      escreval("---------------------------------")
      escreval("     SUPERMERCADO 1DESCONTÃO     ")
      escreval("---------------------------------")
      escreval()
       
      // entrada de dados (junto da saída)
      escreva(" Código do Produto: ")
      leia(codigoProduto)
      escreva(" Quantidade de produtos com este código: ")
      leia(quantidadeProdutosMesmoCodigo)

      // verificação de entradas inválidas para repetir a estrutura Enquanto
      condicaoParaRepetir <- (codigoProduto < 1) OU (codigoProduto > 9) OU (quantidadeProdutosMesmoCodigo < 1)

      // estrutura condicional simples (executada caso entradas inválidas)
      se (condicaoParaRepetir) entao
         escreval()
         escreval("---------------------------------")
         escreval(" DIGITE UM CÓDIGO e QUANTIDADE VÁLIDA!")
         escreva(" (Aperte enter)")
         leia(variavelLixo)
         limpaTela()
      fimSe

   fimEnquanto


   escolha codigoProduto
      caso 1
         valorPagar <- 2.50 * quantidadeProdutosMesmoCodigo
         tipoProduto <- "de Limpeza"
      caso 2
         valorPagar <- 4.00 * quantidadeProdutosMesmoCodigo
         tipoProduto <- "de Higiene"
      caso 3
         valorPagar <- 5.50 * quantidadeProdutosMesmoCodigo
         tipoProduto <- "referente a Bebidas"
      caso 4
         valorPagar <- 6.25 * quantidadeProdutosMesmoCodigo
         tipoProduto <- "referente a Frutas"
      caso 5
         valorPagar <- 8.00 * quantidadeProdutosMesmoCodigo
         tipoProduto <- "referente a Legumes"
      caso 6
         valorPagar <- 10.00 * quantidadeProdutosMesmoCodigo
         tipoProduto <- "de Alimentos Congelados"
      caso 7
         valorPagar <- 20.00 * quantidadeProdutosMesmoCodigo
         tipoProduto <- "de Roupas"
      caso 8
         valorPagar <- 30.00 * quantidadeProdutosMesmoCodigo
         tipoProduto <- "referente a Brinquedos"
      caso 9
         valorPagar <- 50.00 * quantidadeProdutosMesmoCodigo
         tipoProduto <- "de Beleza"
      outrocaso
         escreval("ERRO INESPERADO!!! (ESCOLHA)")
   fimEscolha

   escreval()
   escreval("---------------------------------")
   escreval()
   
   // estrutura condicional composta para saída de dados
   se quantidadeProdutosMesmoCodigo > 1 entao
      escreval(" Os produtos ", tipoProduto, " custam R$", valorPagar:4:2)
   senao
      escreval(" O produto ", tipoProduto, " custa R$", valorPagar:4:2)
   fimSe
   
Fimalgoritmo