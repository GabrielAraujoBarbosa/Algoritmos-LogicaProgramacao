Algoritmo "duracao"

Var
   // variável para unidade de tempo Segundos obtido do usuário (entrada de dados)
   // (quantidade total de segundos)
   tempoSegundos : inteiro

   // variáveis para unidades de tempo Horas, Minutos e Segundos calculados (processamento de dados)
   quantidadeHoras, quantidadeMinutos, restoSegundos : inteiro

Inicio

  // entrada de dados
  // (usando a saída para que o usuário saiba qual o dado esperado)
   escreva("Informe uma quantidade de tempo em segundos (S): ")
   leia(tempoSegundos)
   
   
  // sequência de processamento de dados
   
   // cálculo para obter a quantidade dos segundos que equivalem a 1 hora
   // divisão inteira para saber quantos grupos de 1 hora (3600s) consegue-se formar com a quantidade de segundos
   quantidadeHoras <- tempoSegundos \ (60 * 60)
   
   // cálculo para obter a quantidade de segundos que não conseguem equivaler a 1 hora
   // MOD para saber a quantidade de segundos que não conseguem formar um grupo de 1 hora (3600s)
   restoSegundos <- tempoSegundos MOD (60 * 60)

   // cálculo para obter a quantidade dos segundos que equivalem a 1 minuto,
   // (usando a quantidade de segundos que não conseguiram formar 1 hora)
   //  divisão normal para saber quantos grupos de 1 minuto consegue-se formar e ainda adulterando o valor de resto se ele não for divível,
   // depois capturando apenas a parte inteira para ter apenas a informação dos grupos de 1 minuto formados
   quantidadeMinutos <- int(restoSegundos / 60)

   // cálculo para obter a quantidade de segundos que não conseguem equivaler a 1 minuto,
   // (usando a quantidade de segundos que não conseguiram formar 1 hora)
   // % (módulo) para saber a quantidade de segundos que não conseguem formar um grupo de 1 minuto (60s)
   restoSegundos <- restoSegundos % 60
   
   // OBSERVAÇÕES: (OPERADORES)
    // MOD = %                                  <- obtêm resto
    // int(x / y) mesmo resultado que x \ y    <- obtêm quociente


  // sequência de saída de dados
  // (usando os valores processados para a amostragem)
   escreval()
   escreval("A quantidade de segundos equivale a:")
   escreval(quantidadeHoras, ":", quantidadeMinutos, ":", restoSegundos)
   escreval()
   escreval("(HORAS:MINUTOS:SEGUNDOS)")

Fimalgoritmo