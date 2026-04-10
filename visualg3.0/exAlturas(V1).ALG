Algoritmo "alturas"

Var

   quantidadeTotalPessoas : inteiro

   // Variável de Controle Loop
   contagemSolicitacoesDadosPessoais : inteiro

   // Variáveis para processamento pessoa
   alturaAcumuladaPessoas : real
   quantidadePessoasMaioresIdade, quantidadePessoasMenoresIdade : inteiro

   // Variáveis para cálculo Relatório
   alturaMediaPessoas : real
   porcentagemPessoasMaioresIdade, porcentagemPessoasMenoresIdade : real

   // Vetores que armazenam ENTRADA (Dados Pessoas)
   nomePessoas : vetor[0..9] de caractere
   idadePessoas : vetor[0..9] de inteiro
   alturaPessoas : vetor[0..9] de real
   
   // Vetor que armazena PROCESSAMENTO (Dados Pessoas)
   nomePessoasMenoresIdade : vetor[0..9] de caractere

Procedimento introducaoPrograma()
Inicio
   escreval("      GRUPO DE PESSOAS     ")
   escreval(" --------------------------")
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

      introducaoPrograma()
      // ENTRADA Repetida
      escreva(" Digite a Quantidade de Pessoas no Grupo: ")
      leia(quantidadeDigitada)
   fimEnquanto

   retorne quantidadeDigitada
FimFuncao

PROCEDIMENTO pedirDadosPessoa(ordemPessoa : inteiro)
Inicio
   // ENTRADA Inicial - Nome
   escreva(" Nome Completo: ")
   leia( nomePessoas[ordemPessoa - 1] )

   // Análise do nome (inválido)
   Enquanto (Compr( nomePessoas[ordemPessoa - 1] ) < 11) OU ( Pos(" ", nomePessoas[ordemPessoa - 1]) = 1) OU (Copia( nomePessoas[ordemPessoa - 1],Compr(nomePessoas[ordemPessoa - 1]),Compr(nomePessoas[ordemPessoa - 1]) ) = " ") Faca
      //  Feedback valor inválido
      escreval(" NOME INVÁLIDO! DIGITE-O CORRETAMENTE!")

      escreval()

      // ENTRADA Repetida - Nome
      escreva(" Nome Completo: ")
      leia( nomePessoas[ordemPessoa - 1] )
   FimEnquanto

   escreval()

   // ENTRADA Inicial - Idade
   escreva(" Idade: ")
   leia( idadePessoas[ordemPessoa - 1] )
   // Análise da idade (inválida)
   Enquanto ( idadePessoas[ordemPessoa - 1] <= 5 ) OU ( idadePessoas[ordemPessoa - 1] >= 75 ) Faca
      // Feedback valor inválido
      se ( idadePessoas[ordemPessoa - 1] <= 5 ) entao
         escreval(" IDADE INVÁLIDA! PRECISA TER MAIS DE 5 ANOS!")
      senao
         escreval(" IDADE INVÁLIDA! PRECISA TER MENOS DE 75 ANOS!")
      fimse

      escreval()

      // ENTRADA Repetida - Idade
      escreva(" Idade: ")
      leia( idadePessoas[ordemPessoa - 1] )
   FimEnquanto

   escreval()

   // ENTRADA Inicial - Altura
   escreva(" Altura: ")
   leia( alturaPessoas[ordemPessoa - 1] )
   // Análise da altura (inválida)
   Enquanto ( alturaPessoas[ordemPessoa - 1] <= 1.00 ) OU ( alturaPessoas[ordemPessoa - 1] >= 2.20 ) Faca
      // Feedback valor inválido
      escreval(" ALTURA INVÁLIDA! PRECISA ESTAR EM UMA FAIXA COMUM!")

      escreval()

      // ENTRADA Repetida - Altura
      escreva(" Altura: ")
      leia( alturaPessoas[ordemPessoa - 1] )
   FimEnquanto
FIMPROCEDIMENTO

Procedimento processarDadosPessoas(var AlturaAcumulada : real; var contagemPessoasMaioresIdade, contagemPessoasMenoresIdade : inteiro  ;  quantidadePessoas : inteiro)
Var
   contagemIndices : inteiro
