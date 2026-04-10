Algoritmo "media_idades"

Var

   // Variável para entrada de dados
   idadeDigitada : inteiro
   
   // Variáveis para processamento de dados
   quantidadeExecucoesEnquanto, somaIdades, quantidadeNumerosValidos : inteiro
   mediaIdades : real
   
Inicio

   // COMO ESTÁ ORGANIZADA A ESTRUTURA REPITA (executa 1ª vez padrão):
    // 1º - Cálculo (soma acumulada das idades válidas)
    // 2º - Leitura (obtendo nova idade)
    // 3º - Contagem de Execuções (ao chegar no final do bloco)
    // 4º - Análise (condição verificando se número é válido ou inválido)

   /////////////////////////////////////////////////////////////////////////
    
   // Iniciação de Variáveis
   idadeDigitada <- 0
   quantidadeExecucoesEnquanto <- 0
   
   // Introdução
   escreval()
   escreval("      MÉDIA IDADES     ")
   escreval(" ----------------------")
   escreval()

   // Estrutura de Repetição Repita controlando: ENTRADA DE DADOS e PROCESSAMENTO DE DADOS
   repita // Executa 1ª vez por padrão
      somaIdades <- somaIdades + idadeDigitada

      escreva(" Digite uma idade: ")
      leia(idadeDigitada)

      quantidadeExecucoesEnquanto <- quantidadeExecucoesEnquanto + 1
   fimRepita (idadeDigitada < 0) // repete até que idade seja negativa (analisa por último para depois executar de novo, se necessário)
   
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