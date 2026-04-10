Algoritmo "consumo"

Var

   // variáveis para dados obtidos do automóvel (para entrada de dados)
   distanciaTotalPercorrida : real   // medida em quilômetros
   combustivelTotalGasto : real      // medida em litros

   // variavél para dado calculado do automóvel (para processamento de dados)
   consumoMedioCarro : real

Inicio
   // informação na saída explicando do que se trata o programa para o usuário
   escreval("CONSUMO MÉDIO DE COMBUSTÍVEL")
   escreval()

   // saída de dados para explicar ao usuário o dado desejado na entrada
   escreva("Qual foi a distância total percorrida pelo carro (em KM)? ")
   
   // entrada de dados (armazena o dado em variável)
   leia(distanciaTotalPercorrida)
   
   // saída de dados para explicar ao usuário o dado desejado na entrada
   escreva("Qual o total de combustível gasto para poder percorrê-la (em L)? ")

   // entrada de dados (armazena o dado em variável)
   leia(combustivelTotalGasto)
   
   // processamento de dados
   // cálculo de consumo médio = descobre quantos quilômetros são percorridos usando apenas 1 litro
   consumoMedioCarro <- distanciaTotalPercorrida / combustivelTotalGasto

   // sequência de saída de dados
   escreval()
   escreval("O consumo médio do seu automóvel é ", consumoMedioCarro:3:1)
   escreval("Ou seja, você consegue percorrer cerca de ", consumoMedioCarro:3:1, " kilômetros por litro.")
Fimalgoritmo