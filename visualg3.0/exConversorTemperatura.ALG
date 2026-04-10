Algoritmo "temperatura"

Var
   // variável para entrada de dados
   escalaTemperaturaEscolhida : caractere

   // variáveis para processamento de dados
   fahrenheit, celsius : real
Inicio

   escreval("CONVERSOR DE TEMPERATURA - CELSIUS E FAHRENHEIT")
   escreval("-----------------------------------------------")
   escreval()


   escreval("Escala de Temperatura de Origem")
   
   // entrada de dados com estrutura de repetição
   enquanto (escalaTemperaturaEscolhida <> "C") E (escalaTemperaturaEscolhida <> "F") faca
      escreva("- C para Celsius e F para Fahrenheit: ")
      leia(escalaTemperaturaEscolhida)
      escalaTemperaturaEscolhida <- maiusc(escalaTemperaturaEscolhida)
   fimEnquanto

   escreval()
   escreval("Valor da Temperatura")
   
   // processamento de dados com estrutura de seleção múltipla
   escolha escalaTemperaturaEscolhida
      caso "C"
         escreva("- Digite a temperatura ºC (apenas números): ")
         leia(celsius)
         fahrenheit <- celsius * 1.8 + 32
      caso "F"
         escreva("- Digite a temperatura ºF (apenas números): ")
         leia(fahrenheit)
         celsius <- (fahrenheit - 32) / 1.8
      outrocaso
         escreval("- Erro inesperado!")
   fimEscolha

   escreval()
   escreval("-----------------------------------------------")
   escreval()

   // saída de dados com estrutura condicional composta
   se (escalaTemperaturaEscolhida = "C") entao
      escreval(celsius:4:1, " ºC = ", fahrenheit:4:1, " ºF")
   senao
      escreval(fahrenheit:4:1, " ºF = ", celsius:4:1, " ºC")
   fimSe

Fimalgoritmo