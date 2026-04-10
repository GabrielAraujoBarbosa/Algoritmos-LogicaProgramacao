Algoritmo "quadrante"

Var

   // Variáveis para entrada de dados
   coordenadaEixoX, coordenadaEixoY : inteiro
   
   // Variável para processamento de dados
   quantidadeEntradaDados : inteiro

Inicio

   // Iniciação de variáveis
   quantidadeEntradaDados <- 0
    // Atribuindo valores válidos para executar o bloco do Enquanto
   coordenadaEixoX <- 311
   coordenadaEixoY <- 311

   // Introdução
   escreval("      PLANO CARTESIANO     ")
   escreval()
   escreval("    Coordenadas do Ponto   ")
   escreval(" --------------------------")
   escreval()
   escreval()

   // Estrutura de Repetição controlando: ENTRADA DE DADOS e PROCESSAMENTO DE DADOS(análise se já houve ENTRADA)
    // Essa Estrutura está manualmente manipulada para sempre executar pelo menos uma única vez
   enquanto (coordenadaEixoX <> 0) E (coordenadaEixoY <> 0) faca // repete enquanto nenhum dos 2 valores forem nulos (iguais a zero); repete enquanto Coordenada do Ponto estiver em algum Quadrante
      // O Bloco executa na 1ª vez devido os Valores Fictícios nas coordenadas atribuidos propositalmente e de forma manual
      // Este bloco é REPETIDO quando Coordenada do Ponto no Plano não estiver sobre um dos eixos, mas sim em algum quadrante

      // Estrutura Condicional Simples - PRINCIPAL - controlando: PROCESSAMENTO DE DADOS(análise do quadrante)
       // Criada para analisar se a execução atual se trata de uma repetição, porque assim sabe-se que já houve a ENTRADA
      SE (quantidadeEntradaDados > 0) entao // se já houve alguma entrada de dados (as leituras de X e Y)

         // Estruturas Condicionais Compostas Aninhadas - Secundárias - controlando: SAÍDA DE DADOS(amostra Quadrante do Ponto)
         Se (coordenadaEixoX > 0) E (coordenadaEixoY > 0) entao // se X e Y são positivos
            escreval(" QUADRANTE 1")
         Senao
            se (coordenadaEixoX < 0) E (coordenadaEixoY > 0) entao // se X é negativo e Y positivo
               escreval(" QUADRANTE 2")
            senao
               se (coordenadaEixoX < 0) E (coordenadaEixoY < 0) entao // se X e Y são negativos
                  escreval(" QUADRANTE 3")
               senao // se X é positivo e Y negativo
                  escreval(" QUADRANTE 4")
               fimSe
            fimSe
         FimSe
         
      FIMSE
      
      // ENTRADA DE DADOS (junto com SAÍDA)
      escreval()
      escreva(" Digite a coordenada do Eixo X: ")
      leia(coordenadaEixoX)
      escreva(" Digite a coordenada do Eixo Y: ")
      leia(coordenadaEixoY)
      escreval()

      // Realização da Contagem da ENTRADA de DADOS ocorrida (das 2 leituras)
      quantidadeEntradaDados <- quantidadeEntradaDados + 1
   fimEnquanto


   // SAÍDA DE DADOS Final (Executada quando o valor dos eixos X ou Y é igual 0)
   escreval("-----------------------------------")
   escreval()
   escreval(" A coordenada do ponto no plano está com algum valor nulo!")
   escreval()
   escreval(" (", coordenadaEixoX, ",", coordenadaEixoY, ") <- Está sobre o Eixo!")

Fimalgoritmo