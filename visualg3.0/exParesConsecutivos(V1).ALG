Algoritmo "pares_consecutivos"

Var

   // variável para entrada de dados
   numeroInteiro : inteiro
   
   // variável para processamento de dados
   somaNumerosParesConsecutivos : inteiro

Inicio

   // Introdução
   escreval(" SOMA DOS 5 NÚMEROS PARES CONSECUTIVOS (QUE VEM DEPOIS)")
   escreval()
   escreval(" (Incluindo Número Digitado se for par e excluindo se é ímpar)")
   escreval("--------------------------------------------------------------")
   escreval()

   // 1ª ENTRADA DE DADOS - Inicial (junto com SAÍDA)
   escreva(" Digite o número inteiro: ")
   leia(numeroInteiro)
   escreval()
   
   // Laço Condicional Pré-Teste controlando: ENTRADA DE DADOS e PROCESSAMENTO DE DADOS
   enquanto (numeroInteiro <> 0) faca

      // Estrutura Condicional Composta (que contém outra mesma aninhada) controlando: PROCESSAMENTO DE DADOS e SAÍDA DE DADOS
      SE (numeroInteiro > 0) ENTAO // se número digitado é positivo

         // Estrutura Condicional Composta controlando: PROCESSAMENTO DE DADOS
         se (numeroInteiro % 2 <> 0) entao // e se esse numero positivo é ímpar
         // então adiciona 1 para obter o 1º par a partir do ímpar digitado
            numeroInteiro <- numeroInteiro + 1
         fimSe
         // Pula esta estrutura se número digitado for par (porque se foi digitado par começamos a partir dele - incluso)

         // somando os 5 números pares (a partir do 1º par possível - pode ser o próprio digitado ou o que vem após o ímpar digitado)
         somaNumerosParesConsecutivos <- numeroInteiro + (numeroInteiro + 2) + (numeroInteiro + 4) + (numeroInteiro + 6) + (numeroInteiro + 8)

         // SAÍDA DE DADOS
         escreval(" (Somando a partir de ", numeroInteiro, ")")
         escreval("   Soma dos 5 Pares = ", somaNumerosParesConsecutivos)
         
      SENAO  // se número digitado é negativo
         // OPERAÇÃO DE SAÍDA DE DADOS
         escreval(" Inválido! Precisa ser POSITIVO!")
      FIMSE

      // Separação entre SAÍDAS (mostrando dados processados) realizadas com base na ENTRADA
      escreval("_______")
      escreval()
      
      // ENTRADA DE DADOS - Repetida (junto com SAÍDA)
      escreva(" Digite o número inteiro: ")
      leia(numeroInteiro)
      escreval()
   fimEnquanto

   // SAÍDA DE DADOS Final (para indicar o motivo do fim do programa)
   escreval(" O número ZERO é o critério de parada. Até mais!")
   escreval("-------------------------------------------------------------")

Fimalgoritmo