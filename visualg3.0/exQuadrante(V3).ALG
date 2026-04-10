Algoritmo "quadrante"

Var

   // Variáveis para entrada de dados
   coordenadaEixoX, coordenadaEixoY : inteiro

Inicio

   // Introdução
   escreval("      PLANO CARTESIANO      ")
   escreval()
   escreval("    Coordenadas do Ponto    ")
   escreval(" ---------------------------")
   escreval()
   escreval()
   
   // Estrutura de Repetição controlando: ENTRADA DE DADOS e PROCESSAMENTO DE DADOS(análise se houve execução repetida)
   repita

      // Estrutura Condicional Simples controlando: PROCESSAMENTO DE DADOS(análise do quadrante)
      SE ( (coordenadaEixoX <> 0) E (coordenadaEixoY <> 0) )  ENTAO // se for uma execução repetida do bloco Repita; se não for a 1ª execução
         // Este bloco é executado a partir da 2ª Execução do Repita; alcança aqui quando for repetição

         // Estrutura Condicional Composta (com outras mesmas aninhadas) controlando: SAÍDA DE DADOS
         Se (coordenadaEixoX > 0) entao // se X é positivo

            se (coordenadaEixoY < 0) entao // junto com Y negativo
               escreval(" QUADRANTE 4")
            senao // também com Y positivo
               escreval(" QUADRANTE 1")
            fimSe

         Senao // (X < 0) - sendo X negativo

            se (coordenadaEixoY > 0) entao // junto com Y positivo
               escreval(" QUADRANTE 2")
            senao // também com Y negativo
               escreval(" QUADRANTE 3")
            fimSe

         FimSe

         // Pulo de linha para quando houver quadrante
         escreval() // uma linha de espaçamento depois que o quadrante for mostrado
      FIMSE
      
      // ENTRADA DE DADOS (junto com SAÍDA)
      escreva(" Digite a coordenada do Eixo X: ")
      leia(coordenadaEixoX)
      escreva(" Digite a coordenada do Eixo Y: ")
      leia(coordenadaEixoY)
      escreval()
      
   fimRepita ( (coordenadaEixoX = 0) OU (coordenadaEixoY = 0) )


   // SAÍDA DE DADOS Final (Executada quando o valor dos eixos X ou Y é igual 0)
   escreval("-----------------------------------")
   escreval()
   escreval(" A coordenada do ponto no plano está com algum valor nulo!")
   escreval()
   escreval(" (", coordenadaEixoX, ",", coordenadaEixoY, ") <- Está sobre o Eixo!")

Fimalgoritmo