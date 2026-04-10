Algoritmo "desafioAtletas"

Var

   // Armazena dado gerado na ENTRADA para ser usado no enunciado do Laço Incondicional
   quantidadeAtletasConvocados : inteiro

   // Variável para o Laço Incondicional
   contagemSolicitacoesDados : inteiro

   // Armazenam dados gerados no Laço, que executa Solicitação/Análise Dados, para serem usados no Cálculo
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

//
Procedimento limparIndicesVetor_ZerarVariaveis()
Inicio

   limparIndicesVetor()
   
   // Zerando variáveis que fazem soma acumulada
   totalHomensAtletas <- 0
   totalMulheresAtletas <- 0
   pesoTotalSomadoAtletas <- 0
   alturaTotalSomadaMulheres <- 0
   
   // Zerando variável que guarda Altura mais Alta (para começar com zero, tendo certeza de que não há nenhuma altura digitada)
   alturaAtletaMaisAlto <- 0
fimProcedimento

// Introduz o Programa (ficando como cabeçalho)
Procedimento introducaoPrograma()
Inicio
   escreval("  CONVOCAÇÃO DE ATLETAS - PROVAS DE ATLETISMO ")
   escreval(" ---------------------------------------------")
FimProcedimento

// Separar Seções do Programa (partes do programa consideradas diferentes)
Procedimento separacaoEntreSecoes()
Inicio
   escreval()
   escreval("__________________")
   escreval()
FimProcedimento

// Separar Informações da mesma Seção
Procedimento separacaoEntreInformacoes()
Inicio
   escreval()
   escreval("----")
   escreval()
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

   // repete enquanto a quantidadeAtletas for menor que 1
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

   // repete enquanto o nomeDigitado Tiver menos que 11 caracteres OU  For encontrado o "espaço" como primeiro caractere do nome
   enquanto ( Compr(nomeAtleta) < 11) OU ( Pos(" ", nomeAtleta) = 1) faca
      //  Feedback valor inválido
      escreval(" NOME INVÁLIDO! DIGITE-O CORRETAMENTE!")
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

   // repete enquanto sexoDigitado for diferente dos caracteres 'F' e 'M'
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

   // repete enquanto alturaDigitada não estiver entre 1.50 e 2.15 Metros
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

   // repete enquanto pesoDigitado não estiver entre 30 e 209 Kilos
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
   
   escreval()
   
   sexoAtleta <- pedirSexoAtleta()

   escreval()

   alturaAtleta <- pedirAlturaAtleta()
   
   escreval()
   
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

   // Análise da Altura do atleta (para saber qual é o mais alto ou se tem mais de um atleta com a altura mais alta)
   SE (alturaAtleta >= alturaAtletaMaisAlto) ENTAO
      // Entra aqui se a alturaDigita é maior ou igual a maiorAltura já obtida

      // se for igual a maiorAltura já obtida
      se (alturaAtleta = alturaAtletaMaisAlto) entao
         // Significa que, nesse momento, temos mais de 1 atleta com a maiorAltura (mesmas alturas consideradas a maior)
         quantidadeAtletasMaisAltos <- quantidadeAtletasMaisAltos + 1
         nomeAtletasMaisAltos[quantidadeAtletasMaisAltos] <- nomeAtleta
      senao  // se for maior que a maiorAltura já obtida
         // Significa que, nesse momento, temos uma nova maiorAltura possuida apenas pelo atleta da alturaDigitada
         alturaAtletaMaisAlto <- alturaAtleta
         quantidadeAtletasMaisAltos <- 1
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
   escreval(" RELATÓRIO DE CONVOCAÇÃO")

   escreval()

   escreval(" . Peso Médio dos Atletas: ", pesoMedioAtletas:4:2, " kg")
   
   escreval()
   
   // Mostrando Atleta(s) mais alto(s)
    // 1º - Altura
   escolha (quantidadeAtletasMaisAltos)
      caso 1
         escreva(" . Atleta Mais Alto")
      outrocaso
         escreva(" . Atletas Mais Altos")
   fimEscolha
   escreval(" (com ", maiorAltura:4:2, " m):")
    // 2º - Nome do(s) Atleta(s)
   para contagemIndices de 1 ate quantidadeAtletasMaisAltos faca
      escreval("   - ", nomeAtletasMaisAltos[contagemIndices])
   fimPara

   escreval()

   escreval(" . Porcentagem de Homens: ", porcentagemHomensAtletas:4:2, " %")
   
   escreval()
   
   se (alturaMediaMulheresAtletas <> 0) entao
      escreval(" . Altura Média das Mulheres: ", alturaMediaMulheresAtletas:4:2, " m")
   senao
      escreval(" . Não há Mulheres Convocadas ")
   fimSe
FimProcedimento


// Algoritmo
Inicio

   limparIndicesVetor_ZerarVariaveis()

   introducaoPrograma()

   escreval()

   quantidadeAtletasConvocados <- perguntarQuantidadeAtletas()
   
   separacaoEntreSecoes()

   // 1ª Solioitação de Dados Atleta com Análise - Inicial  (executa pelo menos uma vez e na 1ª vez acontece unicamente dessa forma)
   contagemSolicitacoesDados <- 1
   escreval(" DADOS ", contagemSolicitacoesDados, "º ATLETA")
   escreval()
   analisarDadosEntradaAtleta(totalHomensAtletas, totalMulheresAtletas, pesoTotalSomadoAtletas, alturaTotalSomadaMulheres, alturaAtletaMaisAlto, contagemAtletasMaisAltos)

   // Laço Incondicional controlando: Repetição da Solicitação e Análise, antes fazendo a separação entre o que já foi mostrado do que será mostrado
   para contagemSolicitacoesDados de 2 ate quantidadeAtletasConvocados passo 1 faca
      separacaoEntreInformacoes()
      escreval(" DADOS ", contagemSolicitacoesDados, "º ATLETA")
      escreval()
      // Repetição Solioitação de Dados Atleta com Análise
      analisarDadosEntradaAtleta(totalHomensAtletas, totalMulheresAtletas, pesoTotalSomadoAtletas, alturaTotalSomadaMulheres, alturaAtletaMaisAlto, contagemAtletasMaisAltos)
   fimPara

   // Realização de cálculos para gerar alguns dados necessário do Relatório
    //                               (  ---------  AQUI OCORRE A PASSAGEM POR VALOR  ---------  )                    |||       (  -------  AQUI OCORRE A PASSAGEM POR REFERÊNCIA  -------  )
   calcularDadosAtletas( totalHomensAtletas, totalMulheresAtletas, pesoTotalSomadoAtletas, alturaTotalSomadaMulheres  ,  pesoMedioAtletas, porcentagemHomensAtletas, alturaMediaMulheresAtletas )

   separacaoEntreSecoes()

   // Mostrando Relatório ao usuário
    //  PASSAGEM POR VALOR:      ( DO QUE FOI GERADO NA SOLICITAÇÃO DADOS )   |||          ( --- DO QUE FOI GERADO NO CÁLCULO DADOS --- )
   gerarRelatorioSobreAtletas( alturaAtletaMaisAlto, contagemAtletasMaisAltos  ,  pesoMedioAtletas, porcentagemHomensAtletas, alturaMediaMulheresAtletas)

   separacaoEntreSecoes()

Fimalgoritmo