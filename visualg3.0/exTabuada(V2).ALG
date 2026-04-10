Algoritmo "tabuada"

Var

   // variável para entrada de dados
   numeroInteiro : inteiro

   // variável para processamento de dados
   somaSucessivaNumeroInteiro : inteiro

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


   // Iniciação de variável
   somaSucessivaNumeroInteiro <- 0
   // Laço Condicional Pré-Teste controlando: PROCESSAMENTO DE DADOS e SAÍDA DE DADOS
    // Laço manipulado manualmente para que sempre execute 10 vezes e depois finalize
   enquanto (somaSucessivaNumeroInteiro <> numeroInteiro * 10) faca // repete enquanto soma sucessiva não chegou ao resultado do último valor da tabuada (numero * 10)
      // Soma repetitiva pelo próprio número digitado para obter o resultado que equivale a multiplicação(mesmo número aparecer numa quantidade de vezes e ser somado)
      somaSucessivaNumeroInteiro <- somaSucessivaNumeroInteiro + numeroInteiro

      // SAÍDA DE DADOS - Mostrando o dado de ENTRADA e dados de PROCESSAMENTO (um sendo processado na própria SAÍDA e o outro processado anteriormente)
      escreval("  ", numeroInteiro ," x ", somaSucessivaNumeroInteiro / numeroInteiro, " = ", somaSucessivaNumeroInteiro)
   fimEnquanto

   // OPERAÇÃO DE SAÍDA DE DADOS - Representação da parte final da tabuada (depois que todos os cálculos foram feitos)
   escreval("__________________________")

Fimalgoritmo