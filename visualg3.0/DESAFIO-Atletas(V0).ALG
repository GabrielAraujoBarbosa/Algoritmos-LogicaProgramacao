Algoritmo "desafioAtletas"

Var

   // Armazena dado gerado na ENTRADA para ser usado no enunciado do Laço Incondicional
   quantidadeAtletasConvocados : inteiro

   // Variável para o Laço Incondicional
   contagemExecucoes : inteiro

   // Armazenam dados gerados no Laço, que executa Solicitação Dados, para serem usados no Cálculo
   totalHomensAtletas, totalMulheresAtletas : inteiro
   pesoTotalSomadoAtletas : real
   alturaTotalSomadaMulheres : real

   // Armazenam dados gerados no Laço, que executa Solicitação Dados, para serem usados no Relatório
   alturaAtletaMaisAlto : real
   contagemAtletasMaisAltos : inteiro
   nomeAtletasMaisAltos : Vetor[1..5] de caractere

   // Armazenam dados gerados no CalculoDados para serem usados no Relatório
   pesoMedioAtletas, porcentagemHomensAtletas, alturaMediaMulheresAtletas : real

//
Procedimento limparIndicesVetor()
Var
   contagemIndice : inteiro
Inicio
   para contagemIndice de 1 ate 5 faca
      nomeAtletasMaisAltos[contagemIndice] <- ""
   fimPara
fimProcedimento

Procedimento limparIndicesVetor_ZerarVariaveis()
Inicio

   limparIndicesVetor()
   
   // Zerando variáveis que fazem soma acumulada
   totalHomensAtletas <- 0
   totalMulheresAtletas <- 0
   alturaTotalSomadaMulheres <- 0
   pesoTotalSomadoAtletas <- 0
   
   // Zerando variável que guarda Altura mais Alta (para começar com zero, tendo certeza que não há nenhuma altura digitada)
   alturaAtletaMaisAlto <- 0
fimProcedimento
   
// Introduz o Programa (ficando como cabeçalho)
Procedimento introducaoPrograma()
Inicio
   escreval("  CONVOCAÇÃO DE ATLETAS - PROVAS DE ATLETISMO ")
   escreval(" ---------------------------------------------")
FimProcedimento

// ENTRADA válida da quantidade Atletas
Funcao perguntarQuantidadeAtletas(): inteiro
Var
   // variáveis para entrada de dados
   quantidadeAtletas: inteiro
   variavelLixo : caractere // apenas para indicar ENTER
Inicio
   // ENTRADA Inicial (1ª)
   escreva(" Digite a quantidade de atletas convocados: ")
   leia(quantidadeAtletas)

   //
   enquanto (quantidadeAtletas < 1) faca
      //  Feedback valor inválido
      escreval()
      escreval(" VALOR INVÁLIDO! DIGITE UM VALOR POSITIVO!")
      leia(variavelLixo)

      limpaTela()
      
      introducaoPrograma()
      escreval()
      
      // ENTRADA Repetida
      escreva(" Digite a quantidade de atletas convocados: ")
      leia(quantidadeAtletas)
   fimEnquanto

   retorne quantidadeAtletas
FimFuncao

// ENTRADA válida do nome do Atleta
Funcao pedirNomeAtleta(): caractere
Var
   // variável para entrada de dados
   nomeAtleta : caractere
Inicio
   // ENTRADA Inicial
   escreva(" Nome Completo: ")
   leia(nomeAtleta)

   enquanto ( compr(nomeAtleta) < 11) faca
      //  Feedback valor inválido
      escreval(" NOME INVÁLIDO! DIGITE CORRETAMENTE!")
      escreval()

      // ENTRADA Repetida
      escreva(" Nome Completo: ")
      leia(nomeAtleta)
   fimEnquanto
   
   retorne nomeAtleta
FimFuncao

// ENTRADA válida do sexo do Atleta
Funcao pedirSexoAtleta(): caractere
Var
   // variável para entrada de dados
   sexoAtleta : caractere
Inicio
   // ENTRADA Inicial
   escreva(" Sexo (M ou F): ")
   leia(sexoAtleta)
   sexoAtleta <- maiusc(sexoAtleta)

   enquanto (sexoAtleta <> "F") E (sexoAtleta <> "M") faca
      //  Feedback valor inválido
      escreval(" SEXO INVÁLIDO! DIGITE APENAS 'F' OU 'M'")
      escreval()

      // ENTRADA Repetida
      escreva(" Sexo (M ou F): ")
      leia(sexoAtleta)
      sexoAtleta <- maiusc(sexoAtleta)
   fimEnquanto
   
   retorne sexoAtleta
FimFuncao

// ENTRADA válida da altura do Atleta
Funcao pedirAlturaAtleta(): real
Var
   // variável para entrada de dados
   alturaAtleta : real
