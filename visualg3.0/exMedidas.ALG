Algoritmo "medidas"

Var

   // variáveis para medidas obtidas do usuário (para entrada de dados)
   primeiraMedida, segundaMedida, terceiraMedida : real
   
   // variáveis para cálculo da grandeza de área baseadas nas medidas (para processamento de dados)
   // (usará fórmulas de figuras geométricas para o cálculo)
   areaQuadrado, areaTrianguloRetangulo, areaTrapezio : real

Inicio

  // sequência de entrada de dados
  // (usando a saída para informar ao usuário o dado requerido)
   escreva("Digite uma 1ª medida: ")
   leia(primeiraMedida)
   escreva("Digite uma 2ª medida: ")
   leia(segundaMedida)
   escreva("Digite uma 3ª medida: ")
   leia(terceiraMedida)

  // sequência de processamento de dados
  // (comentários para explicar os cálculos)

   // fórmula área Quadrado: lado * lado, ou, lado²
   // (quadrado possui lados iguais)
   areaQuadrado <- Exp(primeiraMedida, 2) // baseado apenas na 1ª medida

   // fórmula área Triângulo Retângulo: (cateto1 * cateto2) / 2
   // (catetos são os lados que formam o ângulo de 90º graus do retângulo)
   areaTrianguloRetangulo <- (primeiraMedida * segundaMedida) / 2 // baseado na 1ª e 2ª medida

   // fórmula área Trapézio: (baseMaior + baseMenor) * altura / 2
   areaTrapezio <- (primeiraMedida + segundaMedida) * terceiraMedida / 2 // baseado nas 3 medidas
   
   
  // saída de dados
  // (usando os valores das variáveis do processamento para a amostragem)
   escreval()
   escreval("A área do quadrado (baseado na primeira medida): ", areaQuadrado:3:1)
   escreval("A área do triângulo retângulo (baseado na 1ª e 2ª medida): ", areaTrianguloRetangulo:3:1)
   escreval("A área do trapézio (baseado nas três medidas): ", areaTrapezio:3:1)
   
   

Fimalgoritmo