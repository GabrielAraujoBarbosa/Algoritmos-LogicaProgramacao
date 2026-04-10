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


   escreva(" Digite até qual valor deseja ir para obter os ímpares: ")
   leia(valorMaximoDesejado)

   // Laço Condicional Pré-Teste controlando: SAÍDA DE DADOS(Feedback da ENTRADA) e ENTRADA DE DADOS
   enquanto (valorMaximoDesejado < 1) faca // executa enquanto valor digitado não é positivo (é um valor nulo ou negativo)
       escreval(" VALOR INVÁLIDO! DIGITE NÚMERO MAIOR QUE ZERO!")
       escreval()

      escreva(" Digite até qual valor deseja ir para obter os ímpares: ")
      leia(valorMaximoDesejado)
   fimEnquanto

   // SAÍDA DE DADOS para separação(entre leitura(s) e amostra ímpares) e preparação da amostra dos ímpares
   escreval(" ________________________")
   escreval()
   escreval(" Ímpares Possíveis entre 1 e ", valorMaximoDesejado ,":")
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