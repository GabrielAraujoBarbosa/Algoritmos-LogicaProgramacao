Algoritmo "coordenadas"

Var

   // variáveis para entrada de dados
   valorEixoX, valorEixoY : inteiro

   // variável para processamento de dados
   localizacaoCoordenada : caractere

Inicio

   escreval("--------------------------")
   escreval("     PLANO CARTESIANO    ")
   escreval("--------------------------")
   escreval()

   // ENTRADA DE DADOS (junto com saída)
   escreva(" Digite a Coordenada do Eixo X: ")
   leia(valorEixoX)
   escreva(" Digite a Coordenada do Eixo Y: ")
   leia(valorEixoY)

   // PROCESSAMENTO DE DADOS
   se (valorEixoX <> 0) E (valorEixoY <> 0) entao
   // coordenada cartesiana está em algum dos quadrantes do plano cartesiano
      
      se valorEixoX > 0 entao
         // está no Quadrante1 ou Quadrante4
         se valorEixoY > 0 entao
            // É Quadrante1 (X Positivo e Y Positivo)
            localizacaoCoordenada <- "No Quadrante 1"
         senao
            // É Quadrante4 (X Positivo e Y Negativo)
            localizacaoCoordenada <- "No Quadrante 4"
         fimSe
      senao
         // está no Quadrante2 ou Quadrante3
         se valorEixoY > 0 entao
            // É Quadrante2 (X Negativo e Y Positivo)
            localizacaoCoordenada <- "No Quadrante 2"
         senao
            // É Quadrante3 (X Negativo e Y Negativo)
            localizacaoCoordenada <- "No Quadrante 3"
         fimSe
      fimSe
      
   senao // coordenada cartesiana está sobre algum dos eixos ou na origem
   
      se (valorEixoX = 0) E (valorEixoY = 0) entao
         // É Origem (valor dos 2 Eixos estão sobre o encontro das retas)
         localizacaoCoordenada <- "Na Origem"
      senao
         // sobre algum dos 2 Eixos
         se valorEixoX = 0 entao
            // X está na origem então só a coordenada do eixo Y se movimenta
            localizacaoCoordenada <- "Sobre o Eixo Y"
         senao
            // Y está na origem então só a coordenada do eixo X se movimenta
            localizacaoCoordenada <- "Sobre o Eixo X"
         fimSe
      fimSe
      
   fimSe

   // SAÍDA DE DADOS (mostrando o dado processado)
   escreval()
   escreval("-------------------------")
   escreval()
   escreval(" A Coordenada Cartesiana está: ", localizacaoCoordenada)
   
Fimalgoritmo