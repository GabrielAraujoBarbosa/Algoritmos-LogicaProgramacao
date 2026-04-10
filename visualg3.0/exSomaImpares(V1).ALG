Algoritmo "soma_impares"

Var

   // variáveis para entrada de dados
   numeroInteiro1, numeroInteiro2 : inteiro
   variavelLixo : caractere

   // variáveis para processamento de dados
   variavelAuxiliarOrdenacaoIntervalo : inteiro
   numeroImpar, SomaAcumuladaImpares : inteiro
   
Inicio


   // Laço Condicional Pós-Teste controlando: ENTRADA DE DADOS(aceitando apenas quando intervalo válido)
   repita // Executa 1ª vez por padrão

      // Introdução
      escreval("       NÚMEROS ÍMPARES DE UM INTERVALO      ")
      escreval(" -------------------------------------------")
      escreval()

      // ENTRADA (junto com SAÍDA)
      escreva(" Digite o 1º número extremo do intevalo: ")
      leia(numeroInteiro1)
      escreva(" Digite o 2º número extremo do intevalo: ")
      leia(numeroInteiro2)

      // Estrutura Condicional Simples que alerta o usuário quando intervalo digitado for inválido (valores iguais ou sem algum número entre eles para chegar ao outro)
      se (numeroInteiro1 = numeroInteiro2) OU (numeroInteiro1 - 1 = numeroInteiro2) OU (numeroInteiro1 + 1 = numeroInteiro2) entao
         escreval()
         escreval(" INTERVALO INVÁLIDO! TENTE DE NOVO.")
         leia(variavelLixo)
         limpaTela()
      fimSe

   fimRepita (numeroInteiro1 <> numeroInteiro2) E (numeroInteiro1 - 1 <> numeroInteiro2) E (numeroInteiro1 + 1 <> numeroInteiro2)
   // repete até que valores sejam diferentes e até que valores tenham um "número de distância"(até que exista pelo menos um número entre eles para um chegar no outro)

   
   // Foi denominado um Padrão: O 1º número sempre deve ser o menor e o 2º maior.
   // O usuário pode digitar o intervalo da forma que desejar, então é preciso analisar se o que digitou está no padrão ou não.
   // Se não estiver no padrão quer dizer que é o oposto (maior para o menor). Então se estiver oposto tratamos e invertemos para seguir o padrão.

   // Análise se não está no padrão (para assim tratar e colocar no padrão)
   se (numeroInteiro1 > numeroInteiro2) entao // se 1º número digitado for maior que o 2º
      // Invertemos a ordem para que o numero1 seja o menor e o numero2 maior. Para que sempre tenha um intervalo crescente (do menor para o maior; de uma única forma), que é nosso padrão.
      variavelAuxiliarOrdenacaoIntervalo <- numeroInteiro1
      numeroInteiro1 <- numeroInteiro2
      numeroInteiro2 <- variavelAuxiliarOrdenacaoIntervalo
   fimSe

   // Se chegou até aqui quer dizer que:
   //  . numeroInteiro1 = ExtremoMenor
   //  . numeroInteiro2 = ExtremoMaior


   // Tentando obter o 1º número ímpar do intervalo (em ordem crescente)
    // Tranformando o resultado do resto em absoluto (positivo) porque se 1º número da sequência for um ímpar negativo gera resto -1 (mas se sobrou 1, negativo ou positivo, quer dizer que é ímpar)
   se ABS( (numeroInteiro1 + 1) % 2 ) = 1 entao // se 1º número do intervalo (a partir do extremoMenor) é ímpar
      // Ímpar é armazenado
      numeroImpar <- numeroInteiro1 + 1
   senao // se 1º número do intervalo for par
      // atribuimos o 2º número, que pode ou não estar no intervalo (porque o intervalo pode ter apenas um número par - Exemplo: Intervalo de 13 a 15 só tem o número par 14)
      numeroImpar <- numeroInteiro1 + 2
      // Se houver apenas 1 número no intervalo e for par, estamos somando +2 e, assim, obtendo o mesmo valor que de extremoMaior. Então precisamos analisar esse valor obtido.
      // Exemplo: Intervalo de 13 a 15 só tem o número 14. O 1º e único número do intervalo não é ímpar, então caiu aqui no Senao e foi somado +2 ao extremoMenor(13 + 2 = 15). Obtendo 15, o extremoMaior.
   fimSe

   // SAÍDAS com mensagem para que em sequência mostre números ímpares. Se não houver, o bloco SENÃO da última Estrutura Condicional Composta terminará a mensagem com "Não existe".
   escreval("____________________________________")
   escreval()
   escreva(" Cálculo dos ímpares desse intervalo: ")
   
   // Análise se o 1º número ímpar obtido realmente está no intervalo ou não
   SE (numeroImpar < numeroInteiro2) ENTAO // se 1º número ímpar obtido estiver no intervalo
      // Mostra o 1º ímpar válido
      escreva(numeroImpar)
      // Iniciação da variável já recebendo o 1º ímpar válido
      somaAcumuladaImpares <- numeroImpar
      
      // Análise se o próximo número Ímpar está no intervalo ou não
      enquanto (numeroImpar + 2 < numeroInteiro2) faca // repete enquanto próximo numero ímpar obtido estiver no intervalo
         // Executa este bloco quando próximo número ímpar encontrado está no intervalo

         // Armazena esse próxímo ímpar do intervalo
         numeroImpar <- numeroImpar + 2
         // Mostrando número depois do operador de soma que o separa do anterior (para representação do cálculo)
         escreva(" + ", numeroImpar)

         // Somando o 1º ímpar com os próximos encontrados no intervalo
         somaAcumuladaImpares <- somaAcumuladaImpares + numeroImpar
      fimEnquanto
      
   FIMSE
   
   // Análise se tem ímpar no intervalo ou não para fazer a SAÍDA Final
    // Análise se a soma dos ímpares é diferente de 0 ou se com a soma zero tenho um intervalo em que extremoMenor é negativo e extremoMaior é positivo, mas diferente de -1 e 1 (porque que a soma pode ser zero mas existem ímpares no intervalo - Por exemplo -5 e 5, -5 e 4, que tem ímpares no intervalo mas soma deles dá zero)
    // Basicamente, analisando se tem algum ímpar que foi somado ou se a soma dos ímpares dá zero tendo ímpar no intervalo(que ocorre quando temos os mesmo ímpares negativos e positivos)
   se (somaAcumuladaImpares <> 0) OU ( (numerointeiro1 < -1) E (numeroInteiro2 > 1) ) entao
      // Mostra a soma quando existir ímpar no intervalo (mesmo que apenas 1)
      escreval()
      escreval(" Soma dos ímpares = ", somaAcumuladaImpares)
   senao
      // Mensagem para a exceção de quando não existe ímpar no intervalo
      escreval("Não existe!") // completando a mensagem que mostra o cálculo dos ímpares, dizendo que não há
      escreval(" Entre ", numeroInteiro1, " e ", numeroInteiro2, " existe apenas o número ", numeroInteiro1 + 1)
   fimSe
   
Fimalgoritmo