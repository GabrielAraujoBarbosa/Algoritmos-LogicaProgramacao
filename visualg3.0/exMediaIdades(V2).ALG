Algoritmo "media_idades"

Var

   // Variável para entrada de dados
   idadeDigitada : inteiro
   
   // Variáveis para processamento de dados
   quantidadeExecucoesEnquanto, somaIdades, quantidadeNumerosValidos : inteiro
   mediaIdades : real
   
Inicio

   // COMO ESTÁ ORGANIZADA A ESTRUTURA ENQUANTO:
    // 1º - Análise (condição verificando se número é válido ou inválido)
    // 2º - Cálculo (soma acumulada das idades válidas)
    // 3º - Leitura (obtendo nova idade)
    // 4º - Contagem de Execuções (ao chegar no final do bloco)

   /////////////////////////////////////////////////////////////////////////
    
   // Iniciação de Variáveis
   idadeDigitada <- 0
   quantidadeExecucoesEnquanto <- 0
   
   // Introdução
   escreval()
   escreval("      MÉDIA IDADES     ")
   escreval(" ----------------------")
   escreval()

   // Estrutura de Repetição Enquanto controlando: ENTRADA DE DADOS e PROCESSAMENTO DE DADOS
    // (Ela sempre executa pelo menos 1 vez por causa do valor da iniciação ser válido)
   enquanto idadeDigitada >= 0 faca // repete enquanto idade for positiva ou 0
      somaIdades <- somaIdades + idadeDigitada

      escreva(" Digite uma idade: ")
      leia(idadeDigitada)

      quantidadeExecucoesEnquanto <- quantidadeExecucoesEnquanto + 1
   fimEnquanto
   
   // Operação de SAÍDA DE DADOS (ocorre depois que: Estrutura Enquanto for pulada; digitado um número negativo)
   escreval()
   escreval(" Não existe idade negativa! Ela será desconsiderada")
   escreval("")
   escreval("----------------------")
   escreval()
   
   // Estrutura Condicional Composta controlando: PROCESSAMENTO DE DADOS e SAÍDA DE DADOS
   se (quantidadeExecucoesEnquanto > 1) entao // 1ª execucão ocorre por padrão, as próximas são repetições
      // se houve execução repetida do bloco da Estrutura de Repetição; se foi digitado um número válido alguma vez

      //      quantidadeExecucoes - 1, porque a última execução que usuário digita número negativo é desconsiderada
      quantidadeNumerosValidos <- quantidadeExecucoesEnquanto - 1
      mediaIdades <- somaIdades / quantidadeNumerosValidos
      escreval(" Média das idades digitadas = ", mediaIdades:4:2)
   senao
      // se houve apenas a 1ª execução padrão da estrutura Enquanto; se foi digitado número inválido logo na 1ª leitura
      escreval(" Impossível de calcular a média, pois não há idades válidas!")
   fimSe

Fimalgoritmo