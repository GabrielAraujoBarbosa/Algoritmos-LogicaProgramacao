Algoritmo "dardo"

Var

   // variáveis para entrada de dados
   medidaLancamento1, medidaLancamento2, medidaLancamento3 : real

   // variável para processamento de dados
   maiorLancamento : real
   
Inicio

   escreval("   -------------------------")
   escreval("   |  LANÇAMENTO DE DARDO  |")
   escreval("   -------------------------")
   escreval()
   escreval("  Distâncias:")
   escreval()

   // entrada de dados (junto da saída de dados)
   escreva("  1º lançamento - ")
   leia(medidaLancamento1)
   escreva("  2º lançamento - ")
   leia(medidaLancamento2)
   escreva("  3º lançamento - ")
   leia(medidaLancamento3)

   // processamento de dados
   se (medidaLancamento1 >= medidaLancamento2) E (medidaLancamento1 >= medidaLancamento3) entao
      maiorLancamento <- medidaLancamento1
   senao
      se (medidaLancamento2 >= medidaLancamento3) entao
         maiorLancamento <- medidaLancamento2
      senao
         maiorLancamento <- medidaLancamento3
      fimSe
   fimSe
   
   escreval()
   
   // saída de dados (mostrando o dado processado)
   escreval(" ---------------------------")
   escreval("  Melhor Lançamento: ", maiorLancamento:4:2)
   
Fimalgoritmo