Inicio
   // ENTRADA Inicial
   escreva(" Altura (metros): ")
   leia(alturaAtleta)

   enquanto (alturaAtleta < 1.50) OU (alturaAtleta > 2.15) faca
      //  Feedback valor inválido
      escreval(" ALTURA INVÁLIDA! PRECISA ESTAR EM UMA FAIXA COMUM!")
      escreval()

      // ENTRADA Repetida
      escreva(" Altura (metros): ")
      leia(alturaAtleta)
   fimEnquanto
   
   retorne alturaAtleta
FimFuncao

// ENTRADA válida do peso do Atleta
Funcao pedirPesoAtleta(): real
Var
   // variável para entrada de dados
   pesoAtleta : real
Inicio
   // ENTRADA Inicial
   escreva(" Peso (kilos): ")
   leia(pesoAtleta)

   enquanto (pesoAtleta < 30) OU (pesoAtleta > 209) faca
      //  Feedback valor inválido
      escreval(" PESO INVÁLIDO! PRECISA ESTAR EM UMA FAIXA COMUM!")
      escreval()

      // ENTRADA Repetida
      escreva(" Peso (kilos): ")
      leia(pesoAtleta)
   fimEnquanto
   
   retorne pesoAtleta
FimFuncao

// Obtêm todos os dados necessários do respectivo atleta
Procedimento solicitarDadosAtleta (var nomeAtleta, sexoAtleta : caractere; var alturaAtleta, pesoAtleta : real)
Inicio
   // Variáveis Referenciadas armazenando ENTRADAS
   nomeAtleta <- pedirNomeAtleta()
   sexoAtleta <- pedirSexoAtleta()
   alturaAtleta <- pedirAlturaAtleta()
   pesoAtleta <- pedirPesoAtleta()
fimProcedimento

// Analisa dadosDigitados e gera dados importantes para usar no cálculoDados e Relatório
Procedimento analisarDadosEntradaAtleta(var acumuloQuantidadeHomens, acumuloQuantidadeMulheres : inteiro; var acumuloPesoAtletas, acumuloAlturaMulheres, alturaAtletaMaisAlto : real; var quantidadeAtletasMaisAltos : inteiro)
Var
   nomeAtleta, sexoAtleta : caractere
   alturaAtleta, pesoAtleta : real
Inicio
   // Pedindo todos os dados do Atleta
   solicitarDadosAtleta(nomeAtleta, sexoAtleta, alturaAtleta, pesoAtleta)

   // Variável Referenciada acumulando pesoDigitado
   acumuloPesoAtletas <- acumuloPesoAtletas + pesoAtleta
   
   // Analisar Sexo do atleta (para obter dados importantes dependendo do tipo)
   escolha (sexoAtleta)
      caso "M"
         acumuloQuantidadeHomens <- acumuloQuantidadeHomens + 1
      caso "F"
         acumuloQuantidadeMulheres <- acumuloQuantidadeMulheres + 1
         acumuloAlturaMulheres  <- acumuloAlturaMulheres + alturaAtleta
   fimEscolha

   // Analisar Altura do atleta (para saber qual é o mais alto)
   SE (alturaAtleta >= alturaAtletaMaisAlto) ENTAO

      se (alturaAtleta = alturaAtletaMaisAlto) entao
         quantidadeAtletasMaisAltos <- quantidadeAtletasMaisAltos + 1
         nomeAtletasMaisAltos[quantidadeAtletasMaisAltos] <- nomeAtleta
      senao
         quantidadeAtletasMaisAltos <- 1
         alturaAtletaMaisAlto <- alturaAtleta
         limparIndicesVetor()
         nomeAtletasMaisAltos[1] <- nomeAtleta
      fimSe
   FIMSE
   
FimProcedimento

// Realiza cálculos para gerar dados importantes que serão usados no Relatório
//                                          (  ------------  ESTES SÃO PARÂMETROS POR VALOR  ------------  )                    |||        (  -----  ESTES SÃO PARÂMETROS POR REFERÊNCIA  -----  )
Procedimento calcularDadosAtletas (quantidadeHomens, quantidadeMulheres : inteiro; pesoTotalAtletas, alturaTotalMulheres : real  ;  var pesoMedioAtletas, porcentagemHomens, alturaMediaMulheres : real)
Inicio
   // Cálculo de Média Aritmética
   pesoMedioAtletas <- pesoTotalAtletas / (quantidadeHomens + quantidadeMulheres)

   // Cálculo de Porcentagem
   porcentagemHomens <- quantidadeHomens / (quantidadeHomens + quantidadeMulheres) * 100

   // Análise da quantidadeMulheres (pois pode não haver convocação de mulheres, e quando não há convocação não tem como calcular alturaMedia sem uma quantidade de mulheres)
   se (quantidadeMulheres <> 0) entao // se há mulheres convocadas
      // Cálculo de Média Aritmética
      alturaMediaMulheres <- alturaTotalMulheres / quantidadeMulheres
   senao  // se não houver mulheres convocadas
      // Impossível calcular alturaMedia sem mulheres
      alturaMediaMulheres <- 0
   fimSe
