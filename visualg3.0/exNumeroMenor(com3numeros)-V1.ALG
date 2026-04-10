Algoritmo "numeroMenorCom3NumerosV1"

Var

   // variáveis para entrada de dados
   numero1, numero2, numero3 : inteiro
   
   // variável para processamento de dados
   numeroMenor : inteiro

Inicio

   // entrada de dados junto com saída de dados
   escreva("Informe o 1º número inteiro: ")
   leia(numero1)
   escreva("Informe o 2º número inteiro: ")
   leia(numero2)
   escreva("Informe o 3º número inteiro: ")
   leia(numero3)

   escreval()

   // estrutura de decisão composta
   // Análise do menor entre os 2 primeiros números
   se numero1 < numero2 entao
      numeroMenor <- numero1
   senao
      numeroMenor <- numero2
   fimse

   // estrutura de decisão simples
   // Análise entre o menor obtido (da estrutura anterior) e o 3º número
   se numero3 < numeroMenor entao
      numeroMenor <- numero3
   fimse
   
   // saída de dados (mostrando o dado processado)
   escreval("Entre os 3 números, o menor é:", numeroMenor)
   
Fimalgoritmo