Algoritmo "pares_consecutivos"

Var

   // variável para entrada de dados
   numeroInteiroDigitado : inteiro
   
   // variáveis para processamento de dados
   somaCincoParesConsecutivos : inteiro
   quantidadeLeituras : inteiro

Inicio

   // Introdução
   escreval(" SOMA DOS 5 NÚMEROS PARES CONSECUTIVOS (QUE VEM DEPOIS)")
   escreval()
   escreval(" (Incluindo Número Digitado se for par e excluindo se é ímpar)")
   escreval("--------------------------------------------------------------")
   escreval()


   // Laço Condicional Pós-Teste controlando: ENTRADA DE DADOS e PROCESSAMENTO DE DADOS
   repita // executa a 1ª vez por padrão

      // Estrutura Condicional Simples controlando: PROCESSAMENTO DE DADOS(análise se número é positivo ou negativo)
      SE (quantidadeLeituras > 0) ENTAO // se já houve leitura

         // Estrutura Condicional Composta controlando: PROCESSAMENTO DE DADOS(análise se número é par ou ímpar) e SAÍDA DE DADOS(que faz amostragem da soma dos pares ou se número é inválido)
         Se (numeroInteiroDigitado > 0) Entao // se número é positivo

            // Estrutura Condicional Composta controlando: PROCESSAMENTO DE DADOS(cálculo da soma dos 5 pares consecutivos - independente se é par ou ímpar)
            se (numeroInteiroDigitado % 2 <> 0) entao // e se esse número positivo é ímpar
               // obtemos o número par que vem após o ímpar digitado, para conseguir os 4 pares consecutivos
               numeroInteiroDigitado <- numeroInteiroDigitado + 1
            fimse
            
            // Cálculo dos pares a partir do 1º par, utilizado como base (que pode ter já sido digitado ou após o ímpar digitado)
            somaCincoParesConsecutivos <- numeroInteiroDigitado + (numeroInteiroDigitado + 2) + (numeroInteiroDigitado + 4) + (numeroInteiroDigitado + 6)  + (numeroInteiroDigitado + 8)

            // 1ª Alternativa - SAÍDA DE DADOS (quando número for positivo)
            escreval(" (Somando a partir de ", numeroInteiroDigitado, ")")
            escreval("   Soma dos 5 Pares = ", somaCincoParesConsecutivos)

         Senao // se número é negativo
            // 2ª Alternativa - SAÍDA DE DADOS (quando número for negativo)
            escreval(" Número inválido! Precisa ser POSITIVO!")
         FimSe
         
         // Separação entre a SAÍDA gerada do processamento que foi feito baseado na leitura anterior e a nova leitura que ocorrerá
         escreval("________")
         escreval()
      FIMSE

      // ENTRADA DE DADOS (junto com SAÍDA)
      escreva(" Digite um número inteiro: ")
      leia(numeroInteiroDigitado)
      escreval()
   
      // Variável para contagem da quantidade de leituras que já houveram
      quantidadeLeituras <- quantidadeLeituras + 1
   
   fimRepita (numeroInteiroDigitado = 0) // repete até que o número seja Zero


   // SAÍDA DE DADOS Final (mostrada quando laço for pulado, ou seja, quando número for igual a Zero)
   escreval(" O número ZERO é o critério de parada. Até mais!")
   escreval("-------------------------------------------------------------")
   
Fimalgoritmo