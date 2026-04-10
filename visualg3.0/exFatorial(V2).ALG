Algoritmo "fatorial"

Var

   // variáveis para entrada de dados
   numeroNatural : inteiro
   variavelLixo : caractere // apenas para indicar ENTER
   
   // variáveis para processamento de dados
   resultadoFatorial : inteiro
   antecessor : inteiro


// Realiza a introdução (para mostrar no cabeçalho do programa)
Procedimento introducaoPrograma()
inicio
   escreval("     CALCULADORA DE FATORIAL    ")
   escreval(" -------------------------------")
   escreval()
fimProcedimento


Inicio

   // Introdução Inicial (1ª)
   introducaoPrograma()

   // ENTRADA Inicial (1ª)
   escreva(" Digite um Número Natural: ")
   leia(numeroNatural)

   // Laço Condicional Pré-Teste controlando: Repetição da ENTRADA (também analisando valor digitado)
   enquanto (numeroNatural < 0) faca  // Executa enquanto número digitado é inválido (fora do conjunto dos números naturais)
      // Dando Feedback ao Usuário sobre valor inválido
      escreval()
      escreval(" NÚMERO INVÁLIDO! DIGITE UM NÚMERO NATURAL VÁLIDO!")
      leia(variavelLixo)
      // Limpeza da tela para poder repetir a ENTRADA sem continuar aparecendo informações desnecessárias (não aparecer mais o feedback da ENTRADA anterior e também a mesma que foi inválida)
      limpaTela()

      // VOLTANDO TUDO QUE QUERIA CONTINUASSE APARECENDO NA TELA (QUE NÃO PRECISAVA APAGAR)
      // Introdução Repetida
      introducaoPrograma()

      // ENTRADA Repetida
      escreva(" Digite um Número Natural: ")
      leia(numeroNatural)
   fimEnquanto

   // Separação entre: ENTRADA número que deseja calcular e Amostragem de Cálculo do Fatorial
   escreval("__________________")
   escreval()
   escreval()

   // SAÍDA para indicar ao usuário que será mostrado o cálculo do Fatorial do número digitado
   escreva(" ", numeroNatural, "! = ")
   
   // Estrutura Condicional Composta analisando número que deseja encontrar Fatorial
   SE (numeroNatural = 0) OU (numeroNatural = 1) entao
      // Quando é 0 ou 1 já sabe-se o resultado. Então, não precisa fazer cálculo

      // Fatorial de 0 e 1 já têm como resultado 1, pois não tem antecessor.
      resultadoFatorial <- 1
      
      // 1ª SAÍDA já mostrando resultado final cálculo
      escreval(resultadoFatorial)
      
   SENAO
      // Quando númeroNatural é diferente de 1 e 0 precisa fazer cálculo com antecessor(es)
   
      // 1ª SAÍDA mostrando número inicial do cálculo. Assim, para depois poder mostrar a multiplicação pelo(s) antecessor(es) - pois ainda não é possível saber o resultado
      escreva(numeroNatural)
   
      // Armazenando no resultado o número inicial do cálculo porque ele é o primeiro número que faz parte do resultado, para assim ser multiplicado pelo(s) antecessor(es)
      resultadoFatorial <- numeroNatural
      
      // Laço Incondicional que controla a multiplicação pelo antecessor (ela sendo mostrada na SAÍDA e calculada; processada) também analisando se tem antecessor - até 1
      para antecessor de numeroNatural - 1 ate 1 passo -1 faca
           // Mostrando multiplicação obrigatória com este antecessor
           escreva(" x ", antecessor)
           // Multiplicando o que já tem como resultadoFatorial(que pode ser o numero inicial ou o resultado da multiplicação já feita com outro antecessor) por antecessor
           resultadoFatorial <- resultadoFatorial * antecessor
      fimPara

      // Última SAÍDA mostrando resultado final cálculo
      escreval(" = ", resultadoFatorial)

   FIMSE

   // Separação entre: Amostragem de Cálculo do Fatorial e Fim do Programa
   escreval()
   escreval("__________________")
   escreval()

Fimalgoritmo