Algoritmo "negativos"

Var

   numerosInteirosDigitados : vetor[0..9] de inteiro
   quantidadeNumeros : inteiro


Procedimento introducaoPrograma()
Inicio
   escreval("    NÚMEROS NEGATIVOS - VETOR   ")
   escreval(" -------------------------------")
   escreval()
FimProcedimento

Funcao pedirQuantidadeNumeros():inteiro
Var
   quantidadeDigitada : inteiro
   variavelLixo : caractere // apenas para indicar ENTER
Inicio
   // Entrada Inicial (1ª)
   escreva(" Quantos Números Inteiros irá Digitar? ")
   leia(quantidadeDigitada)


   enquanto (quantidadeDigitada < 1) OU (quantidadeDigitada > 10) faca
      // Feedback de valor inválido
      escreval()
      escreval(" QUANTIDADE INVÁLIDA! PRECISA ESTAR ENTRE 1 E 10!")
      leia(variavelLixo)
      limpaTela()
      
      introducaoPrograma()
      // Entrada Repetida
      escreva(" Quantos Números Inteiros irá Digitar? ")
      leia(quantidadeDigitada)
   fimEnquanto
   
   retorne quantidadeDigitada
FimFuncao

Procedimento pedirCadaNumeroInteiroQualquer(quantidadeNumeros : inteiro)
Var
   contagemNumerosDigitados : inteiro
Inicio
   // Obtendo números quaisquer conforme intervalo baseado na quantidade
   para contagemNumerosDigitados de 1 ate quantidadeNumeros passo 1 faca
      escreval()
      escreva(" Digite o ", contagemNumerosDigitados, "º número: ")
      // Armazenando no vetor conforme intervalo da quantidade por 1 a menos (pra ter de 0 até quantidade - 1)
      leia(numerosInteirosDigitados[contagemNumerosDigitados - 1])
   fimPara
FimProcedimento

Procedimento mostrarNumerosNegativos(quantidadeNumeros : inteiro)
Var
   contagemIndices : inteiro
Inicio
   escreval(" Números Negativos Digitados:")
   escreval()

   // Passando por todos os números armazenados no vetor
   para contagemIndices de 0 ate (quantidadeNumeros - 1) passo 1 faca
      se (numerosInteirosDigitados[contagemIndices] < 0) entao
         escreval("  . ", numerosInteirosDigitados[contagemIndices])
      fimSe
   fimPara
FimProcedimento

// Algoritmo
Inicio

   introducaoPrograma()

   quantidadeNumeros <- pedirQuantidadeNumeros()
   
   escreval("______________")
   
   pedirCadaNumeroInteiroQualquer(quantidadeNumeros)

   escreval("______________")
   escreval()

   mostrarNumerosNegativos(quantidadeNumeros)
   
   escreval("______________")
   escreval()
   
FimAlgoritmo