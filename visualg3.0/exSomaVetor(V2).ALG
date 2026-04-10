Algoritmo "soma_vetor"

Var

   numerosReaisDigitados : vetor[0..9] de real
   quantidadeNumerosReais : inteiro
   somaTotalNumerosReais : real


Procedimento cabecalhoIntroducaoPrograma()
Inicio
   escreval("   SOMA NÚMEROS REAIS - VETOR   ")
   escreval(" -------------------------------")
   escreval()
FimProcedimento

Procedimento cabecalhoRelatorioPrograma()
Inicio

   escreval("       RELATÓRIO DO VETOR       ")
   escreval(" -------------------------------")
   escreval()

FimProcedimento

Funcao pedirQuantidadeNumerosReais(): inteiro
Var
   quantidadeDigitada : inteiro
   variavelLixo : caractere // apenas para indicar ENTER
Inicio
   // Pedindo quantidade, que será digitada, de números reais

   // ENTRADA Inicial (1ª vez)
   escreva(" Quantos números reais irá digitar? ")
   leia(quantidadeDigitada)
   
   enquanto (quantidadeDigitada < 1) OU (quantidadeDigitada > 10) faca
      // Feedback de ENTRADA Inválida
      escreval()
      escreval(" QUANTIDADE INVÁLIDA! DIGITE ENTRE 1 E 10!")
      leia(variavelLixo)

      limpaTela()

      cabecalhoIntroducaoPrograma()
      // ENTRADA Repetida
      escreva(" Quantos números reais irá digitar? ")
      leia(quantidadeDigitada)
   fimEnquanto
   
   retorne quantidadeDigitada
FimFuncao

Procedimento pedirCadaNumeroReal(quantidadeTotal : inteiro)
Var
   contagemExecucoes : inteiro
Inicio

   // Obtendo número real na quantidade de vezes especificada
   para contagemExecucoes de 1 ate quantidadeTotal passo 1 faca
      escreva(" Digite o ", contagemExecucoes ,"º número real: ")
      // Armazenando no vetor obedecendo o intervalo de 0 até (quantidadeTotal - 1)
      leia(numerosReaisDigitados[contagemExecucoes - 1])
      escreval()
   fimPara
FimProcedimento

Funcao realizarSomaNumerosReais(quantidadeTotal : inteiro):real
Var
   contagemIndices : inteiro
   somaNumerosReais : real
Inicio
   // Processamento da Soma
   somaNumerosReais <- 0
   para contagemIndices de 0 ate (quantidadeTotal - 1) passo 1 faca
      somaNumerosReais <- somaNumerosReais + numerosReaisDigitados[contagemIndices]
   fimPara

   retorne somaNumerosReais
FimFuncao

Procedimento mostrarTodosNumerosReais(quantidadeTotal : inteiro)
Var
   contagemIndices : inteiro
Inicio
   escreva("  Números Digitados:")

   // Mostra o 1º número, unicamente, dessa forma (porque não tem número anterior para fazer separação)
   escreva(" ", numerosReaisDigitados[0])

   // Se houver outro número depois do 1º, faz separação entre número anterior e esse número seguinte
   para contagemIndices de 1 ate (quantidadeTotal - 1) passo 1 faca
      escreva(" | ",  numerosReaisDigitados[contagemIndices])
   fimPara
FimProcedimento
   
// Algoritmo
Inicio

   cabecalhoIntroducaoPrograma()
   quantidadeNumerosReais <- pedirQuantidadeNumerosReais()
   
   limpaTela()
   
   cabecalhoIntroducaoPrograma()
   pedirCadaNumeroReal(quantidadeNumerosReais)

   // Processamento
   somaTotalNumerosReais <- realizarSomaNumerosReais(quantidadeNumerosReais)
   
   limpaTela()
   
   cabecalhoRelatorioPrograma()

   // Amostragem dos Números
   mostrarTodosNumerosReais(quantidadeNumerosReais)

   escreval()
   escreval()

   // Amostragem da Soma
   escreval("  Soma Total dos Números: ", somaTotalNumerosReais:4:2)
   
   escreval()

   // Amostragem da Média
   escreval("  Média dos Números: ", (somaTotalNumerosReais / quantidadeNumerosReais):4:2 )
   
   // Separação
   escreval()
   escreval("______________")
   escreval()
   
FimAlgoritmo