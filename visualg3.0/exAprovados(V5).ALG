Algoritmo "aprovados"

Var
   // Variáveis de controle Loop
   contagemAlunos, contagemNotas : inteiro

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

Funcao calcularMediaAluno(nota1, nota2 : real): real
Var
   mediaAluno : real
Inicio
   mediaAluno <- (nota1 + nota2) / 2
   retorne mediaAluno
FimFuncao

// Algoritmo
Inicio
   introducaoPrograma()

   quantidadeAlunos <- pedirQuantidadeAlunos()
   escreval("___________________")

   // obtenção de dados dos Alunos (nome e notas, 1ª e 2ª)
   para contagemAlunos de 1 ate quantidadeAlunos passo 1 faca
      escreval()
      escreval(contagemAlunos, "º ALUNO ")
      escreval()
      
      nomeAlunos[contagemAlunos - 1] <- pedirNome()

      escreval()

      para contagemNotas de 1 ate 2 passo 1 faca
         notasAlunos[contagemAlunos - 1, contagemNotas - 1] <- pedirNota(contagemNotas)
      fimPara
      
      escreval("-------------------")
   fimPara

   quantidadeAlunosAprovados <- 0

   // Cálculo da Média dos Alunos (já analisando se aluno foi aprovado para SAÍDA)
   para contagemAlunos de 1 ate quantidadeAlunos passo 1 faca
      mediaAlunos[contagemAlunos - 1] <- calcularMediaAluno(notasAlunos[contagemAlunos - 1, 0], notasAlunos[contagemAlunos - 1, 1])
      se (mediaAlunos[contagemAlunos - 1] >= 6) entao
         indiceAlunosAprovados[quantidadeAlunosAprovados] <- contagemAlunos - 1
         quantidadeAlunosAprovados <- quantidadeAlunosAprovados + 1

      fimSe
   fimPara
   
   escreval()

   // SAÍDA para mostrar se algum aluno foi aprovado ou não
   SE (quantidadeAlunosAprovados > 0) ENTAO
      escreval("ALUNOS APROVADOS: ")
      escreval()

      para contagemAlunos de 1 ate quantidadeAlunosAprovados passo 1 faca
         escreval(" . ", nomeAlunos[ indiceAlunosAprovados[contagemAlunos - 1] ])
      fimPara
   SENAO
      escreval("TODOS ALUNOS FORAM REPROVADOS!")
   FIMSE
   
Fimalgoritmo