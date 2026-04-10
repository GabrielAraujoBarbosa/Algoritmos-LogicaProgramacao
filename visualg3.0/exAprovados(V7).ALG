Algoritmo "aprovados"

Var
   quantidadeAlunos, quantidadeAlunosAprovados : inteiro
   
   // Dados referentes aos Alunos
   nomeAlunos: vetor[0..20] de caractere
   notasAlunos: vetor[0..20, 0..1] de real
   mediaAlunos : vetor[0..20] de real

   indiceAlunosAprovados : vetor[0..20] de inteiro


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

Funcao pedirNome(): caractere
Var
   nomeDigitado : caractere
Inicio
   escreva(" Nome: ")
   leia(nomeDigitado)
   retorne nomeDigitado
FimFuncao

Funcao pedirNota(numeroNota : inteiro): real
Var
   notaDigitada : real
Inicio
   escreva(" ", numeroNota, "ª nota: ")
   leia(notaDigitada)
   retorne notaDigitada
FimFuncao

Procedimento obterDadosAluno(var nome : caractere; var nota1, nota2 : real)
Inicio
   nome <- pedirNome()

   escreval()

   nota1 <- pedirNota(1)
   nota2 <- pedirNota(2)
FimProcedimento

Funcao calcularMediaAluno(nota1, nota2 : real): real
Var
   mediaAluno : real
Inicio
   mediaAluno <- (nota1 + nota2) / 2
   retorne mediaAluno
FimFuncao

Procedimento obterDadosTodosAlunos(quantidadeAlunos : inteiro)
Var
   contagemAlunos : inteiro
Inicio
   para contagemAlunos de 1 ate quantidadeAlunos passo 1 faca
      escreval()
      escreval(contagemAlunos, "º ALUNO ")
      escreval()

      obterDadosAluno(nomeAlunos[contagemAlunos - 1], notasAlunos[contagemAlunos - 1, 0]; notasAlunos[contagemAlunos - 1, 1])
      mediaAlunos[contagemAlunos - 1] <- calcularMediaAluno(notasAlunos[contagemAlunos - 1, 0]; notasAlunos[contagemAlunos - 1, 1])
      escreval("-------------------")
   fimPara
FimProcedimento

Funcao obterAlunosAprovados(quantidadeAlunos : inteiro): inteiro
Var
   indiceMedias, quantidadeAprovados : inteiro
Inicio
   quantidadeAprovados <- 0
   
   para indiceMedias de 0 ate quantidadeAlunos - 1 passo 1 faca
      se (mediaAlunos[indiceMedias] >= 6) entao
         indiceAlunosAprovados[quantidadeAprovados] <- indiceMedias
         quantidadeAprovados <- quantidadeAprovados + 1
      fimSe
   fimPara
   
   retorne quantidadeAprovados
FimFuncao

Procedimento mostrarResultadoAlunos(quantidadeAlunosAprovados : inteiro)
Var
   contagemAprovados, indiceAprovado : inteiro
Inicio
   se (quantidadeAlunosAprovados > 0) entao
      escreval("ALUNOS APROVADOS: ")
      escreval()

      para contagemAprovados de 0 ate quantidadeAlunosAprovados - 1 passo 1 faca
         indiceAprovado <- indiceAlunosAprovados[contagemAprovados]
         escreval(" . ", nomeAlunos[indiceAprovado] )
      fimPara
   senao
      escreval("TODOS ALUNOS FORAM REPROVADOS!")
   fimSe
FimProcedimento

// Algoritmo
Inicio
   introducaoPrograma()

   quantidadeAlunos <- pedirQuantidadeAlunos()
   escreval("___________________")

   obterDadosTodosAlunos(quantidadeAlunos)

   quantidadeAlunosAprovados <- obterAlunosAprovados(quantidadeAlunos)

   escreval()
   mostrarResultadoAlunos(quantidadeAlunosAprovados)
Fimalgoritmo