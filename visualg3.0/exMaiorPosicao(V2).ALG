Algoritmo "maior_posicao"

Var

   // Variáveis para Algoritmo
   quantidadeTotalNumeros, contagemSolicitacoes : inteiro
   
   // Variável usada como referência (pois um bloco "gera" esse valor e depois precisa-se utilizar em outro bloco também)
   quantidadeIndicesMaiorReal : inteiro
   
   // Vetores Globais:
    // para armazenar números digitados:
   numerosReaisDigitados : vetor[0..9] de real
    // para armazenar índice(s) do maiorNumero (pois pode se repetir em mais de 1 índice)
   indicesMaiorNumeroReal : vetor[0..9] de inteiro


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
   
   escreval()
   escreval(" (Armazenado na posição [", ordemNumerica - 1, "] do vetor)")
FimProcedimento

Funcao analisarMaiorNumeroReal(quantidadeTotalNumeros : inteiro; var quantidadeIndicesArmazenados : inteiro): real
Var
   contagemIndices : inteiro
   maiorNumeroReal : real
Inicio

   // Inicialmente, para obter o maiorNumero declaramos que o maiorNumero será o 1º digitado
   maiorNumeroReal <- numerosReaisDigitados[0]
   quantidadeIndicesArmazenados <- 1
   indicesMaiorNumeroReal[0] <- 0
   // Logo temos:
   // . 1º número digitado considerado o maiorNumero
   // . Apenas 1 índice onde tem esse maiorNumero
   // . maiorNumero está na posição 0

   para contagemIndices de 1 ate (quantidadeTotalNumeros - 1) passo 1 faca
      se ( numerosReaisDigitados[contagemIndices] >= maiorNumeroReal ) entao

         se ( numerosReaisDigitados[contagemIndices] > maiorNumeroReal ) entao
            maiorNumeroReal <- numerosReaisDigitados[contagemIndices]
            
            indicesMaiorNumeroReal[0] <- contagemIndices
            quantidadeIndicesArmazenados <- 1
         senao
            indicesMaiorNumeroReal[quantidadeIndicesArmazenados] <- contagemIndices
            quantidadeIndicesArmazenados <- quantidadeIndicesArmazenados + 1
         fimSe
         
      fimSe
   fimPara
   
   retorne maiorNumeroReal
FimFuncao

Procedimento mostrarMaiorNumeroReal(maiorNumeroReal : real; quantidadeIndicesComMaiorNumero : inteiro)
Var
   contagemIndices : inteiro
Inicio
   escreval(" RELATÓRIO NÚMEROS REAIS")
   escreval()
   
   escreval(" . Maior Número Real Digitado: ", maiorNumeroReal)

   escreval()

   SE ( quantidadeIndicesComMaiorNumero > 1) ENTAO
      escreva(" . Índices onde há o Maior Número Real: ")

      // Amostragem Inicial (que acontece unicamente dessa forma na 1ª vez)
      escreva( indicesMaiorNumeroReal[0] )
      para contagemIndices de 1 ate (quantidadeIndicesComMaiorNumero - 1) passo 1 faca
          // Amostragem Repetida (sempre acontece dessa forma a partir da 2ª vez)
          escreva(" | ", indicesMaiorNumeroReal[contagemIndices] )
      fimPara

      escreval()
      
   SENAO // se for igual a 1 (pois não tem como ser menor que 1 pela lógica que fizemos - só pode ser 1 ou maior que 1)
      escreval(" . Índice do Maior Número Real: ", indicesMaiorNumeroReal[0])
   FIMSE
   
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
   
   mostrarMaiorNumeroReal( analisarMaiorNumeroReal(quantidadeTotalNumeros, quantidadeIndicesMaiorReal) , quantidadeIndicesMaiorReal )

   escreval("___________")
   escreval()

Fimalgoritmo