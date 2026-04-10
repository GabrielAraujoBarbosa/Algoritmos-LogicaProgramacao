Algoritmo "dentro_fora"

Var

   // Variáveis para entrada de dados
   quantidadeDesejadaNumerosInteiros, numerosInteiros : inteiro

   // Variáveis para processamento de dados
   contagemExecucoes : inteiro
   quantidadeNumerosDentroIntervalo, quantidadeNumerosForaIntervalo : inteiro
   
Inicio

   // Iniciação de variáveis que contam quantidade através de soma acumulada
   quantidadeNumerosDentroIntervalo <- 0
   quantidadeNumerosForaIntervalo <- 0

   // Introdução
   escreval("    NÚMEROS INTEIROS DENTRO E FORA DO INTERVALO   ")
   escreval(" -------------------------------------------------")

   // Laço Condicional Pós-Teste controlando: ENTRADA DE DADOS (junto com SAÍDA)
   repita
      escreval()
      escreva(" Quantidade de números que deseja digitar: ")
      leia(quantidadeDesejadaNumerosInteiros)
   ate (quantidadeDesejadaNumerosInteiros > 0) // restringindo ENTRADA para aceitar apenas números que representam quantidade(números positivos)

   // OPERAÇÃO DE SAÍDA para separação entre quantidade digitada e, posteriormente, número(s) digitado(s)
   escreval("__________________________")
   
   // Laço Incondicional controlando: ENTRADA DE DADOS e PROCESSAMENTO DE DADOS
    // Laço executa conforme quantidade desejada
   para contagemExecucoes de 1 ate quantidadeDesejadaNumerosInteiros passo 1 faca
      // ENTRADA (junto com SAÍDA)
      escreval()
      escreva(" Digite o ", contagemExecucoes, "º número inteiro: ")
      leia(numerosInteiros)
      
      // Análise do número digitado
      se (numerosInteiros >= 10) E (numerosInteiros <= 20) entao // se numero está no intervalo de 10 a 20 (incluindo extremos)
         // dentro
         quantidadeNumerosDentroIntervalo <- quantidadeNumerosDentroIntervalo + 1
      senao // se fora do intervalo
         quantidadeNumerosForaIntervalo <- quantidadeNumerosForaIntervalo + 1
      fimSe
   fimPara

   // SAÍDA DE DADOS para amostragem do que foi processado(quantidade de números Dentro e Fora)
   escreval("__________________________")
   escreval()
   escreval(" Quantidade de números que estão entre 10 e 20: ", quantidadeNumerosDentroIntervalo)
   escreval(" Quantidade de números fora do intervalo acima: ", quantidadeNumerosForaIntervalo)
   escreval()

Fimalgoritmo