Algoritmo "dentro_fora"

Var

   // Variáveis para entrada de dados
   quantidadeDesejadaNumerosInteiros, numerosInteiros : inteiro
   extremoMenorIntervalo, extremoMaiorIntervalo : inteiro
   variavelLixo : caractere

   // Variáveis para processamento de dados
   contagemExecucoes : inteiro
   quantidadeNumerosDentroIntervalo, quantidadeNumerosForaIntervalo : inteiro

Inicio

   // Iniciação de variáveis que contam quantidade através de soma acumulada
   quantidadeNumerosDentroIntervalo <- 0
   quantidadeNumerosForaIntervalo <- 0

   // Introdução
   escreval("    NÚMEROS INTEIROS DENTRO E FORA DO INTERVALO   ")
   escreval(" -------------------------------------------------")
   escreval()

   escreval(" QUANTIDADE")
   // ENTRADA Inicial (1ª)
   escreva("  - Quantidade de números que deseja digitar: ")
   leia(quantidadeDesejadaNumerosInteiros)

   // Laço Condicional Pré-Teste Controlando: Feedback ao Usuário(de entrada inválida) e ENTRADA DE DADOS
   enquanto (quantidadeDesejadaNumerosInteiros < 1) faca // repete enquanto número digitado não representa quantidade; não é positivo
      // SAÍDA para feedback ao usuário sobre ENTRADA inválida
      escreval()
      escreval("   (QUANTIDADE INVÁLIDA! DIGITE UM NÚMERO POSITIVO!)")
      leia(variavelLixo)
      // Limpeza de tela para não prosseguir com a tela poluída (tirar da tela a digitação inválida e feedback que diz invalidez)
      limpaTela()
      
      // Introdução Repetida (de novo, porque precisa continuar a mostrar)
      escreval("    NÚMEROS INTEIROS DENTRO E FORA DO INTERVALO   ")
      escreval(" -------------------------------------------------")
      escreval()

      escreval(" QUANTIDADE")
      // ENTRADA Repetida
      escreva("  - Quantidade de números que deseja digitar: ")
      leia(quantidadeDesejadaNumerosInteiros)
   fimEnquanto

   // Separação entre ENTRADAS (da quantidade, e a seguinte, entrada do intervalo)
   escreval()
   escreval()

   escreval(" INTERVALO")
   // ENTRADA Inicial (1ª)
   escreva("  - Digite o número MENOR do intervalo: ")
   leia(extremoMenorIntervalo)
   escreva("  - Digite o número MAIOR do intervalo: ")
   leia(extremoMaiorIntervalo)
   
   // Laço Condicional Pré-Teste: Controlando: Feedback ao Usuário(de entrada inválida) e ENTRADA DE DADOS
   enquanto (extremoMenorIntervalo >= extremoMaiorIntervalo) OU (extremoMenorIntervalo + 1 = extremoMaiorIntervalo) faca // repete enquanto (extremoMenor não é menor que extremoMaior) OU (do extremoMenor para o extremoMaior não têm número entre eles; no intervalo)
      // SAÍDA para feedback ao usuário sobre ENTRADA inválida
      escreval()
      escreval("   (INTERVALO INVÁLIDO! DIGITE 1º O MENOR E DEPOIS MAIOR!)")
      escreval("        (PRECISA TER PELO MENOS 1 NÚMERO ENTRE ELES!)     ")
      leia(variavelLixo)
       // Limpeza de tela para não prosseguir com a tela poluída (tirar da tela a digitação inválida e feedback que diz invalidez)
      limpaTela()

      // Introdução Repetida (de novo, porque precisa continuar a mostrar)
      escreval("    NÚMEROS INTEIROS DENTRO E FORA DO INTERVALO   ")
      escreval(" -------------------------------------------------")
      escreval()

      // Amostragem da ENTRADA da Quantidade (válida), que já aconteceu (antes já estava mostrando na tela e precisa continuar mostrando)
      escreval(" QUANTIDADE")
      escreva("  - Quantidade de números que deseja digitar: ", quantidadeDesejadaNumerosInteiros)
      
      // Separação entre ENTRADAS - Repetida (para poder voltar a repetir a ENTRADA do intervalo)
      escreval()
      escreval()

      escreval(" INTERVALO")
      // ENTRADA Repetida
      escreva("  - Digite o número MENOR do intervalo: ")
      leia(extremoMenorIntervalo)
      escreva("  - Digite o número MAIOR do intervalo: ")
      leia(extremoMaiorIntervalo)
   fimEnquanto

   // OPERAÇÃO DE SAÍDA para separação entre Dados Iniciais(quantidade números e intervalo), posteriormente, número(s) digitado(s)
   escreval("__________________________")

   // Laço Incondicional controlando: ENTRADA DE DADOS e PROCESSAMENTO DE DADOS
    // Laço executa conforme quantidade desejada
   para contagemExecucoes de 1 ate quantidadeDesejadaNumerosInteiros passo 1 faca
      // ENTRADA (junto com SAÍDA)
      escreval()
      escreva(" Digite o ", contagemExecucoes, "º número inteiro: ")
      leia(numerosInteiros)

      // Análise do número digitado
      se (numerosInteiros >= extremoMenorIntervalo) E (numerosInteiros <= extremoMaiorIntervalo) entao // se numero está no intervalo digitado(incluindo extremos)
         // dentro
         quantidadeNumerosDentroIntervalo <- quantidadeNumerosDentroIntervalo + 1
      senao // se fora do intervalo
         quantidadeNumerosForaIntervalo <- quantidadeNumerosForaIntervalo + 1
      fimSe
   fimPara

   // SAÍDA DE DADOS Final para amostragem do que foi processado(quantidade de números Dentro e Fora)
   escreval("__________________________")
   escreval()
   // Estrutura de Seleção Múltipla controlando: SAÍDA DE DADOS (se mostra no singular, caso 1, ou plural, para outros casos)
   escolha (quantidadeDesejadaNumerosInteiros)
      caso 1
         escreval(" Do único número digitado: ")
      outrocaso
         escreval(" Dos ", quantidadeDesejadaNumerosInteiros, " números digitados:")
   fimEscolha
   escreval()
   escreval("  - ", quantidadeNumerosDentroIntervalo, " no intervalo (", extremoMenorIntervalo, " a ", extremoMaiorIntervalo, ")")
   escreval("  - ", quantidadeNumerosForaIntervalo, " fora do intervalo")
   escreval()
   
Fimalgoritmo