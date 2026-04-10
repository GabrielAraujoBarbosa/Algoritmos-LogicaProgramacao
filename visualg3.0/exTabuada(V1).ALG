Algoritmo "tabuada"

Var

   // variável para entrada de dados
   numeroInteiro : inteiro
   
   // variável para processamento de dados
   variavelControle1ao10 : inteiro
   
Inicio

   // Introdução
   escreval("     CÁLCULO DA TABUADA    ")
   escreval(" --------------------------")
   escreval()
   
   // ENTRADA DE DADOS (junto com SAÍDA)
   escreva(" Digite o número que deseja a Tabuada: ")
   leia(numeroInteiro)


   // OPERAÇÃO DE SAÍDA DE DADOS - Representação da parte inicial para amostragem da tabuada
   escreval("__________________________")
   escreval()
   escreval(" TABUADA DO ", numeroInteiro)
   escreval()

   // Laço Incondicional controlando: SAÍDA DE DADOS (mostrando dado sendo processado nela)
    // Laço realiza o cálculo da tabuada do número digitado (1-10)
   para variavelControle1ao10 de 1 ate 10 passo 1 faca // repete o bloco começando por 1 e vai até 10 (conta de 1 até 10)
      // SAÍDA DE DADOS (Mostrando o cálculo do valor entrada(fixo) multiplicado pela variavelControle - quem assume os valores da contagem de 1 até 10)
      escreval("  ", numeroInteiro ," x ", variavelControle1ao10, " = ", numeroInteiro * variavelControle1ao10)
   fimPara

   // OPERAÇÃO DE SAÍDA DE DADOS - Representação da parte final da tabuada (depois que todos os cálculos foram feitos)
   escreval("__________________________")

Fimalgoritmo