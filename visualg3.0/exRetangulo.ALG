Algoritmo "retangulo"

Var

  // medidas obtidas do retângulo (para a entrada de dados)
  base, altura : real

  // medidas calculadas do retângulo (para o processamento de dados)
  area, perimetro, diagonal : real

Inicio

  // sequência de entrada de dados
  // (usando a saída para informar o que deve ser digitado)
  escreva("Digite a base do retângulo: ")
  leia(base)
  escreva("Digite a altura do retângulo: ")
  leia(altura)
  
  // sequência de processamento de dados
  // (usando expressões aritméticas e funções matemáticas)

  perimetro <- (base * 2) + (altura * 2) // 1ª forma cálculo
  perimetro <- 2 * (base + altura)       // 2ª forma cálculo

  area <- base * altura
  diagonal <- RaizQ( (base * base) + (altura * altura) )
  
  // sequência de saída de dados
  // (também mostrando os valores armazenados nas variáveis)
  escreval()
  escreval("MEDIDAS CALCULADAS DO RETÂNGULO")
  escreval("Perímetro: ", perimetro:1:4)
  escreval("Area: ", area:1:4)
  escreval("Diagonal: ", diagonal:1:4)
  
  
  
Fimalgoritmo