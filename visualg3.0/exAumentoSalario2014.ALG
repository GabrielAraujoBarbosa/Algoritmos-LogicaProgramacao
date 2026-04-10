Algoritmo "aumento"

Var

   // variáveis para entrada de dados
   salarioFuncionario : real
   nomeFuncionario, variavelLixo : caractere
   
   // variáveis para processamento de dados
   valorAcrescentado, novoSalarioFuncionario : real
   porcentagemAumento : inteiro

Inicio

    // REGRAS PARA AUMENTO DE SALÁRIO:
    // A partir de R$ 724,00 e Até R$ 1000,00 - 20%
    // Maior que R$ 1000,00 e até R$ 3000,00 - 15%
    // Maior que R$ 3000,00 e até R$ 8000,00 - 10%
    // Maior que R$ 8000,00 - 5%

   // estrutura de repetição controlando: a entrada de dados (junto com saída)
   enquanto (salarioFuncionario < 724.00) OU ( compr(nomeFuncionario) < 3 ) faca
      escreval(" AUMENTO DE SALÁRIO DE FUNCIONÁRIO 2014")
      escreval(" (salário mínimo de R$ 724.00)")
      escreval()
      escreval("---------------------------------------")
      
      escreva(" Informe o Nome do Funcionário: ")
      leia(nomeFuncionario)

      escreva(" Informe o Salário do Funcionário: R$ ")
      leia(salarioFuncionario)
      
      se (salarioFuncionario < 724.00) OU ( compr(nomeFuncionario) < 3 ) entao
           escreval()
           escreval(" DIGITE UM NOME E SALÁRIO VÁLIDOS!")
           leia(variavelLixo)
           limpaTela()
      fimSe
      
   fimEnquanto
   
   // estrutura condicional composta, com outras aninhadas, controlando: o processamento de dados
   se (salarioFuncionario <= 1000) entao
      porcentagemAumento <- 20
   senao
      se salarioFuncionario <= 3000 entao
         porcentagemAumento <- 15
      senao
         se (salarioFuncionario <= 8000) entao
            porcentagemAumento <- 10
         senao
            porcentagemAumento <- 5
         fimSe
      fimSe
   fimSe
   
    // valor que será adicionado ao salário baseado na porcentagem
   valorAcrescentado <- (porcentagemAumento / 100) * salarioFuncionario

   novoSalarioFuncionario <- salarioFuncionario + valorAcrescentado
   
   // saída de dados (mostrando dados processados)
   escreval()
   escreval("---------------------------------------")
   escreval(" Novos Dados Salariais: ", nomeFuncionario)
   escreval()
    // sequência de dados processados
   escreval(" Porcentagem de Aumento: ", porcentagemAumento, "%")
   escreval(" Valor do Aumento: R$ ", valorAcrescentado:6:2)
   escreval(" Novo Salário: R$ ", novoSalarioFuncionario:6:2)

Fimalgoritmo