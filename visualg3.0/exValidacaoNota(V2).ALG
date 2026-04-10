Algoritmo "validacao_de_nota"

Var

   // Variáveis para entrada de dados
   nota1, nota2 : real

   // Variáveis para processamento de dados
   mediaNotas : real
   quantidadeNotasValidas, quantidadeLeituras : inteiro
   
Inicio

   // Iniciação de variáveis
   quantidadeNotasValidas <- 0
    // Atribuindo zero a variável que contará leituras ocorridas dentro das Estruturas Enquanto
   quantidadeLeituras <- 0

   // Introdução
   escreval("        MÉDIA NOTAS       ")
   escreval(" -------------------------")
   escreval()
   escreval()

   // Atribuindo valor fictício a Nota1 para bloco do Enquanto ser executado intencionalmente pelo menos 1 vez
   nota1 <- 100

   // Estrutura de Repetição controlando: ENTRADA DE DADOS e PROCESSAMENTO DE DADOS
    // Ela é executada a 1ª vez apenas para obter Leitura, que será a primeira, para depois realmente começar a repetir caso número seja inválido
   enquanto (nota1 > 10) OU (nota1 < 0) faca // repete enquanto Nota1 for inválida; nota fora do intervalo de 0 até 10

      // Análise se houve leitura para saber se não é a primeira execução que está acontecendo
      se (quantidadeLeituras > 0) entao // se já houve alguma leitura
         escreval(" Nota Inválida! Informe sua nota real (entre 0 e 10)")
         escreval()
      fimSe
      
      // OPERAÇÃO DE ENTRADA DE DADOS Nota1 (junto com SAÍDA)
      escreva(" Digite a 1ª nota: ")
      leia(nota1)
      quantidadeLeituras <- quantidadeLeituras + 1
      
   fimEnquanto
   // Chega aqui quando 1ª Nota digitada for Válida
   quantidadeNotasValidas <- quantidadeNotasValidas + 1

   escreval()
   escreval(" ---") // Separação entre notas
   escreval()


   // Reiniciando variável para contar leituras ocorridas nessa próxima estrutura
   quantidadeLeituras <- 0
   // Atribuindo valor fictício a Nota2 para bloco do Enquanto ser executado intencionalmente pelo menos 1 vez
   nota2 <- 100

   // Estrutura de Repetição controlando: ENTRADA DE DADOS e PROCESSAMENTO DE DADOS
    // Ela é executada a 1ª vez apenas para obter Leitura, que será a primeira, para depois realmente começar a repetir caso número seja inválido
   enquanto (nota2 > 10) OU (nota2 < 0) faca // repete enquanto Nota2 for inválida; nota fora do intervalo de 0 até 10

      // Análise se houve leitura para saber se não é a primeira execução que está acontecendo
      se (quantidadeLeituras > 0) entao // se já houve leitura
         escreval(" Nota Inválida! Informe sua nota real (entre 0 e 10)")
         escreval()
      fimSe
      
      // OPERAÇÃO DE ENTRADA DE DADOS Nota2 (junto com SAÍDA)
      escreva(" Digite a 2ª nota: ")
      leia(nota2)
      quantidadeLeituras <- quantidadeLeituras + 1
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