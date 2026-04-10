Algoritmo "soma_numeros_inteiros"

Var

   // variáveis para entrada de dados
   quantidadeNumerosInteiros : inteiro
   numeroDigitado : inteiro

   // variáveis para processamento de dados
   variavelControle : inteiro
   somaNumeros : inteiro

Inicio

   somaNumeros <- 0

   // ENTRADA DE DADOS (junto com SAÍDA) - Obtendo valor que determina a quantidade de execuções no laço incondicional
   escreva("Informe quantos números inteiros deseja digitar: ")
   leia(quantidadeNumerosInteiros)

   // Laço Incondicional controlando: ENTRADA DE DADOS (junto com SAÍDA) e PROCESSAMENTO DE DADOS
    // (Laço possui: Iniciação, Condição e Incremento)
   para variavelControle de 1 ate quantidadeNumerosInteiros passo 1 faca // execute o bloco contando de 1 até numero que usuário digitar
      escreva("Digite o ", variavelControle, "º número: ")
      leia(numeroDigitado)
      somaNumeros <- somaNumeros + numeroDigitado
   fimPara

   // SAÍDA DE DADOS Final (mostrando soma depois que todos os números já foram digitados)
   escreval("Soma de todos números digitados: ", somaNumeros)

Fimalgoritmo