Algoritmo "media_idades"

Var

   // variável para entrada de dados
   idadeDigitada : inteiro

   // variáveis para processamento de dados
    // na Estrurura de Repetição
   somaIdades, quantidadeExecucoesEnquanto : inteiro
    // na Estrutura Condicional Composta
   quantidadeIdadesValidas : inteiro
   mediaIdades : real

Inicio

   // Iniciação de variáveis
   somaIdades <- 0
   quantidadeIdadesValidas <- 0

   // Introdução
   escreval("      MÉDIA IDADE     ")
   escreval(" ---------------------")
   escreval()
   
   // Operação de ENTRADA DE DADOS (junto com SAÍDA)
   escreval(" Digite as idades:")
   escreva(" ")
    // 1ª Leitura (Leitura Padrão)
   leia(idadeDigitada)
   
   // Estrutura de Repetição controlando: ENTRADA DE DADOS (operando a mesma leitura acima) e PROCESSAMENTO DE DADOS
   enquanto (idadeDigitada >= 0) faca // repete enquanto idade for positiva ou zero
      // Este bloco é executado se a Leitura Padrão ou Leitura Repetida foi de um número válido

      // Contagem de números válidos (caso houver)
      quantidadeIdadesValidas <- quantidadeIdadesValidas + 1

      // Somando o valor válido digitado com o anterior (se for na 1ª vez soma com 0)
      somaIdades <- somaIdades + IdadeDigitada

      escreva(" ")
      // Leitura Repetida
      leia(idadeDigitada)

   fimEnquanto
   
   escreval()

   // Estrutura Condicional Composta controlando: PROCESSAMENTO DE DADOS e SAÍDA DE DADOS
   se (quantidadeIdadesValidas = 0) entao // se nenhm valor válido foi digitado
      // Quer dizer que Leitura padrão foi de número negativo (porque não executou o Enquanto)
      escreval(" Impossível de calcular a média, pois não há idades válidas!")
   senao
      // Se houve alguma idade válida quer dizer que é possível calcular a média
      mediaIdades <- somaIdades / quantidadeIdadesValidas
      escreval(" MÉDIA IDADES = ", mediaIdades:4:2)
      
   fimSe

Fimalgoritmo