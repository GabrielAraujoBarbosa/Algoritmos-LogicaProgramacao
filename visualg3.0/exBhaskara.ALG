Algoritmo "bhaskara"

Var

   // variáveis para entrada de dados
   coeficienteA, coeficienteB, coeficienteC : real

   // variáveis para processamento de dados
   delta, raizX1, raizX2 : real

Inicio

   escreval("Resolva Equações do 2º Grau")
   escreval("Utilizando a Fórmula de Bhaskara")
   escreval()

   // saída de dados junto da entrada de dados
   escreva("Coeficiente A (x²): ")
   leia(coeficienteA)
   escreva("Coeficiente B (x): ")
   leia(coeficienteB)
   escreva("Coeficiente C: ")
   leia(coeficienteC)
   
   escreval()
   
   // processamento de dados
   delta <- (coeficienteB * coeficienteB) - 4 * coeficienteA * coeficienteC
   
   // tomada de decisão com base em 3 possibilidades
   se (delta >= 0) E (coeficienteA <> 0) entao
      // processamento de dados para alternativa verdadeira
      raizX1 <- (- coeficienteB + RaizQ(delta) ) / (2 * coeficienteA)
      raizX2 <- (- coeficienteB - RaizQ(delta) ) / (2 * coeficienteA)

      escreval("Valor da raiz X1: ", raizX1:6:4)
      escreval("Valor da raiz X2: ", raizX2:6:4)
   senao
      se delta < 0 entao
         escreval("A equação não possui raízes reais!")
         escreval("Delta possui o valor negativo ", delta:6:4)
      senao
         escreval("De acordo com o que digitou, a equação não é do 2º Grau!")
         escreval("Coeficiente A é igual a 0, ou seja, não tem x².")
      fimse
   fimse

Fimalgoritmo