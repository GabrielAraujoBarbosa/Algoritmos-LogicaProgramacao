Algoritmo "par_impar"

Var

   // variáveis para entrada de dados
   quantidadeDesejadaNumerosInteiros, numeroInteiro : inteiro
   variavelLixo : caractere

   // variável para processamento de dados
   contagemExecucoes : inteiro

Inicio

   // Introdução
   escreval()
   escreval("  SINAL DOS NÚMEROS E SUA DIVISIBILIDADE POR 2")
   escreval(" ----------------------------------------------")
   escreval()
   
   // ENTRADA Inicial (1ª)
   escreva(" Quantidade de números inteiros que deseja digitar: ")
   leia(quantidadeDesejadaNumerosInteiros)

   // Laço Condicional Pré-Teste controlando: Feedback ao Usuário(caso ENTRADA inválida)e Repetição ENTRADA
   enquanto (quantidadeDesejadaNumerosInteiros <= 0) faca
      // Feedback que mostra ao usuário que valor digitado foi inválido
      escreval()
      escreval(" QUANTIDADE INVÁLIDA! DIGITE UM NÚMERO REAL!")
      leia(variavelLixo)
      // Limpeza da tela para não continuar com a tela poluída (não deixar mostrando a digitação inválida e feedback que consta inválido)
      limpaTela()
      
      // Introdução Repetida (de novo porque houve limpeza, então precisa fazer de novo)
      escreval()
      escreval("  SINAL DOS NÚMEROS E SUA DIVISIBILIDADE POR 2")
      escreval(" ----------------------------------------------")
      escreval()
   
      // ENTRADA Repetida
      escreva(" Quantidade de números inteiros que deseja digitar: ")
      leia(quantidadeDesejadaNumerosInteiros)
   fimEnquanto
   
   // SAÍDA para separação entre Entrada da Quantidade e, posteriormente, Entrada dos Números
   escreval("___________________________")
   
   // Laço Incondicional controlando: ENTRADA e Análise do Número Inteiro
    // Laço executa conforme quantidade desejada
   para contagemExecucoes de 1 ate quantidadeDesejadaNumerosInteiros passo 1 faca
      // 1 linha de espaçamento quando houver ENTRADA
      escreval()
      // ENTRADA obtendo número (junto com SAÍDA)
      escreva(" Digite o ", contagemExecucoes, "º número: ")
      leia(numeroInteiro)

      // Estrutura Condicional Composta(com outra mesma aninhada) Analisando o número digitado (o seu sinal e sua divisibilidade por 2)
      SE (numeroInteiro <> 0) ENTAO  // se número é diferente de zero; se é um número positivo ou negativo
         // Se entra aqui pode ser positivo ou negativo (sinal) e par ou ímpar (divisibilidade por 2)
          // Sinal e divisibilidade por 2 são coisas diferentes (o sinal não afeta a divisibilidade por 2, assim como o oposto)

         // Análise se esse número é par ou ímpar
         se (numeroInteiro % 2 = 0) entao
            escreva(" PAR")
         senao
            escreva(" ÍMPAR")
         fimse

         // Análise se esse número é positivo ou negativo
         se (numeroInteiro > 0) entao
            escreval(" POSITIVO")
         senao
            escreval(" NEGATIVO")
         fimSe

      SENAO // se número é igual a zero
          escreval(" NULO")
      FIMSE
      
   fimPara

   // FIM
   escreval()

Fimalgoritmo