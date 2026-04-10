Algoritmo "idades"

Var

   // dados das duas pessoas (entrada de dados)
   idade1, idade2 : inteiro
   nome1, nome2 : caractere

   // cálculo da média de idade entre as duas pessoas (processamento de dados)
   mediaIdades : real
   
Inicio

   // sequência de entrada de dados (1ª PESSOA)
   // (usando a saída para o usuário informar o valor desejado)
   escreval("DADOS DA PRIMEIRA PESSOA")
   escreva("Nome: ")
   leia(nome1)
   escreva("Idade: ")
   leia(idade1)
   
   // (pulo de linha para melhor espaçamento)
   escreval()
   
   // sequência de entrada de dados (2ª PESSOA)
   // (usando a saída para o usuário informar o valor desejado)
   escreval("DADOS DA SEGUNDA PESSOA")
   escreva("Nome: ")
   leia(nome2)
   escreva("Idade: ")
   leia(idade2)
   
   // processamento de dados
   // (usando variáveis e expressões aritméticas)
   mediaIdades <- (idade1 + idade2) / 2

   // saída de dados
   // (também mostrando o valor armazenado nas variáveis)
   escreval()
   escreval("A idade média entre ", nome1, " e ", nome2, " é:") // variáveis da entrada
   escreval(" --->  ", mediaIdades:1:1) // variável do processamento
Fimalgoritmo