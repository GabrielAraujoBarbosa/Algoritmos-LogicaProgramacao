Algoritmo "validacao_de_nota"

Var

   // Variáveis para entrada de dados
   nota1, nota2 : real

   // Variáveis para processamento de dados
   mediaNotas : real
   quantidadeNotasValidas : inteiro

Inicio

   // Iniciação de variáveis
   quantidadeNotasValidas <- 0

   // Introdução
   escreval("        MÉDIA NOTAS       ")
   escreval(" -------------------------")
   escreval()
   escreval()
   
   
   // 1ª OPERAÇÃO ENTRADA DE DADOS Nota1 (junto com SAÍDA)
   escreva(" Digite a 1ª nota: ")
   leia(nota1)
   
   // Estrutura de Repetição controlando: ENTRADA DE DADOS(repetida) e SAÍDA DE DADOS(menciona que nota é inválida)
   enquanto (nota1 > 10) OU (nota1 < 0) faca // repete enquanto Nota1 for inválida; nota fora do intervalo de 0 até 10
      escreval(" Nota Inválida! Informe sua nota real (entre 0 e 10)")
      escreval()
      // Repetição OPERAÇÃO DE ENTRADA DE DADOS Nota1 (junto com SAÍDA)
      escreva(" Digite a 1ª nota: ")
      leia(nota1)
   fimEnquanto
   // Chega aqui quando 1ª Nota digitada for Válida
   quantidadeNotasValidas <- quantidadeNotasValidas + 1
   
   escreval()
   escreval(" ---") // Separação entre notas
   escreval()
   
   // 1ª OPERAÇÃO ENTRADA DE DADOS Nota2 (junto com SAÍDA)
   escreva(" Digite a 2ª nota: ")
   leia(nota2)
   
   // Estrutura de Repetição controlando: ENTRADA DE DADOS(repetida) e SAÍDA DE DADOS(menciona que nota é inválida)
   enquanto (nota2 > 10) OU (nota2 < 0) faca // repete enquanto Nota2 for inválida; nota fora do intervalo de 0 até 10
      escreval(" Nota Inválida! Informe sua nota real (entre 0 e 10)")
      escreval()
      // Repetição OPERAÇÃO DE ENTRADA DE DADOS Nota2 (junto com SAÍDA)
      escreva(" Digite a 2ª nota: ")
      leia(nota2)
   fimEnquanto
   // Chega aqui quando 2ª Nota digitada for Válida
   quantidadeNotasValidas <- quantidadeNotasValidas + 1

   escreval()
   escreval("-------------------------") // Separação para finalizar com SAÍDA (mostrando média)
   escreval()

   // Se já executou tudo acima, quer dizer que temos as Notas Válidas. Então, calcula-se a Média

   // PROCESSAMENTO DE DADOS
   mediaNotas <- (nota1 + nota2) / quantidadeNotasValidas

   // SAÍDA DE DADOS (mostrando dado processado)
   escreval(" Média do semestre: ", mediaNotas:4:2)
   escreval()
   escreval(" (", nota1:4:2, " + ", nota2:4:2, ") / ", quantidadeNotasValidas, " = ", mediaNotas:4:2)

Fimalgoritmo