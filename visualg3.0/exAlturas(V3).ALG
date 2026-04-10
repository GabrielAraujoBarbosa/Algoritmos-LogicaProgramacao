Algoritmo "alturas"

Var

   quantidadeTotalPessoas : inteiro
   
   // Variável de Controle Loop
   contagemSolicitacoesDadosPessoais : inteiro
   // Variáveis para ENTRADA Loop (pedir/processar dados Pessoa)
   nomePessoa : caractere
   idadePessoa : inteiro
   alturaPessoa : real

   // Variáveis para processamento pessoa
   alturaAcumuladaPessoas : real
   quantidadePessoasMaioresIdade, quantidadePessoasMenoresIdade : inteiro

   // Variáveis para cálculo Relatório
   alturaMediaPessoas : real
   porcentagemPessoasMaioresIdade, porcentagemPessoasMenoresIdade : real

   // Vetor que armazena dados relevantes para Relatório
   nomePessoasMenoresIdade : vetor[0..9] de caractere


Procedimento cabecalhoIntroducaoPrograma()
Inicio
   escreval("      GRUPO DE PESSOAS     ")
   escreval(" --------------------------")
   escreval()
FimProcedimento

Procedimento cabecalhoRelatorioPrograma()
Inicio
   escreval("    RELATÓRIO DO GRUPO DE PESSOAS   ")
   escreval(" -----------------------------------")
   escreval()
FimProcedimento

Funcao pedirQuantidadePessoas():inteiro
Var
   quantidadeDigitada : inteiro
   variavelLixo : caractere
Inicio
   // ENTRADA Inicial (1ª)
   escreva(" Digite a Quantidade de Pessoas no Grupo: ")
   leia(quantidadeDigitada)

   enquanto (quantidadeDigitada < 1) OU (quantidadeDigitada > 10) faca
      // Feedback de valor inválido
      escreval()
      escreva(" QUANTIDADE DO GRUPO INVÁLIDA! DIGITE ENTRE 1 E 10!")
      leia(variavelLixo)

      limpaTela()

      cabecalhoIntroducaoPrograma()
      // ENTRADA Repetida
      escreva(" Digite a Quantidade de Pessoas no Grupo: ")
      leia(quantidadeDigitada)
   fimEnquanto
   
   retorne quantidadeDigitada
FimFuncao

PROCEDIMENTO pedirDadosPessoa()
Inicio
   // ENTRADA Inicial - Nome
   escreva(" Nome Completo: ")
   leia(nomePessoa)

   // Análise do nome (inválido)
   Enquanto ( Compr(nomePessoa) < 11) OU ( Pos(" ", nomePessoa) = 1) OU (Copia( nomePessoa,Compr(nomePessoa),Compr(nomePessoa) ) = " ") Faca
      //  Feedback valor inválido
      escreval(" NOME INVÁLIDO! DIGITE-O CORRETAMENTE!")

      escreval()

      // ENTRADA Repetida - Nome
      escreva(" Nome Completo: ")
      leia(nomePessoa)
   FimEnquanto
   
   escreval()
   
   // ENTRADA Inicial - Idade
   escreva(" Idade: ")
   leia(idadePessoa)
   // Análise da idade (inválida)
   Enquanto (idadePessoa <= 5) OU (idadePessoa >= 75) Faca
      // Feedback valor inválido
      se (idadePessoa <= 5) entao
         escreval(" IDADE INVÁLIDA! PRECISA TER MAIS DE 5 ANOS!")
      senao
         escreval(" IDADE INVÁLIDA! PRECISA TER MENOS DE 75 ANOS!")
      fimse
      
      escreval()
      
      // ENTRADA Repetida - Idade
      escreva(" Idade: ")
      leia(idadePessoa)
   FimEnquanto

   escreval()

   // ENTRADA Inicial - Altura
   escreva(" Altura: ")
   leia(alturaPessoa)
   // Análise da altura (inválida)
   Enquanto (alturaPessoa <= 1.00) OU (alturaPessoa >= 2.20) Faca
      // Feedback valor inválido
      escreval(" ALTURA INVÁLIDA! PRECISA ESTAR EM UMA FAIXA COMUM!")
      
      escreval()
      
      // ENTRADA Repetida - Altura
      escreva(" Altura: ")
      leia(alturaPessoa)
   FimEnquanto
