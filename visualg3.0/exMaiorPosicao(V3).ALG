Algoritmo "maior_posicao"

Var

   // Variáveis para Algoritmo
   quantidadeTotalNumeros, contagemSolicitacoes : inteiro
   
   // Variáveis usadas como referência (pois um bloco "gera" esse valor e depois precisa-se utilizar em outro bloco também)
   quantidadeIndicesMaiorNumero : inteiro
   maiorNumeroReal : real
   
   // Vetores Globais:
    // para armazenar números digitados:
   numeroRealDigitado : real
    // para armazenar índice(s) do maiorNumero (pois pode se repetir em mais de 1 índice)
   indicesMaiorNumeroReal : caractere


Procedimento cabecalhoIntroducao()
Inicio
   escreval("     MAIOR NÚMERO (POSIÇÃO)    ")
   escreval(" ------------------------------")
   escreval()
FimProcedimento

Funcao pedirQuantidadeNumeros(): inteiro
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

Procedimento cabecalhoSolicitacaoNumeros()
Inicio
   escreval("     INSERÇÃO DE NÚMEROS     ")
   escreval(" ----------------------------")
   escreval()
FimProcedimento

Funcao pedirNumeroReal(ordemNumerica : inteiro): real
Var
   numeroRealDigitado : real
Inicio
   escreva(" Informe o ", ordemNumerica , "º número real: ")
   leia( numeroRealDigitado )
   
   escreval()
   escreval(" (Armazenado na posição [", ordemNumerica - 1, "] do vetor)")
   
   retorne numeroRealDigitado
FimFuncao

Procedimento analisarMaiorNumeroReal(ordemNumericaDigitacao : inteiro; numeroDigitado : real; var maiorNumero : real; var textoIndicesMaiorNumero : caractere; var quantidadeIndicesMaiorReal : inteiro)
Inicio

   SE numeroDigitado >= maiorNumero  ENTAO
   
      se numeroDigitado > maiorNumero entao
         maiorNumero <- numeroDigitado
         textoIndicesMaiorNumero <- numpcarac(ordemNumericaDigitacao - 1)
         quantidadeIndicesMaiorReal <- 1
      senao
         textoIndicesMaiorNumero <- textoIndicesMaiorNumero + " | " + numpcarac(ordemNumericaDigitacao - 1)
         quantidadeIndicesMaiorReal <- quantidadeIndicesMaiorReal + 1
      fimSe
      
   FIMSE
FimProcedimento

Procedimento mensagemTransicaoParaRelatorio(quantidadeNumerosDigitados : inteiro)
Var
   textoSobreDigitacaoNumeros : caractere
Inicio
   se quantidadeNumerosDigitados = 1 entao
      textoSobreDigitacaoNumeros <- "O ÚNICO NÚMERO FOI DIGITADO!"
   senao
      textoSobreDigitacaoNumeros <- "OS " + numpcarac(quantidadeNumerosDigitados) + " NÚMEROS FORAM DIGITADOS!"
   fimSe

   escreval("    ", textoSobreDigitacaoNumeros)
   escreval(" (PRESSIONE ENTER PARA VER O RELATÓRIO) ")
   escreva(" ")
   // aqui usado como variável de lixo
   leia(textoSobreDigitacaoNumeros)
FimProcedimento

Procedimento mostrarMaiorNumeroReal(maiorNumero : real; textoIndicesMaiorNumero : caractere; quantidadeIndicesMaiorNumero : inteiro)
Inicio
   escreval("    RELATÓRIO NÚMEROS REAIS   ")
   escreval(" -----------------------------")
   escreval()
   
   escreval(" . Maior Número Real Digitado: ", maiorNumero)

   escreval()

   SE ( Compr(textoIndicesMaiorNumero) < 5) ENTAO
      escreval(" . Único Índice do Maior Número Real: ", textoIndicesMaiorNumero:0, "")
   SENAO
      escreval(" . ", quantidadeIndicesMaiorNumero , " Índices onde há o Maior Número Real: ", textoIndicesMaiorNumero:0, "")
   FIMSE
FimProcedimento

// Algoritmo
Inicio

   cabecalhoIntroducao()
   quantidadeTotalNumeros <- pedirQuantidadeNumeros()
   
   limpaTela()
   
   cabecalhoSolicitacaoNumeros()
   
   // Execução Inicial (acontece unicamente dessa forma na 1ª vez)
   contagemSolicitacoes <- 1
   maiorNumeroReal <- pedirNumeroReal(contagemSolicitacoes)
   indicesMaiorNumeroReal <- "0"
   quantidadeIndicesMaiorNumero <- 1
   escreval()
   escreval("-------")
   escreval()
   para contagemSolicitacoes de 2 ate quantidadeTotalNumeros passo 1 faca
      analisarMaiorNumeroReal(contagemSolicitacoes, pedirNumeroReal(contagemSolicitacoes), maiorNumeroReal, indicesMaiorNumeroReal, quantidadeIndicesMaiorNumero)
      escreval()
      escreval("-------")
      escreval()
   fimPara
   
   mensagemTransicaoParaRelatorio(quantidadeTotalNumeros)
   
   limpaTela()
   
   mostrarMaiorNumeroReal(maiorNumeroReal, indicesMaiorNumeroReal, quantidadeIndicesMaiorNumero)

   escreval()
   escreval("___________")
   escreval()

Fimalgoritmo