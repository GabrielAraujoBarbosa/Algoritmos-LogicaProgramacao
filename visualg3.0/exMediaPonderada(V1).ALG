Algoritmo "media_ponderada"

Var

   // variáveis para entrada de dados
   quantidadeCalculosMediaPonderada : inteiro
   numero1, numero2, numero3 : real
   variavelLixo : caractere
   
   // variáveis para processamento de dados
   contagemExecucoes : inteiro
   mediaPonderada : real

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
   
   // SAÍDA para separação entre ENTRADAS (da quantidade e dos números)
   escreval("______________________")

   // Laço Incondicional controlando: ENTRADA, PROCESSAMENTO e SAÍDA
    // Laço executa conforme quantidade digitada
   para contagemExecucoes de 1 ate quantidadeCalculosMediaPonderada passo 1 faca
      // Pedindo os números para poder fazer a Média Ponderada
      escreval()
      escreva(" Digite o 1º número: ")
      leia(numero1)
      escreva(" Digite o 2º número: ")
      leia(numero2)
      escreva(" Digite o 3º número: ")
      leia(numero3)
      
      // Média Ponderada:
      // . numero1 - peso 2
      // . numero2 - peso 3
      // . numero3 - peso 5
      
      // PROCESSAMENTO DE DADOS
       // Cálculo da Média Ponderada com os 3 números
      mediaPonderada <- (numero1 * 2 + numero2 * 3 + numero3 * 5) / (2 + 3 + 5)

      // Amostragem da Média Ponderada
      escreval(" Média Ponderada: ", mediaPonderada:4:2)
   fimPara
   
Fimalgoritmo