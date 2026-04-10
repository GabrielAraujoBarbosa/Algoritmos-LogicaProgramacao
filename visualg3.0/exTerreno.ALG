Algoritmo "terreno"


Var

  // medidas do terreno retangular (para entrada de dados)
  largura, comprimento : real

  // valor do metro quadrado (para entrada de dados)
  valorMetroQuadrado : real

  // cálculos baseados nas medidas e valor (para o processamento de dados)
  areaTerreno : real
  precoTerreno :real

Inicio

  escreval("TERRENO RETANGULAR")
  escreval()
  
  // sequência de entrada de dados
  // (usando a saída para mostrar o que deve ser digitado)
  escreva("Digite a medida de comprimento: ")
  leia(largura)
  escreva("Digite a medida de largura: ")
  leia(comprimento)
  escreva("Digite o preço do metro quadrado: ")
  leia(valorMetroQuadrado)
  
  // processamento de dados
  // (usando variáveis e expressões aritméticas)
  areaTerreno <- comprimento * largura
  precoTerreno <- valorMetroQuadrado * areaTerreno
  
  // saída de dados
  // (mostrando também o valor armazenado nas variáveis)
  escreval()
  escreval("A área do terreno retangular é ", areaTerreno:1:2, " m².")
  escreval("O preço total do terreno é R$ ", precoTerreno:1:2)


Fimalgoritmo