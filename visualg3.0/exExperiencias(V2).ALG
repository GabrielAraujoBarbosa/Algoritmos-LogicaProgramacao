Algoritmo "experiencias"

Var

   // Variável para Laço Incondicional
   contagemExecucoes : inteiro
   variavelLixo : caractere
   // Variáveis para armazenar retorno de Função (que valor precisa usar em partes do algoritmo)
   quantidadeExperimentosRealizados, totalCobaias : inteiro

   // Funcionamento da ordenação dos Vetores:
   // [1] = coelho
   // [2] = rato
   // [3] = sapo
   quantidadeTipoCobaia : Vetor[1..3] de Inteiro
   porcentagemUsoTipoCobaia : Vetor[1..3] de Real


// Armazena Zero em todos os espaços do Vetor que faz soma Acumulada (leva em consideração o que já está armazenado)
Procedimento zerarIndicesVetorAcumulamQuantidade()
Var
   valorIndice : inteiro
Inicio
   para valorIndice de 1 ate 3 faca
      quantidadeTipoCobaia[valorIndice] <- 0
   fimPara
fimProcedimento

// Introduzir o Programa (ficando como cabeçalho)
Procedimento cabecalhoIntroducaoPrograma()
Inicio
   escreval("     LABORATÓRIO DE EXPERIMENTOS    ")
   escreval(" -----------------------------------")
   escreval()
FimProcedimento

// Concluir o Programa (ficando como cabeçalho final - do relatório)
Procedimento cabecalhoConclusaoPrograma()
Inicio
   escreval("      RELATÓRIO DE EXPERIMENTOS     ")
   escreval(" -----------------------------------")
   escreval()
FimProcedimento
   
// ENTRADA da quantidade de experimentos realizados no laboratório
Funcao perguntarQuantidadeExperimentos():inteiro
Var
   quantidadeExperimentos : inteiro
   variavelLixo : caractere  // apenas para indicar enter
Inicio

   // ENTRADA Inicial (1ª vez obrigatória)
   escreva(" Digite a Quantidade de Experimentos Realizados: ")
   leia(quantidadeExperimentos)
   
   // Laço Condicional Pré-Teste que controla: Análise da quantidadeExperimentos e a Tomada de Decisão para quando valor é inválido
   enquanto (quantidadeExperimentos <= 0) faca
      // Feedback valor inválido
      escreval()
      escreval(" QUANTIDADE INVÁLIDA! DIGITE UM VALOR POSITIVO!")
      // Leitura Representativa de ENTER
      leia(variavelLixo)
      // Limpeza de Tela (pois está no início do programa e 1ª ENTRADA foi inválida, então já volta desde o início para evitar poluição visual
      limpaTela()
      // E, assim, volta a fazer as mesmas coisas (que são simples de fazer)

      introducaoPrograma()
      // ENTRADA Repetida
      escreva(" Digite a Quantidade de Experimentos Realizados: ")
      leia(quantidadeExperimentos)
   fimEnquanto
   
   retorne quantidadeExperimentos
FimFuncao

// Alertar que na Tela começará a pedir dados sobre experimentos ocorridos
Procedimento alertaSobreTrocaSecaoParaDadosExperimento()
Var
   variavelLixo : caractere // apenas para indicar ENTER
Inicio
   escreval()
   escreval()
   escreval(" | SERÁ SOLICITADO OS DADOS DE CADA EXPERIMENTO |")
   escreva (" |              (PRESSIONE ENTER)               |")
   leia(variavelLixo)
FimProcedimento

// ENTRADA do Tipo de Cobaia usada no experimento ocorrido
 // Ficará dentro de Estrutura de Repetição, pois pode haver mais de 1 experimento
Funcao perguntarTipoCobaiaUtilizada():caractere
Var
   tipoCobaia : caractere
Inicio

   // ENTRADA Inicial (1ª vez obrigatória)
   escreval(" Qual Tipo de Cobaia? (S para Sapo | R para Rato | C para Coelho)")
   escreva(" -> ")
   leia(tipoCobaia)
   // Convertendo em maiúsculo para ter certeza da letra (caso esteja minúscula), assim funcionando também para letras minúsculas
   tipoCobaia <- maiusc(tipoCobaia)
   
   // Laço Condicional Pré-Teste que controla: Análise do tipoCobaia e a Tomada de Decisão para quando valor é inválido
   enquanto (tipoCobaia <> "S") E (tipoCobaia <> "R") E (tipoCobaia <> "C") faca
      // Feedback valor inválido
      escreval(" FORMATO INCORRETO! DIGITE ALGUM DOS 3 TIPOS!")
      escreval()

      // ENTRADA Repetida
      escreval(" Qual Tipo de Cobaia? (S para Sapo | R para Rato | C para Coelho)")
      escreva(" -> ")
      leia(tipoCobaia)
      // Convertendo em maiúsculo para ter certeza da letra (caso esteja minúscula), assim funcionando também para letras minúsculas
      tipoCobaia <- maiusc(tipoCobaia)
   fimEnquanto

   retorne tipoCobaia
