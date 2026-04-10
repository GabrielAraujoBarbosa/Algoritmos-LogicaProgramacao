Algoritmo "sequencia_impares"

Var

   // variável para entrada de dados
   valorMaximoDesejado : inteiro

   // variável para processamento de dados
   imparesIntervalo : inteiro

Inicio

   // Introdução
   escreval()
   escreval("  SEQUÊNCIA DOS ÍMPARES ATÉ VALOR QUE DESEJA VER")
   escreval(" ------------------------------------------------")
   escreval("     (Válido Apenas Para Valores Positivos)     ")
   escreval()

   // Laço Condicional Pós-Teste controlando: ENTRADA DE DADOS
   repita
      escreval()
      escreva(" Digite até qual valor deseja ir para obter os ímpares: ")
      leia(valorMaximoDesejado)
   ate (valorMaximoDesejado >= 1)
   
   // SAÍDA DE DADOS para separação(entre leitura(s) e amostra ímpares) e preparação da amostra dos ímpares
   escreval(" ________________________")
   escreval()
   escreval(" Ímpares da Sequência: ")
   escreval()
   
   // OPERAÇÃO DE SAÍDA para organizar o primeiro ímpar
   escreva(" | ")
   para imparesIntervalo de 1 ate valorMaximoDesejado passo 2 faca
      escreva(ImparesIntervalo)
      escreva(" | ")
   fimPara

   escreval()
   escreval()

Fimalgoritmo