FIMPROCEDIMENTO

Procedimento processarDadosPessoa(var AlturaAcumulada : real; var pessoasMaioresIdade, pessoasMenoresIdade : inteiro)
Inicio
   alturaAcumulada <- alturaAcumulada + alturaPessoa
   
   se (idadePessoa >= 18) entao
      pessoasMaioresIdade <- pessoasMaioresIdade + 1
   senao
      nomePessoasMenoresIdade[pessoasMenoresIdade] <- nomePessoa
      pessoasMenoresIdade <- pessoasMenoresIdade + 1
   fimSe
FimProcedimento

Procedimento gerarRelatorioFinal(alturaTotalPessoas : real; quantidadePessoasMaioresIdade, quantidadePessoasMenoresIdade : inteiro)
Var

   alturaMediaPessoas : real
   porcentagemPessoasMaioresIdade, porcentagemPessoasMenoresIdade : real
   quantidadeTotalPessoas : inteiro
Inicio

   quantidadeTotalPessoas <- quantidadePessoasMaioresIdade + quantidadePessoasMenoresIdade

   alturaMediaPessoas <- alturaTotalPessoas / quantidadeTotalPessoas
   
   porcentagemPessoasMaioresIdade <- quantidadePessoasMaioresIdade * 100 / quantidadeTotalPessoas
   porcentagemPessoasMenoresIdade <- quantidadePessoasMenoresIdade * 100 / quantidadeTotalPessoas

   amostragemRelatorio(alturaMediaPessoas, porcentagemPessoasMaioresIdade, porcentagemPessoasMenoresIdade, quantidadePessoasMenoresIdade)

FimProcedimento

Procedimento amostragemRelatorio(alturaMedia, porcentagemMaioresIdade, porcentagemMenoresIdade : real; quantidadeMenoresIdade : inteiro)
Var
   contagemIndices : inteiro
Inicio

   escreval(" Altura Média das Pessoas: ", alturaMedia:4:2)

   escreval()

   escreval(" Porcentagem de Pessoas Maiores de 18 Anos: ", porcentagemMaioresIdade:4:2, "%")
   
   escreval()
   
   escreval(" Porcentagem de Pessoas Menores de 18 Anos: ", porcentagemMenoresIdade:4:2, "%")

   se (quantidadeMenoresIdade > 0) entao
      escreval()
      escreval(" Pessoas Menores de idade:")

      para contagemIndices de 0 ate (quantidadeMenoresIdade - 1) passo 1 faca
      escreval("  . ", nomePessoasMenoresIdade[contagemIndices])
      fimPara
   senao
      escreval("  . Não existem menores de idade no grupo!")
   fimSe
FimProcedimento

// Algoritmo
Inicio

   // Inicialização de variáveis
   alturaAcumuladaPessoas <- 0
   quantidadePessoasMaioresIdade <- 0
   quantidadePessoasMenoresIdade <- 0

   cabecalhoIntroducaoPrograma()

   quantidadeTotalPessoas <- pedirQuantidadePessoas()
   
   limpaTela()
   
   cabecalhoIntroducaoPrograma()
   
   // 1ª vez
   contagemSolicitacoesDadosPessoais <- 1
   escreval(" DADOS ", contagemSolicitacoesDadosPessoais, "ª PESSOA")
   escreval()
   pedirDadosPessoa()
   processarDadosPessoa(alturaAcumuladaPessoas, quantidadePessoasMaioresIdade, quantidadePessoasMenoresIdade)
   
   para contagemSolicitacoesDadosPessoais de 2 ate quantidadeTotalPessoas passo 1 faca
      escreval()
      escreval("-------")
      escreval()
      
      escreval(" DADOS ", contagemSolicitacoesDadosPessoais, "ª PESSOA")
      escreval()
      pedirDadosPessoa()
      processarDadosPessoa(alturaAcumuladaPessoas, quantidadePessoasMaioresIdade, quantidadePessoasMenoresIdade)
   fimPara

   limpaTela()

   cabecalhoRelatorioPrograma()

   gerarRelatorioFinal(alturaAcumuladaPessoas, quantidadePessoasMaioresIdade, quantidadePessoasMenoresIdade)

   escreval()
   escreval("___________")
   
Fimalgoritmo