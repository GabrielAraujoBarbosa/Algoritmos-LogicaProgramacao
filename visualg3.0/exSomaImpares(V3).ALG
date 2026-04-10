Algoritmo "soma_impares"

Var

   // variáveis para entrada de dados
   extremo1, extremo2 : inteiro
   variavelLixo : caractere
   
    // valores da entrada organizados na ordem
   extremoMenorIntervalo, extremoMaiorIntervalo : inteiro

   // variáveis para processamento de dados
   variavelAuxiliarOrganizacaoEntrada : inteiro
   numeroImpar, somaAcumuladaImpares : inteiro

Inicio

   // Iniciação da variável que vai acumular a soma dos ímpares do intervalo
   somaAcumuladaImpares <- 0


   // 1ª Introdução com 1ª ENTRADA DE DADOS
   escreval("       NÚMEROS ÍMPARES DE UM INTERVALO      ")
   escreval(" -------------------------------------------")
   escreval()
   escreva(" Digite o 1º número extremo do intevalo: ")
   leia(extremo1)
   escreva(" Digite o 2º número extremo do intevalo: ")
   leia(extremo2)

   // Laço Condicional Pré-Teste controlando: ENTRADA DE DADOS (analisando a 1ª entrada e, se executar o bloco, as entradas repetidas)
    // repito enquanto extremos forem iguais ou extremos forem juntos sem algum número entre eles (basicamento, quando intervalo é inválido)
   enquanto (extremo1 = extremo2) OU ( (extremo1 + 1 = extremo2) OU (extremo1 - 1 = extremo2) ) faca
      // executa o bloco se 1ª ENTRADA foi de intervalo inválido

      // alerta ao usuário sobre intervalo inválido
      escreval()
      escreval(" INTERVALO INVÁLIDO! TENTE DE NOVO.")
      leia(variavelLixo)
      limpaTela()
      
      // REPETIÇÃO - Introdução com ENTRADA DE DADOS
      escreval("       NÚMEROS ÍMPARES DE UM INTERVALO      ")
      escreval(" -------------------------------------------")
      escreval()
      escreva(" Digite o 1º número extremo do intevalo: ")
      leia(extremo1)
      escreva(" Digite o 2º número extremo do intevalo: ")
      leia(extremo2)
      
   fimEnquanto


   // quando digitado intervalo válido, o usuário pode ter digitado apenas duas opções de valores: 1º maior e 2º menor ou 1º menor e 2º maior

   // Então, analiso se os extremos estão na ordem que eu não quero (maior depois menor), porque se estiver na ordem que quero (menor depois maior) nem altero
   se (extremo1 > extremo2) entao // se não está na ordem que eu quero
      // inverto os valores para ficar na ordem (1º o menor e depois maior)
      variavelAuxiliarOrganizacaoEntrada <- extremo1
      extremo1 <- extremo2
      extremo2 <- variavelAuxiliarOrganizacaoEntrada
   fimSe
   // Se pulou é porque está na ordem que eu quero

   // depois que analisado e certificado que está na ordem desejada, concluo que:
   extremoMenorIntervalo <- extremo1
   extremoMaiorIntervalo <- extremo2


   // Obtenção dos ímpares no intervalo pode ser feita de 2 formas:
    // Processar (repetidamente) apenas os ímpares do intervalo, antes encontrado o 1º impar, até chegar no último ímpar da sequência
    // Processar (repetidamente) todos os números do intervalo, pegando só os ímpares, até chegar no último número do intervalo

   // Esse problema é perfeito para usar o Para porque:
    // 1º - Eu conheço o intervalo de valores que vou passar (onde começa e onde termina), e eu sei por causa dos extremos.
    // 2º - Eu sei que terei um valor/variável que sempre terá de ser atualizada, que é o valor do próximo ímpar sempre indo de +2 em +2.


   // Obtendo o 1º número ímpar do intervalo
   se ( ABS( (extremoMenorIntervalo + 1) % 2 ) = 1) entao // se o 1º número do intervalo é ímpar
     // ímpar é o 1º número do intervalo
     numeroImpar <- extremoMenorIntervalo + 1
   senao  // se o 1º número do intervalo é par
     // ímpar é o 2º número do intervalo (no caso de intervalos com mais de 1 número)
     numeroImpar <- extremoMenorIntervalo + 2
     // Mas esse 2º número, que foi dito "estar no intervalo", pode não estar realmente no intervalo. Porque podemos ter intervalos com apenas um número (e esse único número sendo par)
     // Por esse motivo, o valor de numeroImpar é analisado na Estrutura Para
   fimSe

   // Vou do 1º ímpar até o último ímpar possível do intervalo, parando quando o ímpar que eu obter for maior que o último número da sequência
   para numeroImpar de numeroImpar ate extremoMaiorIntervalo - 1 passo 2 faca
      somaAcumuladaImpares <- somaAcumuladaImpares + numeroImpar
   fimPara
   // Ali também analiso se o 1º impar que obtive é maior que o último número da sequência (que não vai rodar se ele não estiver na sequência)

   escreval()

   // Por fim, mostra a soma de todos os impares do intervalo ou diz que não existe ímpar no intervalo

   // Análise se tem ímpar no intervalo para mostrar a soma
    // se somaImpares é diferente de 0 ou se extremos tem o mesmo número, só que um negativo e outro positivo diferente do par -1 e 1, então quer dizer que tem ímpar no intervalo
   se (somaAcumuladaImpares <> 0) OU ( (ABS(extremoMenorIntervalo) = extremoMaiorIntervalo) E (extremoMenorIntervalo <> -1) E (extremoMaiorIntervalo <> 1) ) entao
      escreval(" Soma dos impares: ", somaAcumuladaImpares)
   senao
      escreval(" Não existe ímpar no intervalo")
   fimSe
   
Fimalgoritmo
