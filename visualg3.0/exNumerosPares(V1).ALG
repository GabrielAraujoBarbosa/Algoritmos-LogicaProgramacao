Algoritmo "numeros_pares"

Var

   quantidadeNumerosInteiros : inteiro
   contagemSolicitacoesNumeros : inteiro
   
   numerosInteirosDigitados : vetor[0..9] de inteiro


Procedimento introducaoPrograma()
Inicio
   escreval("     NÚMEROS PARES - VETOR    ")
   escreval(" -----------------------------")
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

Funcao pedirNumeroInteiro(ordemNumero : inteiro):inteiro
Var
   numeroInteiroDigitado : inteiro
Inicio
   escreva(" Informe o ", ordemNumero , "º número inteiro: ")

   leia(numeroInteiroDigitado)
   
   retorne numeroInteiroDigitado
FimFuncao

Procedimento mostrarRelatorioNumerosPares(quantidadeTotalNumeros : inteiro)
Var
   quantidadeNumerosPares : inteiro
   contagemIndices : inteiro
Inicio
    // Inicialização de variável (pois ela acumula)
    quantidadeNumerosPares <- 0

    escreval(" RELATÓRIO DOS NÚMEROS")
    escreval()

    PARA contagemIndices de 0 ate (quantidadeTotalNumeros - 1) PASSO 1 FACA
       Se ( numerosInteirosDigitados[contagemIndices] <> 0) E (numerosInteirosDigitados[contagemIndices] % 2 = 0 ) Entao

          se (quantidadeNumerosPares > 0) entao
             escreva(" | ")
          senao
             escreva("  . Números Pares Digitados: ")
          fimse
          
          escreva( numerosInteirosDigitados[contagemIndices] )

          quantidadeNumerosPares <- quantidadeNumerosPares + 1
       FimSe
    FIMPARA

    se (quantidadeNumerosPares <> 0) entao
       escreval()
       escreval()
    fimSe
    
    escreval("  . Quantidade de Números Pares: ", quantidadeNumerosPares)

FimProcedimento


// Algoritmo
Inicio

   introducaoPrograma()

   quantidadeNumerosInteiros <- pedirQuantidadeNumeros()
   
   escreval("___________")
   escreval()

   // Processo de pedirNumero Inicial que executa unicamente dessa forma na 1ª vez, e executa pelo menos 1 vez
   contagemSolicitacoesNumeros <- 1
   numerosInteirosDigitados[contagemSolicitacoesNumeros - 1] <- pedirNumeroInteiro(contagemSolicitacoesNumeros)

   para contagemSolicitacoesNumeros de 2 ate quantidadeNumerosInteiros passo 1 faca
      // Processo de pedirNumero Repetido que executa junto dessas outras instruções
      escreval()
      escreval("-------")
      escreval()
      
      numerosInteirosDigitados[contagemSolicitacoesNumeros - 1] <- pedirNumeroInteiro(contagemSolicitacoesNumeros)
   fimPara
   
   escreval("___________")
   escreval()
   
   mostrarRelatorioNumerosPares(quantidadeNumerosInteiros)

   escreval("___________")
   escreval()

Fimalgoritmo