Algoritmo "aprovados"

Var

   quantidadeAlunos, contagemIndices : inteiro
   mediaAluno : real

   nomeAlunos : vetor[0..20] de caractere
   nota1Alunos : vetor[0..20] de real
   nota2Alunos : vetor[0..20] de real


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
      nota1Alunos[contagemIndices] <- pedirNota(1)
      nota2Alunos[contagemIndices] <- pedirNota(2)

      escreval("------------------")
      escreval()
   fimPara

   escreval("Alunos Aprovados:")
   escreval()
   para contagemIndices de 0 ate (quantidadeAlunos - 1) passo 1 faca
      mediaAluno <- (nota1Alunos[contagemIndices] + nota2Alunos[contagemIndices]) / 2
      se (mediaAluno >= 6.0) entao
         escreval( " . ", nomeAlunos[contagemIndices], " - ", mediaAluno:3:1)
      fimSe
   fimPara
Fimalgoritmo