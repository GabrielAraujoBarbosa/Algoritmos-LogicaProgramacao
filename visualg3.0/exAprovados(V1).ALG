Algoritmo "aprovados"

Var

   quantidadeAlunos, contagemAlunos : inteiro

   nomeAlunos : vetor[0..20] de caractere
   mediaAlunos : vetor[0..20] de real

Procedimento introducaoPrograma()
Inicio
   escreval("  **** SISTEMA DE MÉDIA E APROVAÇÃO ****  ")
   escreval()
   escreval()
FimProcedimento

Funcao pedirQuantidadeAlunos(): inteiro
Var
   quantidadeDigitada : inteiro
Inicio
   escreva("Quantidade de alunos: ")
   leia(quantidadeDigitada)
   retorne quantidadeDigitada
FimFuncao

Funcao pedirNomeAluno(): caractere
Var
   nomeAluno : caractere
Inicio
   escreva(" Nome: ")
   leia(nomeAluno)
   retorne nomeAluno
FimFuncao

Funcao pedir2NotasSomaNotas(): real
Var
   nota1, nota2 : real
Inicio
      escreva(" 1ª Nota: ")
      leia(nota1)
      escreva(" 2ª Nota: ")
      leia(nota2)
      retorne nota1 + nota2
FimFuncao

// Algoritmo
Inicio
   introducaoPrograma()

   quantidadeAlunos <- pedirQuantidadeAlunos()

   escreval("__________________")
   escreval()

   para contagemAlunos de 1 ate quantidadeAlunos passo 1 faca
      escreval(contagemAlunos, "º ALUNO:")
      escreval()
      
      nomeAlunos[contagemAlunos - 1] <- pedirNomeAluno()
      escreval()
      mediaAlunos[contagemAlunos - 1] <- pedir2NotasSomaNotas() / 2
      
      escreval("------------------")
      escreval()
   fimPara
   
   escreval("Alunos Aprovados:")
   escreval()
   para contagemAlunos de 1 ate quantidadeAlunos passo 1 faca
      se (mediaAlunos[contagemAlunos - 1] >= 6) entao
         escreval( " . ", nomeAlunos[contagemAlunos - 1] )
      fimSe
   fimPara
Fimalgoritmo