fimProcedimento

// Criar o Relatório Final                                                                        |||
Procedimento gerarRelatorioSobreAtletas (maiorAltura : real; quantidadeAtletasMaisAltos : inteiro  ;  pesoMedioAtletas, porcentagemHomensAtletas, alturaMediaMulheresAtletas : real)
Var
   contagemIndices : inteiro
Inicio

   // Cabeçalho
   escreval("   RELATÓRIO ATLETAS CONVOCADOS  ")
   escreval(" --------------------------------")

   escreval()

   escreval(" Peso Médio dos Atletas: ", pesoMedioAtletas:4:2, " kg")
   
   escreval()
   
   // Mostrar Atleta(s) mais alto(s)
    // 1º - Altura
   escolha (quantidadeAtletasMaisAltos)
      caso 1
         escreva(" [ Atleta mais Alto")
      outrocaso
         escreva(" [ Atletas mais Altos")
   fimEscolha
    // 2º - Nome do(s) Atleta(s)
   escreval(" com ", maiorAltura:4:2, " m ]")
   para contagemIndices de 1 ate quantidadeAtletasMaisAltos faca
      escreval("  . ", nomeAtletasMaisAltos[contagemIndices])
   fimPara

   escreval()

   escreval(" Porcentagem de Homens: ", porcentagemHomensAtletas:4:2, " %")
   
   escreval()
   
   escreval(" Altura Média das Mulheres: ", alturaMediaMulheresAtletas:4:2, " m")

FimProcedimento


// Algoritmo
Inicio

   limparIndicesVetor_ZerarVariaveis()

   introducaoPrograma()

   escreval()

   quantidadeAtletasConvocados <- perguntarQuantidadeAtletas()
   
   escreval()

   para contagemExecucoes de 1 ate quantidadeAtletasConvocados passo 1 faca
      // Antes Solicitando Dados, para depois analisar Dados do respectivo Atleta
      analisarDadosEntradaAtleta(totalHomensAtletas, totalMulheresAtletas, pesoTotalSomadoAtletas, alturaTotalSomadaMulheres, alturaAtletaMaisAlto, contagemAtletasMaisAltos)
   fimPara

   //                                (  ---------  AQUI OCORRE A PASSAGEM POR VALOR  ---------  )                    |||       (  -------  AQUI OCORRE A PASSAGEM POR REFERÊNCIA  -------  )
   calcularDadosAtletas( totalHomensAtletas, totalMulheresAtletas, pesoTotalSomadoAtletas, alturaTotalSomadaMulheres  ,  pesoMedioAtletas, porcentagemHomensAtletas, alturaMediaMulheresAtletas )

   //  PASSAGEM POR VALOR:      ( DO QUE FOI GERADO NA SOLICITAÇÃO DADOS )    |||          ( --- DO QUE FOI GERADO NO CÁLCULO DADOS --- )
   gerarRelatorioSobreAtletas( alturaAtletaMaisAlto, contagemAtletasMaisAltos  ,  pesoMedioAtletas, porcentagemHomensAtletas, alturaMediaMulheresAtletas)

Fimalgoritmo


   // FUNCIONAMENTO DO ALGORITMO:
   
   // 1º - Perguntar ao usuário qual a quantidade de atletas convocados
   
   // 2º - Para cada atleta convocado, fazer:
   //  [ I ]
   //    . Perguntas sobre -> Nome, Sexo, Altura, Peso
   //
   //  [ II ]
   //    . Análises sobre -> Nome, Sexo, Altura, Peso
   //
   // RESUMIDAMENTE: para cada atleta, solicita seus dados pessoais e depois analisa esses dados obtidos
   // OBSERVAÇÃO: Analisando os dados obtidos para serem gerados novos dados que serão usados posteriormente
   
   // 3º - Realizar cálculos com alguns dados gerados através da análise. Assim, obtendo os seguintes dados através do cálculo:
   //   . Peso Médio dos Atletas
   //   . Porcentagem de Atletas homens
   //   . Altura Média das Atletas mulheres
   
   // 4º - Criar o Relatório de Convocação, que contém:
   //   . Dados gerados no cálculo (pesoMédioAtletas, porcentagemHomens, alturaMediaMulheres)
   //   . Nome do(s) atleta(s) mais alto(s)
