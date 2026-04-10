Algoritmo "soma_impares"

Var

   // variáveis para entrada de dados
   extremoMenor, extremoMaior : inteiro
   variavelLixo : caractere
   
   // variáveis para processamento de dados
   numeroImpar, somaAcumuladaImpares : inteiro
   
Inicio

   // Obrigatório ter pelo menos um ímpar no intervalo
   // Obrigatório na entrada digitar primeiro o número menor e depois o maior
   // Obrigatório mostrar ao usuário o processo de fazer o cálculo junto com o resultado


   // 1ª Introdução com 1ª ENTRADA DE DADOS
   escreval("       NÚMEROS ÍMPARES DE UM INTERVALO      ")
   escreval(" -------------------------------------------")
   escreval()
   escreva(" Digite o 1º número extremo do intevalo: ")
   leia(extremoMenor)
   escreva(" Digite o 2º número extremo do intevalo: ")
   leia(extremoMaior)

   // Laço Condicional Pré-Teste - analisando a 1ª ENTRADA
    //enquanto (1ºextremo não for menor que 2ºextremo) OU (não tiver número no intervalo) OU (não tiver nenhum ímpar no intervalo, ou seja, só tiver um único número no intervalo que é par) vai repetir
   enquanto (extremoMenor >= extremoMaior) OU (extremoMenor + 1 = extremoMaior)  OU  ( ((extremoMenor + 1) % 2 = 0) E (extremoMenor + 2 = extremoMaior) ) faca
      // executa o bloco se ENTRADA(a 1ª ou de repetição) foi de um intervalo inválido (que não obedece as regras)
      
      // Alerta para o usuário sobre intervalo inválido
      limpaTela()
      escreval()
      escreval(" INTERVALO INVÁLIDO!")
      escreval()
      escreval(" - Digite 1º o Extremo Menor, depois o Extremo Maior")
      escreval(" - Obrigatório que o intervalo tenha pelo menos 1 Número Ímpar")
      escreval()
      escreva(" (Pressione Enter)")
      leia(variavelLixo)
      limpaTela()

      // REPETIÇÃO - Introdução com ENTRADA DE DADOS
      escreval("       NÚMEROS ÍMPARES DE UM INTERVALO      ")
      escreval(" -------------------------------------------")
      escreval()
      escreva(" Digite o 1º número extremo do intevalo: ")
      leia(extremoMenor)
      escreva(" Digite o 2º número extremo do intevalo: ")
      leia(extremoMaior)
   fimEnquanto

   // Se chegou aqui então intervalo é válido e, assim, pode-se executar a amostragem do processo do cálculo junto do resultado, que é a soma. Exemplo: 1 + 3 + 5 + etc = somaImpares

   // SAÍDA DE DADOS - Indicação ao usuário que será mostrado o cálculo
   escreval("_____________________")
   escreval()
   escreval(" Cálculo dos ímpares:")
   escreval()

   // Obtendo o 1º número ímpar do intevalo
   se ( ABS((extremoMenor + 1) % 2) =  1 ) entao // se 1º número é ímpar
      numeroImpar <- extremoMenor + 1
   senao // se 2º número é ímpar
      numeroImpar <- extremoMenor + 2
   fimSe

   // SAÍDA e PROCESSAMENTO para o 1º ímpar (tem uma saída diferente dos próximos ímpares, por isso precisamos fazer separado. E, assim, precisamos também do processamento junto, mesmo que também seja igual pros outros)
   escreva(numeroImpar)
   somaAcumuladaImpares <- numeroImpar

   // Estrutura Condicional analisando se existe mais algum ímpar no intervalo
   SE numeroImpar + 2 < extremoMaior ENTAO // se próximo ímpar estiver no intervalo
   
      // Laço Incondicional que controla a SAÍDA e PROCESSAMENTO para os próximos ímpares
      para numeroImpar de numeroImpar + 2 ate extremoMaior - 1 passo 2 faca
         escreva(" + ", numeroImpar)
         somaAcumuladaImpares <- somaAcumuladaImpares + numeroImpar
      fimPara
      
      // Se chegou aqui então foi realizado a amostragem do processo do cálculo com todos ímpares da sequência (sem o resultado)
      // Por último, realiza-se a amostragem do resultado (soma)
      escreval(" = ", somaAcumuladaImpares)
   SENAO // se houver um único ímpar no intervalo (pois é aceito intervalos com um único ímpar)

      // Mostra que 1º número ímpar é único no intervalo
      escreval(" é o único ímpar do intervalo")
   fimSe

   // SAÍDA para indicar fim do cálculo
   escreval("_____________________")

Fimalgoritmo