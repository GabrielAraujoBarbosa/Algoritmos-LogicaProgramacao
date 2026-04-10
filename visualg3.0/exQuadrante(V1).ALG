Algoritmo "quadrante"

Var

   // Variáveis para entrada de dados
   coordenadaEixoX, coordenadaEixoY : inteiro

Inicio

   // Introdução
   escreval("      PLANO CARTESIANO     ")
   escreval()
   escreval("    Coordenadas do Ponto   ")
   escreval(" --------------------------")
   escreval()
   escreval()

   // 1ª ENTRADA DE DADOS (junto com saída) - Padrão
   escreva(" Digite a coordenada do Eixo X: ")
   leia(coordenadaEixoX)
   escreva(" Digite a coordenada do Eixo Y: ")
   leia(coordenadaEixoY)
   escreval()
   
   // Estrutura de Repetição controlando: ENTRADA DE DADOS(repetida) e PROCESSAMENTO DE DADOS(estrutura condicional)
   enquanto (coordenadaEixoX <> 0) E (coordenadaEixoY <> 0) faca // repete enquanto nenhum dos 2 valores forem nulos (iguais a zero); repete enquanto Coordenada do Ponto estiver em algum Quadrante
      // Este bloco é executado quando Coordenada do Ponto no Plano não estiver sobre um dos eixos, mas sim em algum quadrante

      // Estrutura Condicional Composta (com outras mesmas aninhadas) controlando: SAÍDA DE DADOS
      SE (coordenadaEixoY > 0) ENTAO // se Y é positivo

         se (coordenadaEixoX > 0) entao // junto com X positivo
            escreval(" QUADRANTE 1")
         senao // junto com X negativo
            escreval(" QUADRANTE 2")
         fimSe

      SENAO // (Y < 0) - sendo Y negativo

         se (coordenadaEixoX < 0) entao // junto com X negativo
            escreval(" QUADRANTE 3")
         senao // junto com X positivo
            escreval(" QUADRANTE 4")
         fimSe
         
      FIMSE

      // ENTRADA DE DADOS (junto com saída) - Repetida
      escreval()
      escreva(" Digite a coordenada do Eixo X: ")
      leia(coordenadaEixoX)
      escreva(" Digite a coordenada do Eixo Y: ")
      leia(coordenadaEixoY)
      escreval()
      
   fimEnquanto
   
   // SAÍDA DE DADOS Final (Executada quando o valor dos eixos X ou Y é igual 0)
   escreval("-----------------------------------")
   escreval()
   escreval(" A coordenada do ponto no plano está com algum valor nulo!")
   escreval()
   escreval(" (", coordenadaEixoX, ",", coordenadaEixoY, ") <- Está sobre o Eixo!")
   
Fimalgoritmo