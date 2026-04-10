Algoritmo "media_ponderada"

Var

   // variáveis para entrada de dados
   quantidadeCalculosMediaPonderada : inteiro
   numeroCalcular : real
   variavelLixo : caractere
   
   // variáveis para processamento de dados
   contagemExecucoes, contagemEntradaNumeros : inteiro
   mediaPonderada : real
   pesoNumeros : inteiro

Inicio
   
   // Introdução
   escreval("    CÁLCULO DE MÉDIA PONDERADA COM 3 VALORES   ")
   escreval(" ----------------------------------------------")
   escreval()
   
   // ENTRADA Inicial (1ª)
   escreva(" Quantidade de cálculos de Média Ponderada desejada: ")
   leia(quantidadeCalculosMediaPonderada)

   enquanto (quantidadeCalculosMediaPonderada <= 0) faca // repete enquanto ENTRADA foi de um valor que é zero ou negativo (diferente de positivo; que não representa quantidade)
      // Feedback ao Usuário (alertando sobre valor inválido)
      escreval()
      escreval(" QUANTIDADE INVÁLIDA! DIGITE UM VALOR POSITIVO!")
      leia(variavelLixo)
      // Limpeza de tela para apagar poluição que houve (valor inválido digitado junto com feedback) e assim mostrar novamente o que importa (sem informação desnecessária)
      limpaTela()
      
      // Introdução Repetida (para permanecer mostrando esse "cabeçalho" na tela)
      escreval("    CÁLCULO DE MÉDIA PONDERADA COM 3 VALORES   ")
      escreval(" ----------------------------------------------")
      escreval()
      
      // ENTRADA Repetida
      escreva(" Quantidade de cálculos de Média Ponderada desejada: ")
      leia(quantidadeCalculosMediaPonderada)
   fimEnquanto
   
   // SAÍDA para separação entre ENTRADA da quantidade e do(s) Cálculo(s) de Média Ponderada
   escreval("______________________")
   escreval()

   // Laço Incondicional controlando: ENTRADA, PROCESSAMENTO e SAÍDA
    // Laço executa conforme quantidade digitada
   para contagemExecucoes de 1 ate quantidadeCalculosMediaPonderada passo 1 faca
      // Análise se está repetindo a execução do bloco; se não é a primeira execução
      se (contagemExecucoes > 1) entao // se execução que está ocorrendo já não é a 1ª; se vai fazer outro cálculo de Média Ponderada
         // Faz uma Separação entre Cálculos de Média Ponderada (entre a que já ocorreu e a que está prestes a acontecer)
         escreval()
         escreval("--")
         escreval()
      fimSe

      // SAÍDA para indicar a sequência dos cálculos de Media Ponderada. Assim, usuário sabe qual cálculo está acontecendo e quantos faltam
      escreval(" ", contagemExecucoes, "º CÁLCULO")
      escreval()

      // Zerando variável para que a Média Ponderada possa ser calculada (pois sempre é usado o que já estava armazenado na própria variável nos cálculos)
      mediaPonderada <- 0

      // Atribuindo o peso do 1º número à variável (para que já seja usado na 1ª ENTRADA de número - abaixo)
      pesoNumeros <- 2
      // Laço Incondicional controlando: ENTRADA DE DADOS e PROCESSAMENTO DE DADOS
       // Laço executa 3 vezes (contando de 1 até 3) para fazer 3 ENTRADAS (já usando as ENTRADAS para fazer o produto do seu peso e somar esse resultado entre elas)
      para contagemEntradaNumeros de 1 ate 3 passo 1 faca
         // ENTRADA DE DADOS
         escreva("  Digite o ", contagemEntradaNumeros ," º número: ")
         leia(numeroCalcular)
         
         // Calculando o produto da ENTRADA e Seu Peso (depois somando com o que já está armazenado, na 1º vez o valor ZERO e depois, na 2ª ou 3ª execução, somando com o número(s) anterior(es) possuindo seu devido peso)
         mediaPonderada <- mediaPonderada + numeroCalcular * pesoNumeros
         
         // Atualização do peso (para que próximo número seja calculado com seu respectivo peso) - A atualização é baseada na variável de controle do laço (1º vez somando com 1 resultando 3, 2º vez somando com 2 resultando 5, 3ª vez não é usada)
         pesoNumeros <- pesoNumeros + contagemEntradaNumeros
      fimPara

      // Média Ponderada:
      // . numero1 - peso 2
      // . numero2 - peso 3
      // . numero3 - peso 5

      // Cálculo para dividir o que já está armazenado(a soma entre o resultado dos 3 números multiplicados pelo seu peso) pelo resultado da soma dos pesos
      mediaPonderada <- mediaPonderada / (2 + 3 + 5)

      // Amostragem da Média Ponderada
      escreval()
      escreval("  Média Ponderada: ", mediaPonderada:4:2)
   fimPara

   // SAÍDA para separação entre Todos Cálculos de Média Ponderada e Fim do Programa
   escreval("______________________")
   escreval()
   
Fimalgoritmo