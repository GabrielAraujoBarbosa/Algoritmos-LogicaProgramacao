Algoritmo "circulo"

Var

   // medida obtida do círculo (para entrada de dados)
   raioCirculo : real
   
   // medida calculada do círculo (para processamento de dados)
   areaCirculo : real

Inicio

   // operação de entrada de dados
   // (usando a saída para o usuário saber o dado desejado)
   escreva("Digite o valor do raio de um círculo: ")
   leia(raioCirculo)
   
   // operação de processamento de dados
   areaCirculo <- Pi * Exp(raioCirculo, 2)
   
   // operação de saída de dados
   escreval()
   escreval("O valor da área do círculo é: ", areaCirculo:5:3)


Fimalgoritmo