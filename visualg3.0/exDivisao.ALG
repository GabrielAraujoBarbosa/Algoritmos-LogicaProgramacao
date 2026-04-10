Algoritmo "divisao"

Var

   // variáveis para entrada de dados
   quantidadeDesejadaDivisoes : inteiro
   dividendo, divisor : real
   variavelLixo : caractere  // apena para indicar ENTER
   
   // variável para processamento de dados
   calculoDivisao : real
   contagemExecucoes : inteiro


// Obtêm 2 números, Calcula a divisão e Exibe resultado
Procedimento calcularMostrarDivisao()
Inicio
   escreva(" Digite o Dividendo: ")
   leia(dividendo)
   escreva(" Digite o Divisor: ")
   leia(divisor)

   escreval()

   // Análise se a Divisão pode ser Resolvida ou Não
   SE (divisor <> 0) ENTAO // Se Divisor é diferente de ZERO (que significa que pode-se resolver a divisão)
      // Divisão é calculada

      // PROCESSAMENTO DE DADOS (cálculo)
      calculoDivisao <- dividendo / divisor

      // SAÍDA DE DADOS (mostrando resultado)
      escreva(" RESULTADO -> ")
      escreval(" ", dividendo:4:2, " ÷ ", divisor:4:2, " = ", calculoDivisao:4:2)

   SENAO // Se divisor é igual a ZERO (significa que não dá para resolver a divisão)

      // Informa ao usuário o Impedimento do Cálculo
      escreva(" Não é possível dividir. Pois a ")

      // (Depois explicando também o motivo desse Impedimento)
      // Análise do motivo que não pode ser resolvido
      se (dividendo <> 0) entao // se Dividendo é diferente de ZERO (assim sabe-se que o motivo é por indefinição)

         // qualquer numero % 0 = indefinido -> porque resultado é desconhecido; não pode ser determinado; é imposível de resolver, ou seja, não se pode definir um resultado
         escreval("Divisão é Indefinida!")
      senao  // se Dividendo é igual a ZERO (assim sabe-se que o motivo é por indeterminação)

         // 0 % 0 = indeterminado -> porque resultado é impreciso; ambíguo; o resultado pode ser vários valores o que é inválido
         escreval("Divisão é Indeterminada!")
      fimse

   FIMSE
FimProcedimento

// Exibe o Texto que mostra do que se trata o programa
Procedimento IntroducaoPrograma()
Inicio
   escreval("       CALCULADORA DE DIVISÃO      ")
   escreval(" ----------------------------------")
   escreval()
FimProcedimento


Inicio

   // Introdução Inicial (1ª)
   IntroducaoPrograma()
   
   // ENTRADA Inicial (1ª)
   escreva(" Digite a quantidade desejada de Cálculos de Divisão: ")
   leia(quantidadeDesejadaDivisoes)

   // Laço Condicional Pré-Teste controlando: Repetição da ENTRADA, mas antes dando feedback e simulando a volta para ENTRADA
   enquanto (quantidadeDesejadaDivisoes <= 0) faca
       // Feedback ao Usuário
       escreval()
       escreval("   QUANTIDADE INVÁLIDA! DIGITE UM NÚMERO POSITIVO!")
       leia(variavelLixo)

       // Limpeza de tela (para tirar toda poluição da tela, pois coisas que aconteceram se tornam desnecessárias para a próxima leitura)
       limpaTela()

       // Introdução Repetida
       IntroducaoPrograma()
       
       // ENTRADA Repetida
       escreva(" Digite a quantidade desejada de Cálculos de Divisão: ")
       leia(quantidadeDesejadaDivisoes)
   fimEnquanto

   // SAÍDA para Separação entre: ENTRADA-quantidadeDesejada e Cálculo(s) de Divisão (que acontecerá)
   escreval("_________________")
   escreval()

   // Faço pelo menos 1x (e acontece unicamente dessa forma na 1ª vez)
   escreval(" ( 1º CÁLCULO )")
   escreval()
   // Cálculo Inicial (1º)
   calcularMostrarDivisao()
   
   // Se precisa repetir a execução do calculo da divisão sempre repito antes fazendo separação
   para contagemExecucoes de 2 ate quantidadeDesejadaDivisoes passo 1 faca
      // Separação entre cálculos
      escreval()
      escreval("--")
      escreval()
      
      escreval(" ( ", contagemExecucoes, "º CÁLCULO )")
      escreval()
      // Cálculo Repetido
      calcularMostrarDivisao()
   fimPara
   
   // SAÍDA para Separação entre: Cálculo(s) de Divisão e Fim do Programa
   escreval("_________________")
   escreval()
   
Fimalgoritmo