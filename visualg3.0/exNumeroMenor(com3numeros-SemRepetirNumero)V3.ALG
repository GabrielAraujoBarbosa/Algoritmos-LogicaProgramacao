Algoritmo "numeroMenorCom3NumerosV3"

Var

   variavelParaLixo : caractere

   // variáveis para entrada de dados
   numero1, numero2, numero3 : inteiro
   
   // variável para processamento de dados
   numeroMenor : inteiro

Inicio

   escreval("MENOR NÚMERO INTEIRO")
   escreval()

   
   repita
      // entrada de dados junto com saída de dados
      escreva("Informe o 1º número inteiro: ")
      leia(numero1)
      escreva("Informe o 2º número inteiro: ")
      leia(numero2)
      escreva("Informe o 3º número inteiro: ")
      leia(numero3)

      escreval()
      
      se ( (numero1 = numero2) ou (numero1 = numero3) ou (numero2 = numero3) ) entao
         escreval("DIGITE NÚMEROS QUE SEJAM DIFERENTES!")
         escreva("Aperte enter para repetir.")
         leia(variavelParaLixo)
         limpatela
      fimse
   fimrepita( (numero1 <> numero2) e (numero1 <> numero3) e (numero2 <> numero3) )

   se (numero1 < numero2) e (numero1 < numero3) entao
      numeroMenor <- numero1
   senao
      se numero2 < numero3 entao
         numeroMenor <- numero2
      senao
         numeroMenor <- numero3
      fimse
   fimse
   // saída de dados
   escreval("Entre os 3 números, o menor é:", numeroMenor)
   
Fimalgoritmo