Inicio

   alturaAcumulada <- 0
   contagemPessoasMenoresIdade <- 0
   contagemPessoasMaioresIdade <- 0

   // Passando por todos os dados das pessoas
   Para contagemIndices de 0 ate (quantidadePessoas - 1) passo 1 Faca
      alturaAcumulada <- alturaAcumulada + alturaPessoas[contagemIndices]
      
      se (idadePessoas[contagemIndices] < 18) entao
         nomePessoasMenoresIdade[contagemPessoasMenoresIdade] <- nomePessoas[contagemIndices]
         contagemPessoasMenoresIdade <- contagemPessoasMenoresIdade + 1
      senao
         contagemPessoasMaioresIdade <- contagemPessoasMaioresIdade + 1
      fimSe
   fimPara
   
FimProcedimento

Procedimento calcularDadosRelatorio(var alturaMediaPessoas, porcentagemPessoasMaioresIdade, porcentagemPessoasMenoresIdade : real  ;  alturaTotalPessoas : real; quantidadePessoasMaioresIdade, quantidadePessoasMenoresIdade : inteiro)
Var
   quantidadeTotalPessoas : inteiro
Inicio
   quantidadeTotalPessoas <- quantidadePessoasMaioresIdade + quantidadePessoasMenoresIdade

   alturaMediaPessoas <- alturaTotalPessoas / quantidadeTotalPessoas

   porcentagemPessoasMaioresIdade <- quantidadePessoasMaioresIdade * 100 / quantidadeTotalPessoas
   porcentagemPessoasMenoresIdade <- quantidadePessoasMenoresIdade * 100 / quantidadeTotalPessoas
FimProcedimento

Procedimento amostragemRelatorio(alturaMedia, porcentagemMaioresIdade, porcentagemMenoresIdade : real; quantidadeMenoresIdade : inteiro)
Var
   contagemIndices : inteiro
Inicio

   escreval(" RELATÓRIO DAS PESSOAS")
   escreval()

   escreval("  Altura Média das Pessoas: ", alturaMedia:4:2)

   escreval()

   escreval("  Porcentagem de Pessoas Maiores de 18 Anos: ", porcentagemMaioresIdade:4:2, "%")

   escreval()

   escreval("  Porcentagem de Pessoas Menores de 18 Anos: ", porcentagemMenoresIdade:4:2, "%")

   escreval()

   se (quantidadeMenoresIdade > 0) entao
      escreval("  Pessoas Menores de idade:")

      para contagemIndices de 0 ate (quantidadeMenoresIdade - 1) passo 1 faca
      escreval("   . ", nomePessoasMenoresIdade[contagemIndices])
      fimPara
   senao
      escreval("  Não existem menores de idade no grupo!")
   fimSe
FimProcedimento

Procedimento gerarRelatorioFinal(alturaTotalPessoas : real; quantidadePessoasMaioresIdade, quantidadePessoasMenoresIdade : inteiro)
Var

   alturaMediaPessoas : real
   porcentagemPessoasMaioresIdade, porcentagemPessoasMenoresIdade : real
   quantidadeTotalPessoas : inteiro
Inicio

   calcularDadosRelatorio(alturaMediaPessoas, porcentagemPessoasMaioresIdade, porcentagemPessoasMenoresIdade  ,  alturaTotalPessoas, quantidadePessoasMaioresIdade, quantidadePessoasMenoresIdade)

   amostragemRelatorio(alturaMediaPessoas, porcentagemPessoasMaioresIdade, porcentagemPessoasMenoresIdade, quantidadePessoasMenoresIdade)

FimProcedimento

// Algoritmo
Inicio

   introducaoPrograma()

   quantidadeTotalPessoas <- pedirQuantidadePessoas()

   escreval("___________")
   escreval()

   // 1ª vez
   contagemSolicitacoesDadosPessoais <- 1
   escreval(" DADOS ", contagemSolicitacoesDadosPessoais, "ª PESSOA")
   escreval()
   pedirDadosPessoa(contagemSolicitacoesDadosPessoais)

   para contagemSolicitacoesDadosPessoais de 2 ate quantidadeTotalPessoas passo 1 faca
      escreval()
      escreval("-------")
      escreval()

      escreval(" DADOS ", contagemSolicitacoesDadosPessoais, "ª PESSOA")
      escreval()
      pedirDadosPessoa(contagemSolicitacoesDadosPessoais)
   fimPara

   processarDadosPessoas(alturaAcumuladaPessoas, quantidadePessoasMaioresIdade, quantidadePessoasMenoresIdade  ,  quantidadeTotalPessoas)

   escreval("___________")
   escreval()

   gerarRelatorioFinal(alturaAcumuladaPessoas, quantidadePessoasMaioresIdade, quantidadePessoasMenoresIdade)

Fimalgoritmo