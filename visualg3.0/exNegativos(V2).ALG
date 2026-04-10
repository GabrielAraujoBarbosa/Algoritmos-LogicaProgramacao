Algoritmo "negativos"

Var

   numerosNegativos : vetor[0..9] de inteiro
   quantidadeNumeros : inteiro
   ultimoIndiceUsadoVetor : inteiro

Procedimento cabecalhoPrograma()
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

      cabecalhoPrograma()
      // Entrada Repetida
      escreva(" Quantos Números Inteiros irá Digitar? ")
      leia(quantidadeDigitada)
   fimEnquanto

   retorne quantidadeDigitada
FimFuncao

Funcao pedirCadaNumeroInteiroQualquer(quantidadeNumeros : inteiro):inteiro
Var
   numeroInteiroDigitado : inteiro
   contagemNumerosDigitados : inteiro
   indiceUsadoVetor : inteiro
Inicio
   // Inicializa variável que diz qual indice será usado (começando com -1, pois ainda não há valor válido para armazenar no vetor)
   indiceUsadoVetor <- -1

   // Obtendo números quaisquer conforme intervalo baseado na quantidade
   para contagemNumerosDigitados de 1 ate quantidadeNumeros passo 1 faca
      escreval()
      escreva(" Digite o ", contagemNumerosDigitados, "º número: ")
      leia(numeroInteiroDigitado)
      
      // Já análisando se número é negativo
      se (numeroInteiroDigitado < 0) entao
         indiceUsadoVetor <- indiceUsadoVetor + 1
         
         // Armazena no vetor conforme indice que pode ser usado
         numerosNegativos[indiceUsadoVetor] <- numeroInteiroDigitado

      fimSe
   fimPara
   
   retorne indiceUsadoVetor
FimFuncao

Procedimento mostrarNumerosNegativos(ultimoIndice : inteiro)
Var
   contagemIndices : inteiro
Inicio

   // Analisando se foi digitado algum número negativo
   SE (ultimoIndice <> -1) ENTAO // se foi utilizado algum espaço do vetor
      escreval(" Números Negativos Digitados:")
      escreval()

      // Passando por todos os números armazenados no vetor
      para contagemIndices de 0 ate ultimoIndice passo 1 faca
         escreval("  . ", numerosNegativos[contagemIndices])
      fimPara
   SENAO
      escreval(" Não há Número Negativo Digitado!")
   FIMSE
   
FimProcedimento

// Algoritmo
Inicio

   cabecalhoPrograma()
   quantidadeNumeros <- pedirQuantidadeNumeros()

   limpaTela()

   cabecalhoPrograma()
   ultimoIndiceUsadoVetor <- pedirCadaNumeroInteiroQualquer(quantidadeNumeros)

   limpaTela()

   cabecalhoPrograma()
   mostrarNumerosNegativos(ultimoIndiceUsadoVetor)

   // Separação entre Amostragem e Fim do Programa
   escreval()
   escreval("______________")
   escreval()

FimAlgoritmo