Algoritmo "fatorial"

Var

   // variável para armazenar número que precisa encontrar seu Fatorial
   numeroCalcularFatorial : inteiro
   // variável para armazenar quantidade de cálculos de Fatorial necessárias
   quantidadeFatoriais : inteiro
   // variável que faz a contagem de execuções do cálculo de Fatorial
   contagemExecucoes : inteiro
   // variável para armazenar a escolha válida que usuário fez sobre continuar a fatoriar ou não
   escolhaDoUsuario : caractere


// Realiza a introdução (para mostrar no cabeçalho do programa)
Procedimento introducaoPrograma()
Inicio
   escreval("     CALCULADORA DE FATORIAL    ")
   escreval(" -------------------------------")
   escreval()
FimProcedimento

// Realiza a ENTRADA do número que será usado para Fatoriar
Funcao pedirNumeroNatural(): inteiro
Var
   // variável para entrada de dados
   numeroNatural : inteiro
Inicio
   // ENTRADA Inicial (1ª) - Pede o número pelo menos uma vez
   escreva(" Digite um Número Natural: ")
   leia(numeroNatural)
   
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

Funcao perguntarAoUsuarioDesejaContinuarCalculando():caractere
Var
   escolhaFeita : caractere
Inicio

   // ENTRADA Inicial (1ª) - Pede S/N pelo menos uma vez
   escreval(" Deseja fazer mais algum cálculo? (S para sim | N para não)")
   escreva(" -> ")
   leia(escolhaFeita)
   // Alterando o que o usuário digitou para Maiúsculo (para caso digite 's' ou 'n' também dê certo)
   escolhaFeita <- maiusc(escolhaFeita)

   // entregando valor onde foi chamado
   retorne escolhaFeita
FimFuncao

Procedimento avisoRespostaInvalidaComLimpeza()
Var
   // variável usada apenas para indicar ENTER
   variavelLixo : caractere
Inicio
   // Feedback (alertando sobre valor inválido)
   escreval()
   escreval("    VALOR NÃO PERMITIDO! DIGITE O DADO CORRETAMENTE!")
   escreval()
   leia(variavelLixo)

   // Limpeza de tela para tirar da tela algo que ocorreu(que foi Inválido) e o Feedback de Inválido
   limpaTela()
   // como consequência tendo que limpar tudo

FimProcedimento

// Algoritmo
Inicio

   // Laço Condicional Pós-Teste controlando: Execução de 1 Cálculo do Fatorial e a Pergunta para decidir se repete ou não o mesmo processo
   REPITA  // executa pelo menos 1 vez
   
      // Limpeza para sempre começar do zero; sempre queremos fazer 1 cálculo de Fatorial com a tela limpa
      limpaTela()
      
      introducaoPrograma()
      
      escreval()

      // Função Inicial (1ª)
      numeroCalcularFatorial <- pedirNumeroNatural()

      // Laço Condicional Pré-Teste controlando: Feedback ao Usuário e Repetição da ENTRADA do Número
      enquanto (numeroCalcularFatorial < 0) faca // repete enquanto númeroDigitado é negativo (não estiver no conjunto dos números naturais)
         // Alertando sobre ENTRADA Inválida e Limpando Tela - Tudo com a Função
         avisoRespostaInvalidaComLimpeza()

         // Como ocorreu a Limpeza, que limpa tudo, será repetida as instruções que gostariamos não que fossem tiradas da tela

         // Introdução Repetida
         introducaoPrograma()

         escreval()

         // Função Repetida - para obter novo Número
         numeroCalcularFatorial <- pedirNumeroNatural()
      fimEnquanto

      escreval()
      
      // Parte do Fatorial
      mostrarProcessarFatorial(numeroCalcularFatorial)

      escreval()
      escreval()

      // Função Inicial (1ª)
      escolhaDoUsuario <- perguntarAoUsuarioDesejaContinuarCalculando()

      // Laço Condicional Pré-Teste controlando: Feedback ao Usuário e Repetição da ENTRADA da Resposta(com a pergunta)
      Enquanto (escolhaDoUsuario <> "S") E (escolhaDoUsuario <> "N") faca
         // Alertando sobre ENTRADA Inválida e Limpando Tela - Tudo com a Função
         avisoRespostaInvalidaComLimpeza()

         // Como ocorreu a Limpeza, que limpa tudo, Será repetida as instruções que gostariamos não que fossem tiradas da tela

         // Introdução Repetida
         introducaoPrograma()

         escreval()

         // Mostrando a ENTRADA de número anterior (que foi válida)
         escreval(" Digite um Número Natural: ", numeroCalcularFatorial)

         escreval()

         // Repetindo o mesmo cálculo de Fatorial com o número anterior
         mostrarProcessarFatorial(numeroCalcularFatorial)

         escreval()
         escreval()

         // Função Repetida - para obter nova Resposta para Pergunta
         escolhaDoUsuario <- perguntarAoUsuarioDesejaContinuarCalculando()
      FimEnquanto

   ATE (escolhaDoUsuario = "N") // repete até que Usuário escolha NÃO fazer mais cálculos de Fatorial (até que valorDigitado tenha sido 'n' ou 'N')

   // Separação entre: Amostragem de Cálculo do Fatorial(com Pergunta) e Fim do Programa
   escreval()
   escreval("__________________")
   escreval()

FimAlgoritmo