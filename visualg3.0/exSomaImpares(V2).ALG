Algoritmo "soma_impares"

Var

   // variáveis para entrada de dados
   extremo1, extremo2 : inteiro
    // valores da entrada organizados na ordem
   extremoMenorIntervalo, extremoMaiorIntervalo : inteiro
    // variável para representar enter quando ENTRADA for inválida
   variavelLixo : caractere

   // variáveis para processamento de dados
   variavelAuxiliarOrganizacaoEntrada : inteiro
   numeroIntervalo, somaAcumuladaImpares : inteiro
   numeroExecucaoRepita : inteiro
   
Inicio

   // Iniciação da variável que vai acumular a soma dos ímpares do intervalo
   somaAcumuladaImpares <- 0
   // Iniciação da variável que vai monitorar o número da execução que está ocorrendo da Estrutura Repita (no momento ainda não houve execução, então 0)
   numeroExecucaoRepita <- 0
   
   // Laço Condicional Pós-Teste controlando: ENTRADA(analisando o intervalo digitado)
   repita // executa 1ª vez por padrão

      // Armazenando na variável o número da execução atual Repita (se é a 1ª, 2ª e etc)
      numeroExecucaoRepita <- numeroExecucaoRepita + 1

      // Análise de qual execução que está ocorrendo no Laço (só ignora quando for a 1ª execução)
      se (numeroExecucaoRepita > 1) entao // se estiver ocorrendo a 2ª execução ou maior (que quer dizer que está executando o bloco mais de uma vez, ou seja, teve ENTRADA inválida)
         // Alerta o usuário que ENTRADA da execução anterior foi inválida
         escreval()
         escreval(" INTERVALO INVÁLIDO! TENTE DE NOVO.")
         leia(variavelLixo)
         limpaTela()
      fimSe


      // Introdução
      escreval("       NÚMEROS ÍMPARES DE UM INTERVALO      ")
      escreval(" -------------------------------------------")
      escreval()

      // ENTRADA (junto com SAÍDA)
      escreva(" Digite o 1º número extremo do intevalo: ")
      leia(extremo1)
      escreva(" Digite o 2º número extremo do intevalo: ")
      leia(extremo2)
      
   fimRepita (extremo1 <> extremo2) E ( (extremo1 + 1 <> extremo2) E (extremo1 - 1 <> extremo2) )
   // repito até que extremos sejam diferentes e extremos forem separados com algum número entre eles (basicamento, quando intervalo é válido)
   
   
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
    // Processar (repetidamente) apenas os ímpares do intervalo, antes encontrado o 1º impar, até chegar no extremoMaior ou +1 maior que ele (ou seja, fora do intervalo)
    // Processar (repetidamente) todos os números do intervalo, pegando só os ímpares, até chegar no último número do intervalo

   // Esse problema é perfeito para usar o Para porque:
    // 1º - Eu conheço o intervalo de valores que vou passar (onde começa e onde termina), e eu sei por causa dos extremos.
    // 2º - Eu sei que terei um valor/variável que sempre terá de ser atualizada, que é o valor do numero sempre indo de +1 em +1.


   //             vou do  1ª número do intervalo  ate  último número do intervalo
   para numeroIntervalo de extremoMenorIntervalo + 1 ate extremoMaiorIntervalo - 1 faca

      // Análise se esse número do intervalo é ímpar
      se ( ABS(numeroIntervalo % 2) = 1) entao // se número do intervalo for ímpar
         // Faz a soma acumulada desse ímpar com os outros obtidos
         somaAcumuladaImpares <- somaAcumuladaImpares + numeroIntervalo
      fimSe
      // Se pulou significa que é par
   fimPara

   escreval()

   // Por fim, mostra a soma de todos os ímpares do intervalo ou diz que não existe ímpar no intervalo
   
   // Análise se tem ímpar no intervalo para mostrar a soma
    // se somaImpares é diferente de 0 ou se extremos tem o mesmo número, só que um negativo e outro positivo diferente do par -1 e 1, então quer dizer que tem ímpar no intervalo
   se (somaAcumuladaImpares <> 0) OU ( (ABS(extremoMenorIntervalo) = extremoMaiorIntervalo) E (extremoMenorIntervalo <> -1) E (extremoMaiorIntervalo <> 1) ) entao
       escreval(" Soma dos impares: ", somaAcumuladaImpares)
   senao  // pros outros casos quer dizer que não existe ímpar
      escreval(" Não existe ímpar no intervalo")
   fimSe
   
Fimalgoritmo