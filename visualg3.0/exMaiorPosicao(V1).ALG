Algoritmo "maior_posicao"

Var

   // Variáveis para Algoritmo
   quantidadeTotalNumeros, contagemSolicitacoes : inteiro
   
   // Variáveis usadas como referência (pois um bloco "gera" esses 2 valores e depois precisa-se utilizar em outro bloco também)
   maiorNumeroReal : real
   indiceMaiorNumeroReal : inteiro

   // Vetor Global para armazenar números digitados
   numerosReaisDigitados : vetor[0..9] de real


Procedimento introducaoPrograma()
Inicio
   escreval("     MAIOR NUMERO (POSIÇÃO)    ")
   escreval(" ------------------------------")
   escreval()
FimProcedimento

Funcao pedirQuantidadeNumeros():inteiro
Var
   quantidadeDigitada : inteiro
   variavelLixo : caractere
Inicio
   // ENTRADA Inicial (1ª vez)
   escreva(" Digite a quantidade de números que deseja digitar: ")
   leia(quantidadeDigitada)

   enquanto (quantidadeDigitada < 1) OU (quantidadeDigitada > 10) faca
      // Feedback de valor inválido
      escreval()
      escreval(" QUANTIDADE INVÁLIDA! DIGITE ENTRE 1 E 10!")
      leia(variavelLixo)
      limpaTela()

      introducaoPrograma()
      // ENTRADA Repetida
      escreva(" Digite a quantidade de números que deseja digitar: ")
      leia(quantidadeDigitada)
   fimEnquanto

   retorne quantidadeDigitada
FimFuncao

Procedimento pedirNumeroReal(ordemNumerica : inteiro)
Inicio
   escreva(" Informe o ", ordemNumerica , "º número real: ")
   leia( numerosReaisDigitados[ordemNumerica - 1] )
FimProcedimento

Procedimento analisarMaiorNumeroReal(quantidadeTotalNumeros : inteiro  ;  var maiorNumeroReal : real; var indiceMaiorNumeroReal : inteiro)
Var
   contagemIndices : inteiro
Inicio

   maiorNumeroReal <- numerosReaisDigitados[0]
   indiceMaiorNumeroReal <- 0

   para contagemIndices de 1 ate (quantidadeTotalNumeros - 1) passo 1 faca
      se ( numerosReaisDigitados[contagemIndices] > maiorNumeroReal ) entao
         maiorNumeroReal <- numerosReaisDigitados[contagemIndices]
         indiceMaiorNumeroReal <- contagemIndices
      fimSe
   fimPara
FimProcedimento

Procedimento mostrarMaiorNumeroReal(maiorNumeroReal : real; indiceMaiorNumeroReal : inteiro)
Inicio
   escreval(" RELATÓRIO NÚMEROS REAIS")
   escreval()
   
   escreval(" . Maior Número Real Digitado: ", maiorNumeroReal)

   escreval()

   escreval(" . Índice do Maior Número Real: ", indiceMaiorNumeroReal)
   
FimProcedimento

// Algoritmo
Inicio

   introducaoPrograma()

   quantidadeTotalNumeros <- pedirQuantidadeNumeros()
   
   escreval("___________")
   escreval()
   
   // Execução Inicial (acontece unicamente dessa forma na 1ª vez)
   contagemSolicitacoes <- 1
   pedirNumeroReal(contagemSolicitacoes)
   
   para contagemSolicitacoes de 2 ate quantidadeTotalNumeros passo 1 faca
      // Execução Repetida (sempre acontece dessa forma a partir da 2ª vez)
      escreval()
      escreval("-------")
      escreval()
      
      pedirNumeroReal(contagemSolicitacoes)
   fimPara
   
   escreval("___________")
   escreval()
   
   analisarMaiorNumeroReal(quantidadeTotalNumeros, maiorNumeroReal, indiceMaiorNumeroReal)
   mostrarMaiorNumeroReal(maiorNumeroReal, indiceMaiorNumeroReal)

   escreval("___________")
   escreval()

Fimalgoritmo