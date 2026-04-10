Algoritmo "numeros_pares"

Var

   quantidadeNumerosInteiros : inteiro
   quantidadeNumerosPares : inteiro
   contagemSolicitacoesNumeros : inteiro
   
   numerosPares : vetor[0..9] de inteiro


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

Procedimento analisarNumeroDigitado (numeroDigitado : inteiro; var quantidadeNumerosPares : inteiro)
Inicio
   // Análise se númeroDigitado é par
   se (numeroDigitado <> 0) E (numeroDigitado % 2 = 0) entao
      numerosPares[quantidadeNumerosPares] <- numeroDigitado
      quantidadeNumerosPares <- quantidadeNumerosPares + 1
   fimSe
FimProcedimento

Procedimento mostrarRelatorioNumerosPares(quantidadeTotalPares : inteiro)
Var
   contagemIndices : inteiro
Inicio

    escreval(" RELATÓRIO DOS NÚMEROS")
    escreval()

    // Análise se tem houve número par digitado
    SE (quantidadeTotalPares > 0) ENTAO
       escreva("  . Números Pares Digitados: ")

       // Mostrando 1º Par - que acontece dessa forma unicamente na 1ª vez
       escreva(numerosPares[0])

       para contagemIndices de 1 ate (quantidadeTotalPares - 1) passo 1 faca
          // Mostrando Próximos Pares  - que acontece sempre dessa forma
          escreva(" | ")
          escreva( numerosPares[contagemIndices] )
       fimPara

       escreval()
       escreval()
    FIMSE
    
    escreval("  . Quantidade de Números Pares: ", quantidadeTotalPares)

FimProcedimento


// Algoritmo
Inicio

   // Inicialização de variável
   quantidadeNumerosPares <- 0

   introducaoPrograma()

   quantidadeNumerosInteiros <- pedirQuantidadeNumeros()
   
   escreval("___________")
   escreval()

   // Processo de pedirNumero Inicial que executa unicamente dessa forma na 1ª vez, e executa pelo menos 1 vez
   contagemSolicitacoesNumeros <- 1
   analisarNumeroDigitado( pedirNumeroInteiro(contagemSolicitacoesNumeros), quantidadeNumerosPares )

   para contagemSolicitacoesNumeros de 2 ate quantidadeNumerosInteiros passo 1 faca
      // Processo de pedirNumero Repetido que executa junto dessas outras instruções
      escreval()
      escreval("-------")
      escreval()
      
      analisarNumeroDigitado( pedirNumeroInteiro(contagemSolicitacoesNumeros), quantidadeNumerosPares )
   fimPara
   
   escreval("___________")
   escreval()
   
   mostrarRelatorioNumerosPares(quantidadeNumerosPares)

   escreval("___________")
   escreval()

Fimalgoritmo