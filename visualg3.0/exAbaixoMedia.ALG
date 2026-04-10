Algoritmo "abaixo_da_media"

Var
   quantidadeElementos, contagemIndices : inteiro

   mediaReais : real

   possuiElementosAbaixoMedia : logico

   vetorReais : vetor[0..99] de real
Inicio
   mediaReais <- 0

   escreval("***** VETOR DE NÚMEROS REAIS (MÉDIA E ABAIXO MÉDIA) *****")
   escreval()
   
   // Entrada da quantidade de elementos do vetor
   escreva("Quantidade de espaços do vetor: ")
   leia(quantidadeElementos)

   escreval()
   escreval()

   // Entrada dos Números Reais no Vetor
   para contagemIndices de 0 ate (quantidadeElementos - 1) passo 1 faca
      escreva("Valor da posição [", contagemIndices, "]: ")
      leia(vetorReais[contagemIndices])
      // Acúmulo(soma) dos Elementos Digitados
      mediaReais <- mediaReais + vetorReais[contagemIndices]
   fimPara
   
   escreval()
   escreval()
   
   // Média Aritmética dos Elementos
   mediaReais <- mediaReais / quantidadeElementos
   escreval("MÉDIA DOS ELEMENTOS DO VETOR: ", mediaReais:5:3)

   escreval()
   escreval()

   possuiElementosAbaixoMedia <- falso

   // Análise e Amostragem dos Números Abaixo da Média
   escreval("NÚMEROS ABAIXO DA MÉDIA:")
   para contagemIndices de 0 ate (quantidadeElementos - 1) passo 1 faca
      se (vetorReais[contagemIndices] < mediaReais) entao
         possuiElementosAbaixoMedia <- verdadeiro
         escreval(vetorReais[contagemIndices]:3:1)
      fimSe
   fimPara

   se nao(possuiElementosAbaixoMedia) entao
      escreval("Todos os números digitados são iguais")
      escreval("(Todos estão conforme a média!)")
   fimSe
   
Fimalgoritmo