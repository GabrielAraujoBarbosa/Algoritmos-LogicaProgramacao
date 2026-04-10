Algoritmo "mais_velho"

Var
   quantidadePessoas : inteiro

   contagemPessoas, indiceIdades : inteiro

   indiceMaiorIdade : inteiro

   nomePessoas : vetor[0..20] de caractere
   idadePessoas : vetor[0..20] de inteiro

Procedimento IntroducaoPrograma()
Inicio
   escreval("***  CONJUNTO DE PESSOAS (NOME E IDADE)  ***")
   escreval("--------------------------------------------")
   escreval()
FimProcedimento

Funcao pedirQuantidadePessoas(): inteiro
Var
   quantidadeDigitada : inteiro
Inicio
   escreva(" Quantidade de pessoas: ")
   leia(quantidadeDigitada)
   retorne quantidadeDigitada
FimFuncao

Procedimento guardarDadosPessoa(var nomePessoa : caractere; var idadePessoa : inteiro)
Inicio
   escreva(" Nome: ")
   leia(nomePessoa)

   escreva(" Idade: ")
   leia(IdadePessoa)
FimProcedimento


// Algoritmo
Inicio
   IntroducaoPrograma()
   
   quantidadePessoas <- pedirQuantidadePessoas()
   
   escreval()
   
   para contagemPessoas de 1 ate quantidadePessoas passo 1 faca
      escreval("[", contagemPessoas, "ª PESSOA]")
      guardarDadosPessoa(nomePessoas[contagemPessoas - 1], idadePessoas[contagemPessoas - 1])
      escreval("-------------")
      escreval()
   fimPara
   
   //mostrarPessoaMaisVelha()
   indiceMaiorIdade <- 0
   para indiceIdades de 1 ate (quantidadePessoas - 1) passo 1 faca
      se ( idadePessoas[indiceIdades] > idadePessoas[indiceMaiorIdade] ) entao
         indiceMaiorIdade <- indiceIdades
      fimSe
   fimPara
   
   escreval("PESSOA COM A MAIOR IDADE:")
   escreval("- ", nomePessoas[indiceMaiorIdade], " (com ", idadePessoas[indiceMaiorIdade], " anos)")
Fimalgoritmo