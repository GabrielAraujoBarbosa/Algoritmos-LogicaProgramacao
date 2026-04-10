Algoritmo "numeroMenorCom3NumerosV2"

Var

   // variáveis para entrada de dados
   numero1, numero2, numero3 : inteiro
   
   // variável para processamento de dados
   numeroMenor : inteiro
   quantidadeNumerosRepetidos : inteiro

Inicio

   // atribuindo valor inicial à variável (certificando o seu valor e evitando erros)
   quantidadeNumerosRepetidos <- 0

   // entrada de dados junto com saída de dados
   escreva("Informe o 1º número inteiro: ")
   leia(numero1)
   escreva("Informe o 2º número inteiro: ")
   leia(numero2)
   escreva("Informe o 3º número inteiro: ")
   leia(numero3)

   escreval()

   // estrutura de decisão composta (tendo diversas estruturas de decisão encadeadas)
   se (numero1 <= numero2) e (numero1 <= numero3) entao
      numeroMenor <- numero1
      
      // verificar se houve repetição de números (se o 1º número foi digitado 2 ou 3 vezes)
      se (numero1 = numero2) ou (numero1 = numero3) entao
         quantidadeNumerosRepetidos <- quantidadeNumerosRepetidos + 2
         se (numero1 = numero2) e (numero1 = numero3) entao
            quantidadeNumerosRepetidos <- quantidadeNumerosRepetidos + 1
         fimse
      fimse
   senao
      se numero2 <= numero3 entao
         numeroMenor <- numero2

         // verificar se houve repetição de número (se o 2º número foi digitado 2 vezes)
         se numero2 = numero3 entao
            quantidadeNumerosRepetidos <- quantidadeNumerosRepetidos + 2
         fimse
      senao
         numeroMenor <- numero3
      fimse
   fimse
   
   // saída de dados (com dado processado)
   escreval("Entre os 3 números, o menor é:", numeroMenor)
   
   // estrutura de decisão simples
   se quantidadeNumerosRepetidos > 0 entao
      escreva("(Ele foi digitado ", quantidadeNumerosRepetidos, " vezes)")
   fimse
   
   escreval()
   
Fimalgoritmo