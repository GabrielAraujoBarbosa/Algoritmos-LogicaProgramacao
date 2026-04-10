Algoritmo "diaSemana"

Var

   // variável para entrada de dados
   numeroInteiro : inteiro
   variavelLixo : caractere
   
   
   // variável para processamento de dados
   diaSemana : caractere


Inicio

   numeroInteiro <- 0

   enquanto (numeroInteiro < 1) OU (numeroInteiro > 7) faca
      escreva("Digite um número inteiro (1 até 7): ")
      leia(numeroInteiro)
      
      escreval()
      
      se (numeroInteiro < 1) OU (numeroInteiro > 7) entao
         escreval("Digite um valor válido! (Pressione enter)")
         leia(variavelLixo)
         limpaTela()
      fimSe
   fimEnquanto
   
   escreval()
   
   escolha numeroInteiro
   caso 1
      diaSemana <- "DOMINGO"
   caso 2
      diaSemana <- "SEGUNDA-FEIRA"
   caso 3
      diaSemana <- "TERÇA-FEIRA"
   caso 4
      diaSemana <- "QUARTA-FEIRA"
   caso 5
      diaSemana <- "QUINTA-FEIRA"
   caso 6
      diaSemana <- "SEXTA-FEIRA"
   caso 7
      diaSemana <- "SÁBADO"
   fimEscolha
   
   escreval("O número ", numeroInteiro, " equivale a ", diaSemana)
   
Fimalgoritmo