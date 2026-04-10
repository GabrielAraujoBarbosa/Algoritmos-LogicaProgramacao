Algoritmo "fatorial"

Var

   // variáveis para entrada de dados
   numeroNatural : inteiro
   variavelLixo : caractere  // apenas para indicar enter

   // variáveis para processamento de dados
   numerosDoCalculo : inteiro
   resultadofatorial : inteiro


// Realiza a introdução (para mostrar no cabeçalho do programa)
Procedimento introducaoPrograma()
inicio

   escreval("     CALCULADORA DE FATORIAL    ")
   escreval(" -------------------------------")
   escreval()
fimProcedimento


Inicio

   // Introdução Inicial
   introducaoPrograma()

   // ENTRADA Inicial (1ª)
   escreva(" Digite um número natural (entre 0 e 15): ")
   leia(numeroNatural)

   // Laço Condicional Pré-Teste controlando: Repetição da ENTRADA (também analisando valor digitado)
   enquanto (numeroNatural < 0) OU (numeroNatural > 15) faca  // Executa enquanto número digitado é inválido (fora do intervalo de 0 a 15)
      // Dando Feedback ao Usuário sobre valor inválido
      escreval()
      escreval(" NÚMERO INVÁLIDO! DIGITE UM NÚMERO NATURAL VÁLIDO!")
      leia(variavelLixo)
      // Limpeza da tela para poder repetir a ENTRADA sem aparecer informações desnecessárias (não aparecer mais o feedback da ENTRADA anterior e também a mesma que foi inválida)
      limpaTela()

      // VOLTANDO TUDO QUE QUERIA CONTINUASSE APARECENDO NA TELA (QUE NÃO PRECISAVA APAGAR)
      // Introdução Repetida
      introducaoPrograma()

      // ENTRADA Repetida
      escreva(" Digite um número natural (entre 0 e 15): ")
      leia(numeroNatural)
   fimEnquanto

   // SAÍDA para separação entre: ENTRADA numeroNatural e SAÍDA mostrando resultado
   escreval("____________")
   escreval()


   // Armazenando 1 no resultado, pois o resultado sempre será pelo menos 1 (e caso precise calcularFatorial o 1 faz com que seja incluido o 1º número maior no resultado - Para)
   resultadoFatorial <- 1

   // Laço Incondicional que controla a realização do cálculo do Fatorial, caso numeroNatural for maior 1
   para numerosDoCalculo de numeroNatural ate 2 passo -1 faca
      // Calcula caso numero for maior que 1, pois a partir de 2 existe antecessor
      resultadoFatorial <- resultadoFatorial * numerosDoCalculo
   fimPara

   // SAÍDA para amostragem do resultadoFatorial do número de ENTRADA
   escreval(" O fatorial de ", numeroNatural, " é ", resultadoFatorial)
   escreval(" ", numeroNatural, "! = ", resultadoFatorial)

   // SAÍDA para separação entre: a SAÍDA que faz a amostragem do resultado e Fim do Programa
   escreval("____________")
   escreval()

Fimalgoritmo