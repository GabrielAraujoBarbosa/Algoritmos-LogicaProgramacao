Algoritmo "tabuada"

Var

   // variável para entrada de dados
   numeroInteiro : inteiro

   // variável para processamento de dados
   variavelControle : inteiro

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


   // Iniciação de variável (começando com zero para que a troca pelo número seguinte ocorra no laço)
   variavelControle <- 0
   // Laço Condicional Pré-Teste controlando: PROCESSAMENTO DE DADOS e SAÍDA DE DADOS
    // Laço manipulado manualmente para que sempre execute 10 vezes e depois finalize
   enquanto (variavelControle < 10) faca // repete enquanto variável de controle for menor que 10 (porque quando valor for alterado pra 10 já será mostrado a SAÍDA, antes da análise para terminar o laço)
      // Valor da variável é alterado antes da saída, executando este bloco a partir do 0 e alterando depois para +1. Assim, mostrando de 1 a 10.

      // Incrementação Manual da Variável
      variavelControle <- variavelControle + 1

      // SAÍDA DE DADOS - Mostrando o dado de ENTRADA e dados de PROCESSAMENTO (um já processado anteriormente e o outro sendo processado na própria SAÍDA)
      escreval("  ", numeroInteiro ," x ", variavelControle, " = ", numeroInteiro * variavelControle)
   fimEnquanto

   // OPERAÇÃO DE SAÍDA DE DADOS - Representação da parte final da tabuada (depois que todos os cálculos foram feitos)
   escreval("__________________________")

Fimalgoritmo