Algoritmo "crescente"

Var

   // Variáveis para entrada de dados
   numero1, numero2 : inteiro

Inicio

   // 1. Problema cita "leitura de Dados numa QUANTIDADE INDETERMINADA de vezes"
   // 2. Problema cita "programa deve parar QUANDO forem digitados valores IGUAIS"

   // 1. Já que não sei quantas vezes preciso executar a mesma coisa = Opção usar Enquanto
   // 2. Já que sei quando a execução repetida deve parar, logo sei quando não deve parar = Opção usar Enquanto

   // - Assim, posso concluir que consigo utilizar a estrutura Enquanto, mas usando como condição: quando não deve parar

   /////////////////////////////////////////////////////////////////////////////////////////////////////

   // Armazenando valores aleatórios diferentes nas 2 variáveis para executar o bloco da estrutura Enquanto
   numero1 <- 92993
   numero2 <- 22423

   // Introdução
   escreval("    DESCUBRA COMO SAIR DO PROGRAMA   ")
   escreval(" ------------------------------------")
   escreval()

   // Estrutura de Repetição Enquanto controlando: ENTRADA DE DADOS
   enquanto (numero1 <> numero2) faca  // repete enquanto (números diferentes)
      escreva(" Digite o 1º número: ")
      leia(numero1)
      escreva(" Digite o 2º número: ")
      leia(numero2)

      escreval()

      // Estrutura Condicional Composta (com Outra Aninhada) controlando: SAÍDA DE DADOS
      se (numero1 < numero2) entao
         // do menor para o maior
         escreval(" Valores Digitados em Ordem Crescente")
      senao
         se (numero1 > numero2) entao
            // do maior para o menor
            escreval(" Valores Digitados em Ordem Decrescente")
         senao
            // idênticos
            escreval(" Valores Iguais. Parabéns, você sairá da Estrutura Enquanto!")
         fimSe
      fimSe

      escreval()
   fimEnquanto

   // SAÍDA DE DADOS
   escreval("------------------------------------")
   escreval(" Tchau!")
   
Fimalgoritmo