FimFuncao

// ENTRADA da quantidade de cobaias, do tipo especificado, usadas no experimento ocorrido (antes especificando explicitamente tipo escolhido)
 // Ficará dentro de Estrutura de Repetição, pois pode haver mais de 1 experimento
Funcao pedirQuantidadeCobaias(tipoCobaia : caractere):inteiro
Var
   animalCobaia : caractere
   quantidadeCobaias : inteiro
Inicio

   // Análise de qual Tipo será digitado a quantidade
   escolha (tipoCobaia)
      caso "C"
         animalCobaia <- "Coelhos"
      caso "R"
         animalCobaia <- "Ratos"
      caso "S"
         animalCobaia <- "Sapos"
   fimEscolha

   // ENTRADA Inicial (1ª vez obrigatória)
   escreva(" Informe a Quantidade de ", animalCobaia, " Cobaias: ")
   leia(quantidadeCobaias)

   // Laço Condicional Pré-Teste que controla: Análise da quantidadeCobaias e a Tomada de Decisão para quando valor é inválido
   enquanto (quantidadeCobaias <= 0) faca
       // Feedback valor inválido
      escreval(" INVÁLIDO! AO MENOS 1 COBAIA PRECISA SER USADA!")
      escreval()

      // ENTRADA Repetida
      escreva(" Informe a Quantidade de ", animalCobaia, " Cobaias: ")
      leia(quantidadeCobaias)
   fimEnquanto

   retorne quantidadeCobaias
FimFuncao

// Acumulando a quantidade usada, do tipo especificado, nos experimentos ao espaço do Vetor, que armazena as quantidades do tipo, no respectivo tipo (que faz soma Acumulada)
 // Ficará dentro de Estrutura de Repetição, pois pode haver mais de 1 experimento
Procedimento acumularQuantidadeCobaiasDigitadaTipoEspecifico (tipoCobaia : caractere; quantidadeCobaias : inteiro)
Inicio

   // Análise do Tipo que foi digitado (para acumular quantidadeDigitada no espaço correto do Vetor, que acumula a quantidade do tipo nos experimentos)
   escolha (tipoCobaia)
      caso "C"
         quantidadeTipoCobaia[1] <- quantidadeTipoCobaia[1] + quantidadeCobaias
      caso "R"
         quantidadeTipoCobaia[2] <- quantidadeTipoCobaia[2] + quantidadeCobaias
      caso "S"
         quantidadeTipoCobaia[3] <- quantidadeTipoCobaia[3] + quantidadeCobaias
   fimEscolha

FimProcedimento

Procedimento solicitarDadosExperimento()
Var

   // variáveis para armazenar retorno dos blocos
   tipoCobaia : caractere
   quantidadeCobaiasTipoEspecifico : inteiro

Inicio

   tipoCobaia <- perguntarTipoCobaiaUtilizada()

   escreval()

   quantidadeCobaiasTipoEspecifico <- pedirQuantidadeCobaias(tipoCobaia)

   acumularQuantidadeCobaiasDigitadaTipoEspecifico(tipoCobaia, quantidadeCobaiasTipoEspecifico)
fimProcedimento

// Contagem do Total de Cobaias, independente do tipo
Funcao contarQuantidadeTotalCobaias():inteiro
Var
   valorIndice, quantidadeTotal : inteiro
Inicio
   // Inicializando variável (porque acumula valores - garantindo ZERO inicialmente)
   quantidadeTotal <- 0

   // A quantidade de cada tipo está armazenada nos espaços do vetor (no índice 1 até 3), então precisa-se juntar todos esses valores
   para valorIndice de 1 ate 3 passo 1 faca
      quantidadeTotal <- quantidadeTotal + quantidadeTipoCobaia[valorIndice]
   fimPara

   retorne quantidadeTotal
FimFuncao

// Calcular Porcentagem Uso de cada tipo (considerando o total de cobaias como o uso total - 100%)
Procedimento calcularPorcentagemUsoCadaTipoCobaia(quantidadeTotalCobaias : inteiro)
Var
   contagemCalculos : inteiro
Inicio

   // Fazendo os 3 cálculos de Porcentagem, ao mesmo tempo que armazena nos 3 índices do Vetor
   para contagemCalculos de 1 ate 3 passo 1 faca
      // Divisão do valorMenor(parte do todo) por valorMáximo(total) para encontrar quanto que essa "partezinha" equivale do total(100%), assim, encontra-se a forma unitária da porcentagem. Então, depois multiplica por 100 para encontrar a forma percentual (pois queremos ela para mostrar pro usuário)
      porcentagemUsoTipoCobaia[contagemCalculos] <- (quantidadeTipoCobaia[contagemCalculos] / quantidadeTotalCobaias) * 100
   fimPara

