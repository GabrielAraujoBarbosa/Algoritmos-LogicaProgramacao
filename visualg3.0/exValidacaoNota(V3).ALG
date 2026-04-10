Algoritmo "validacao_de_nota"

Var

   // Variáveis para entrada de dados
   nota1, nota2 : real

   // Variáveis para processamento de dados
   mediaNotas : real
   numeroExecucaoAcontecendoRepita : inteiro

Inicio

   // Iniciação de variável
    // Começando a contagem a partir do zero
   numeroExecucaoAcontecendoRepita <- 0

   // Introdução
   escreval("        MÉDIA NOTAS       ")
   escreval(" -------------------------")
   escreval()
   escreval()


   // Estrutura de Repetição controlando: ENTRADA DE DADOS e PROCESSAMENTO DE DADOS
   repita  // executa 1ª vez por padrão
      // contagem do número da execução do bloco Repita
      numeroExecucaoAcontecendoRepita <- numeroExecucaoAcontecendoRepita + 1
   
      // Estrutura Condicional Simples controlando: SAÍDA DE DADOS
      se (numeroExecucaoAcontecendoRepita <> 1) entao // se não for a primeira execução do bloco do repita
         escreval(" 1ª Nota é inválida! Digite sua verdadeira nota (0 - 10)")
         escreval() // para ter uma linha de distância
      fimSe
      
      // OPERAÇÃO DE ENTRADA DE DADOS (junto com SAÍDA)
      escreva(" Digite o 1º número: ")
      leia(nota1)
      escreval()
   fimRepita ( (nota1 >= 0) E (nota1 <= 10) ) // repete até que nota esteja no intervalo de 0 a 10; seja válida


   escreval(" ---") // Separação entre notas
   escreval()


   // Reiniciando a contagem para começar a partir do zero (reutilizar na outra estrutura Repita)
   numeroExecucaoAcontecendoRepita <- 0

   // Estrutura de Repetição controlando: ENTRADA DE DADOS e PROCESSAMENTO DE DADOS
   repita  // executa 1ª vez por padrão
      // contagem do número da execução do bloco Repita
      numeroExecucaoAcontecendoRepita <- numeroExecucaoAcontecendoRepita + 1

      // Estrutura Condicional Simples controlando: SAÍDA DE DADOS
      se (numeroExecucaoAcontecendoRepita <> 1) entao // se não for a primeira execução do bloco do repita
         escreval(" 2ª Nota é inválida! Digite sua verdadeira nota (0 - 10)")
         escreval() // para ter uma linha de distância
      fimSe

      // OPERAÇÃO DE ENTRADA DE DADOS (junto com SAÍDA)
      escreva(" Digite o 2º número: ")
      leia(nota2)
      escreval()

   fimRepita ( (nota2 >= 0) E (nota2 <= 10) ) // repete até que nota esteja no intervalo de 0 a 10; seja válida


   // Se chegou aqui é porque já foram digitadas 2 notas válidas (verdadeiras), então pode-se fazer o cálculo da média

   // PROCESSAMENTO DE DADOS
   mediaNotas <- (nota1 + nota2) / 2
   
   // E, por último, deve-se mostrar o cálculo da média
   // OPERAÇÃO DE SAÍDA DE DADOS (mostrando dado processado)
   escreval("--------------------------")
   escreval()
   escreval(" Média do Semestre: ", mediaNotas:4:2)
   escreval()
   escreval(" (", nota1:4:2, " + ", nota2:4:2, ") / 2 = ", mediaNotas:4:2)
   
Fimalgoritmo