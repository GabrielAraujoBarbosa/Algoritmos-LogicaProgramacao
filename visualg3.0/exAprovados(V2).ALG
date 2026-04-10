Algoritmo "aprovados"

Var

   quantidadeAlunos, contagemIndices : inteiro

   nomeAlunos : vetor[0..20] de caractere
   notasAlunos : vetor[0..40] de real
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

Funcao pedirNota(contagemNota : inteiro): real
Var
   notaDigitada : real
Inicio
   repita
      escreva(contagemNota, "ª Nota: ")
      leia(notaDigitada)
      retorne notaDigitada
   ate (notaDigitada <= 10) E (notaDigitada >= 0)
FimFuncao

// Algoritmo
Inicio
   introducaoPrograma()

   quantidadeAlunos <- pedirQuantidadeAlunos()

   escreval("__________________")
   escreval()

   para contagemIndices de 0 ate (quantidadeAlunos - 1) passo 1 faca
      escreval(contagemIndices + 1, "º ALUNO:")
      escreval()
      
      nomeAlunos[contagemIndices] <- pedirNomeAluno()
      escreval()
      notasAlunos[contagemIndices * 2] <- pedirNota(1)
      notasAlunos[contagemIndices * 2 + 1] <- pedirNota(2)

      mediaAlunos[contagemIndices] <- ( notasAlunos[contagemIndices * 2] + notasAlunos[contagemIndices * 2 + 1] ) / 2

      escreval("------------------")
      escreval()
   fimPara

   escreval("Alunos Aprovados:")
   escreval()
   para contagemIndices de 0 ate (quantidadeAlunos - 1) passo 1 faca
      se (mediaAlunos[contagemIndices] >= 6.0) entao
         escreval( " . ", nomeAlunos[contagemIndices], " - ", mediaAlunos[contagemindices]:3:1)
      fimSe
   fimPara
Fimalgoritmo