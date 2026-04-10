Algoritmo "numerosVetor"

Var

   quantidadeDesejadaNumeros : inteiro
   numerosQuaisquerDigitados : vetor[0..9] de real


Procedimento introducaoPrograma()
Inicio
   escreval("      VETOR DE NÚMEROS     ")
   escreval(" --------------------------")
   escreval()
FimProcedimento

Funcao pedirQuantidadeNumerosDigitar(): inteiro
Var
   quantidadeNumeros : inteiro
   variavelLixo : caractere
Inicio
   escreva(" Quantos números gostaria de digitar (1 - 10)? ")
   leia(quantidadeNumeros)

   enquanto (quantidadeNumeros < 1) OU (quantidadeNumeros > 10) faca
      // feedback valor inválido
      escreval(" QUANTIDADE INVÁLIDA! DIGITE ENTRE 1 E 10!")
      leia(variavelLixo)

      limpaTela()

      // Introdução Repetida
      introducaoPrograma()
      // ENTRADA Repetida
      escreva(" Quantos números gostaria de digitar (1 - 10)? ")
      leia(quantidadeNumeros)
   fimEnquanto
   
   retorne quantidadeNumeros
FimFuncao

Procedimento pedirNumerosQuaisquer(quantidadeDesejadaNumeros : inteiro)
Var
   contagemNumerosDigitar : inteiro
Inicio
   para contagemNumerosDigitar de 1 ate quantidadeDesejadaNumeros passo 1 faca
      escreval()
      escreva(" Digite o ", contagemNumerosDigitar, "º número: ")
      leia(numerosQuaisquerDigitados[contagemNumerosDigitar - 1])
   fimPara
FimProcedimento

Procedimento mostrarNumerosDigitadosArmazenadosVetor(quantidadeNumerosDigitados : inteiro)
Var
   contagemIndicesPassar : inteiro
Inicio
   escreval(" Espaços do Vetor:")
   para contagemIndicesPassar de 0 ate (quantidadeNumerosDigitados - 1) passo 1 faca
      escreval()
      escreval("  [", contagemIndicesPassar, "] = ", numerosQuaisquerDigitados[contagemIndicesPassar])
   fimPara
FimProcedimento

// Algoritmo
Inicio

   introducaoPrograma()

   quantidadeDesejadaNumeros <- pedirQuantidadeNumerosDigitar()

   escreval()
   escreval("______________")

   pedirNumerosQuaisquer(quantidadeDesejadaNumeros)

   escreval()
   escreval("______________")
   escreval()

   mostrarNumerosDigitadosArmazenadosVetor(quantidadeDesejadaNumeros)

   escreval()
   escreval("______________")
   escreval()
   
Fimalgoritmo