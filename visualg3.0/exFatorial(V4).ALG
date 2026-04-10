Algoritmo "fatorial"

Var

   // variável para armazenar número que precisa encontrar seu Fatorial
   numeroCalcularFatorial : inteiro
   // variável para armazenar quantidade de cálculos de Fatorial necessárias
   quantidadeFatoriais : inteiro
   // variável que faz a contagem de execuções do cálculo de Fatorial
   contagemExecucoes : inteiro


// Realiza a introdução (para mostrar no cabeçalho do programa)
Procedimento introducaoPrograma()
Inicio
   escreval("     CALCULADORA DE FATORIAL    ")
   escreval(" -------------------------------")
   escreval()
FimProcedimento

// Realiza a ENTRADA da quantidade de cálculos de Fatorial
Funcao pedirQuantidadeCalculosFatorial(): inteiro
Var
   // variáveis para entrada de dados
   quantidadeDesejadaCalculos : inteiro
   variavelLixo : caractere // apenas para indicar ENTER
Inicio
   // ENTRADA Inicial (1ª) - Pede a quantidade pelo menos uma vez
   escreva(" Digite a quantidade desejada de Cálculos de Fatorial: ")
   leia(quantidadeDesejadaCalculos)

   // Laço Condicional Pré-Teste controlando: Feedback ao Usuário(junto com Limpeza) e Repetição da ENTRADA
   enquanto (quantidadeDesejadaCalculos <= 0) faca // repete enquanto quantidade é inválida; quantidade nula ou negativa
      // Feedback (alertando sobre valor inválido)
      escreval()
      escreval(" QUANTIDADE INVÁLIDA! DIGITE UM VALOR POSITIVO!")
      leia(variavelLixo)
      // Limpeza de tela para tirar toda poluição (aproveitando que está no início para voltar onde gostaria que voltasse sem informações desnecessárias)
      limpaTela()
      // Introdução Repetida (Já que foi apagada)
      introducaoPrograma()
      // ENTRADA Repetida
      escreva(" Digite a quantidade desejada de Cálculos de Fatorial: ")
      leia(quantidadeDesejadaCalculos)
   fimEnquanto

   // entregando valor onde foi chamado
   retorne quantidadeDesejadaCalculos
FimFuncao

// Realiza a ENTRADA do número que será usado para Fatoriar
Funcao pedirNumeroNatural(): inteiro
Var
   // variável para entrada de dados
   numeroNatural : inteiro
Inicio
   // ENTRADA Inicial (1ª) - Pede o número pelo menos uma vez
   escreva(" Digite um Número Natural: ")
   leia(numeroNatural)

   // Laço Condicional Pré-Teste controlando: Feedback ao Usuário e Repetição da ENTRADA
   enquanto (numeroNatural < 0) faca // repete enquanto númeroDigitado é negativo (não estiver no conjunto dos números naturais)
      // Feedback (alertando sobre valor inválido)
      escreval(" NÚMERO INVÁLIDO! DIGITE UM NÚMERO QUE SEJA NATURAL!")
      escreval()
      // ENTRADA Repetida
      escreva(" Digite um Número Natural: ")
      leia(numeroNatural)
   fimEnquanto

   // entregando valor onde foi chamado
   retorne numeroNatural
FimFuncao

// Realiza, ao mesmo tempo, a Amostragem e Cálculo do Fatorial
Procedimento mostrarProcessarFatorial (numeroFatorar : inteiro)
Var
   // variáveis para processamento de dados
   resultadoFatorial : inteiro
   antecessor : inteiro
Inicio

   // SAÍDA para indicar ao usuário que será mostrado o cálculo do Fatorial do número digitado
   escreva(" ", numeroFatorar, "! = ")

   // Estrutura Condicional Composta analisando número que deseja encontrar Fatorial
   SE (numeroFatorar = 0) OU (numeroFatorar = 1) entao
      // Quando é 0 ou 1 já sabe-se o resultado. Então, não precisa fazer cálculo

      // Fatorial de 0 e 1 já têm como resultado 1, pois não tem antecessor.
      resultadoFatorial <- 1

      // 1ª SAÍDA já mostrando resultado final cálculo
      escreval(resultadoFatorial)

   SENAO
      // Quando númeroNatural é diferente de 1 e 0 precisa fazer cálculo com antecessor(es)
      // 1ª SAÍDA mostrando número inicial do cálculo. Assim, para depois poder mostrar a multiplicação pelo(s) antecessor(es) - pois ainda não é possível saber o resultado
      escreva(numeroFatorar)

      // Armazenando no resultado o número inicial do cálculo porque ele é o primeiro número que faz parte do resultado, para assim ser multiplicado pelo(s) antecessor(es)
      resultadoFatorial <- numeroFatorar

      // Laço Incondicional que controla a multiplicação pelo antecessor (ela sendo mostrada na SAÍDA e calculada; processada) também analisando se tem antecessor - até 1
      para antecessor de numeroFatorar - 1 ate 1 passo -1 faca
           // Mostrando multiplicação obrigatória com este antecessor
           escreva(" x ", antecessor)
           // Multiplicando o que já tem como resultadoFatorial(que pode ser o numero inicial ou o resultado da multiplicação já feita com outro antecessor) por antecessor
           resultadoFatorial <- resultadoFatorial * antecessor
      fimPara

      // Última SAÍDA mostrando resultado final cálculo
      escreval(" = ", resultadoFatorial)
   FIMSE
FimProcedimento


// Algoritmo
Inicio

   // Introdução Inicial (1ª)
   introducaoPrograma()

   // Armazenando na variável o retorno da função (que entrega a quantidadade escolhida pelo usuário, sendo válida)
   quantidadeFatoriais <- pedirQuantidadeCalculosFatorial()

   // Separação entre: ENTRADA da quantidadeFatoriais e dos Cálculos de Fatorial
   escreval()
   escreval("__________________")
   escreval()

   // Cálculo Fatorial Inicial (fora da repetição porque ele executa pelo menos 1 vez e, coincidentemente, também na 1ª vez executa unicamente dessa forma)
   escreval(" 1º CÁLCULO")
   escreval()
   numeroCalcularFatorial <- pedirNumeroNatural()
   escreval()
   mostrarProcessarFatorial(numeroCalcularFatorial)

   // Laço Incondicional controlando: Repetição do Cálculo Fatorial, conforme quantidade de vezes escolhida pelo usuário
   para contagemExecucoes de 2 ate quantidadeFatoriais passo 1 faca
      // Sempre fazendo separação antes para separar cálculo anterior do próximo(que acontecerá nessa execução)
      escreval()
      escreval("---")
      escreval()
      escreval(" ", contagemExecucoes ,"º CÁLCULO")
      escreval()
      // Cálculo Fatorial Repetido
      numeroCalcularFatorial <- pedirNumeroNatural()
      escreval()
      mostrarProcessarFatorial(numeroCalcularFatorial)
   fimPara

   // Separação entre: Amostragem de Cálculo do Fatorial e Fim do Programa
   escreval("__________________")
   escreval()

FimAlgoritmo