FimProcedimento

// Mostrando Quantidade de cada tipo
Procedimento mostrarQuantidadeCadaTipoCobaia()
Var
   indice : inteiro
Inicio

   // Passando por todos os índices para mostrar quantidade de todos os tipos
   para indice de 1 ate 3 passo 1 faca
      escreva("  . Cobaias")
      
      // Análise para saber de qual tipo será mostrado a quantidade
      escolha (indice)
         caso 1
            escreva(" Coelhos = ")
         caso 2
            escreva(" Ratos = ")
         caso 3
            escreva(" Sapos = ")
      fimEscolha
      
      // Mostrando quantidade do tipo pelo respectivo índice
      escreval(quantidadeTipoCobaia[indice])
   fimPara
   
fimProcedimento

// Mostrando PorcentagemUso de cada tipo (baseado no total - 100%)
Procedimento mostrarPorcentagemUsoCadaTipoCobaia()
Var
   indice : inteiro
Inicio

   // Passando por todos os índices para mostrar porcentagem de todos os tipos
   para indice de 1 ate 3 passo 1 faca
      escreva("  . ")
      
      // Análise para saber de qual tipo será mostrado a porcentagem
      escolha (indice)
         caso 1
            escreva("Coelhos = ")
         caso 2
            escreva("Ratos = ")
         caso 3
            escreva("Sapos = ")
      fimEscolha

      // Mostrando procentagemUso do tipo pelo respectivo índice
      escreval(porcentagemUsoTipoCobaia[indice]:4:2, " %")
   fimPara

FimProcedimento

// Relatório que conclue o uso do Laboratório
Procedimento gerarRelatorioExperimentos(totalCobaias : inteiro)
Inicio

   cabecalhoConclusaoPrograma()

   // SAÍDA - AMOSTRAGEM DE DADOS QUE REPRESENTAM QUANTIDADE
   escreval(" QUANTIDADE:")
   escreval()
   escreval("  Total de Cobaias = ", totalCobaias)
   escreval()
   mostrarQuantidadeCadaTipoCobaia()

   // Separação entre Informações da mesma Seção
   escreval()
   escreval("----")
   escreval()

   // SAÍDA - AMOSTRAGEM DE DADOS QUE REPRESENTAM PORCENTAGEM
   escreval(" PORCENTAGEM DE USO:")
   escreval()
   mostrarPorcentagemUsoCadaTipoCobaia()

   // Separação entre Seções - Relatório Final e Fim do Programa
   escreval()
   escreval("__________________")
   escreval()
FimProcedimento


// Algoritmo
Inicio

   zerarIndicesVetorAcumulamQuantidade()
   
   cabecalhoIntroducaoPrograma()
   
   quantidadeExperimentosRealizados <- perguntarQuantidadeExperimentos()

   alertaSobreTrocaSecaoParaDadosExperimento()

   // Limpeza para poder mostrar próxima informação na tela individualmente (dadosExperimento)
   limpaTela()

   // Laço Incondicional que controla: Repetição da solicitação dadosExperimento, mas antes separando da solicitação anterior
   para contagemExecucoes de 1 ate quantidadeExperimentosRealizados passo 1 faca
      cabecalhoIntroducaoPrograma()

      // Indicando a ordem do experimento que está sendo pedida (repetição - 2 até o último)
      escreval(" ", contagemExecucoes, "º EXPERIMENTO")
      escreval()
      solicitarDadosExperimento()
      
      // Limpeza para poder mostrar próxima informação na tela individualmente (relatório ou repetição dadosExperimento)
      limpaTela()
   fimPara

   // PROCESSAMENTO DE DADOS
   totalCobaias <- contarQuantidadeTotalCobaias()
   calcularPorcentagemUsoCadaTipoCobaia(totalCobaias)
   
   // SAÍDA Final - Relatório concluindo o uso do laboratório
   gerarRelatorioExperimentos(totalCobaias)

Fimalgoritmo

 // Funcionamento do Algoritmo:

   // 1º - Perguntar ao usuário qual a quantidade de experimentos ocorridos no laboratório

   // 2º - Para cada experimento ocorrido, perguntar:
   //   . tipo de cobaia utilizada (Rato, Sapo ou Coelho)
   //   . quantidade de cobaias utilizadas do tipo especificado acima
   //
   // RESUMIDAMENTE: para cada experimento, solicita os dados do experimento

   // 3º - Criar o Relatório do Laboratório, que contém:
   //  [ I ]
   //    . quantidade total de cobaias usadas no laboratório (independente do tipo)
   //    . quantidade usada por cada tipo de cobaia
   //
   //  [ II ]
   //    . porcentagem de uso de cada tipo de cobaia (em relação ao total)
