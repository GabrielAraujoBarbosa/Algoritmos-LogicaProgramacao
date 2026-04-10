Algoritmo "numeroSecreto"

Var

   // Variável do Jogo
   numeroSecreto : inteiro

   // variável para entrada de dados
   numeroDigitado : inteiro

   // Variáveis para processamento de dados
   somaTotal, contador : inteiro

Inicio

   // Determinando o Valor do Número Secreto
   numeroSecreto <- 10

   // Atribuição de Valor Aleatório para evitar igualdade de valores ao numeroSecreto
   numeroDigitado <- 29338484

   escreval("   --------------------")
   escreval("      NÚMERO SECRETO   ")
   escreval("   --------------------")
   escreval()

   // Estrutura de Repetição Controlando Indefinidamente: ENTRADA DE DADOS e PROCESSAMENTO DE DADOS
   enquanto (numeroDigitado <> numeroSecreto) faca
      contador <- contador + 1
      escreva(" Descubra o número secreto: ")
      leia(numeroDigitado)
      somaTotal <- somaTotal + int(numeroDigitado)
   fimEnquanto
   
   // SAÍDA DE DADOS
   escreval()
   escreval(" Você descobriu! O número secreto era ", numeroSecreto)
   escreval(" A soma de todos números digitados é ", somaTotal)
   
Fimalgoritmo