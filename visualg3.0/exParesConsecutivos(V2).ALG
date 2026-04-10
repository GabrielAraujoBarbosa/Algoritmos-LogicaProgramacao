Algoritmo "pares_consecutivos"

Var

   // variável entrada de dados
   numeroInteiro : inteiro
   
   // variáveis processamento de dados
   somaCincoParesConsecutivos : inteiro
   quantidadeLeituras : inteiro

Inicio

   // Iniciação de variáveis
   quantidadeLeituras <- 0


   // Introdução
   escreval(" SOMA DOS 5 NÚMEROS PARES CONSECUTIVOS (QUE VEM DEPOIS)")
   escreval()
   escreval(" (Incluindo Número Digitado se for par e excluindo se é ímpar)")
   escreval("--------------------------------------------------------------")
   escreval()
   

   // Atribuindo valor manualmente a variável para que laço possa ser executado (condição ser satisfeita)
   numeroInteiro <- 1

   // Laço Condicional Pré-Teste controlando: ENTRADA DE DADOS e PROCESSAMENTO DE DADOS
    // Laço foi manipulado manualmente para que haja execução do bloco pelo menos uma vez (para que leitura seja feita)
   enquanto (numeroInteiro <> 0) faca

      // Estrutura Condicional Simples controlando: PROCESSAMENTO DE DADOS(análise do número se é positivo ou negativo)
      SE (quantidadeLeituras > 0) ENTAO // se já houve leitura

         // Estrutura Condicional Composta (contendo outra mesma aninhada) controlando: PROCESSAMENTO DE DADOS(análise do número se é par ou ímpar) e SAÍDA DE DADOS(dizendo quando número é negativo ou mostrando a soma dos 5 pares)
         Se (numeroInteiro > 0) Entao // se numero digitado é positivo

            // Estrutura Condicional Composta controlando: PROCESSAMENTO DE DADOS(cálculo da soma da sequência dos 5 pares nos 2 casos)
            se (numeroInteiro % 2 = 0) entao // e se esse número positivo for par
               // inclui o próprio número digitado na sequência dos 5 pares

               //         1º par (mesmo digitado) + 2º próximo par  +   3º próximo par     +    4º próximo par   +   5º próximo par
               somaCincoParesConsecutivos <- numeroInteiro + (numeroInteiro + 2) + (numeroInteiro + 4) + (numeroInteiro + 6) + (numeroInteiro + 8)
            senao // e se esse número positivo por ímpar
               // Exclui o número digitado para obter os 5 pares depois dele (a partir dele + 1)

               // obtendo o 1º par (número depois do ímpar digitado)
               numeroInteiro <- numeroInteiro + 1

               //         1º par (depois do ímpar) + 2º próximo par  +   3º próximo par    +    4º próximo par   +   5º próximo par
               somaCincoParesConsecutivos <- numeroInteiro + (numeroInteiro + 2) + (numeroInteiro + 4) + (numeroInteiro + 6) + (numeroInteiro + 8)
            fimse

            // 1ª Alternativa - SAÍDA DE DADOS (depois do processamento da soma sequência 5 pares do numero positivo)
            escreval(" (Somando a partir de ", numeroInteiro, ")")
            escreval("   Soma dos 5 Pares = ", somaCincoParesConsecutivos)

         Senao // se numero digitado é negativo
         
            // 2ª Alternativa - SAÍDA DE DADOS (para número digitado é negativo)
            escreval(" Inválido! Precisa ser POSITIVO!")

         FimSe

         // SAÍDA DE DADOS - Para separar processamento anterior(que fez SAÍDA para número negativo ou soma pares) da próxima ENTRADA/SAÍDA
         escreval("________")
         escreval()
      FIMSE

      // OPERAÇÃO DE ENTRADA DE DADOS (junto com SAÍDA)
      escreva(" Digite um número inteiro: ")
      leia(numeroInteiro)
      escreval()
      
      // Contagem da quantidade de ENTRADAS que ocorreram (para monitorar e saber quando fazer o PROCESSAMENTO)
      quantidadeLeituras <- quantidadeLeituras + 1
   fimEnquanto


   // SAÍDA DE DADOS Final (para indicar o motivo do fim do programa)
   escreval(" O número ZERO é o critério de parada. Até mais!")
   escreval("-------------------------------------------------------------")

Fimalgoritmo