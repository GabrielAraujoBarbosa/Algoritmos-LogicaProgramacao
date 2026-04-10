Algoritmo "combustivel"

Var

   // variável para entrada de dados
   tipoCombustivelAbastecido : inteiro
   variavelLixo : caractere

   // variáveis para processamento de dados
    // tipos de combustível
   quantidadeAbastecimentosAlcool, quantidadeAbastecimentosGasolina, quantidadeAbastecimentosDiesel : inteiro

Inicio

   // Iniciação de variáveis (para contagem de quantidade)
   quantidadeAbastecimentosAlcool <- 0
   quantidadeAbastecimentosGasolina <- 0
   quantidadeAbastecimentosDiesel <- 0


   // SAÍDA DE DADOS (para poder auxiliar o usuário na ENTRADA)
   escreval()
   escreval("               GABRISHELL               ")
   escreval()
   escreval("----------------------------------------")
   escreval(" COMBUSTÍVEIS PARA ABASTECIMENTO:")
   escreval()
   escreval("  1 - ÁLCOOL")
   escreval("  2 - GASOLINA")
   escreval("  3 - DIESEL")
   escreval("----------------------------------------")
   escreval(" OUTRA OPÇÃO:")
   escreval()
   escreval("  4 - PARA ENCERRAR O PROGRAMA")
   escreval("----------------------------------------")
   escreval()
   escreva(" -> ")
   // OPERAÇÃO DE ENTRADA DE DADOS
   leia(tipoCombustivelAbastecido)
   
   
   // Laço Condicional Pré-Teste controlando: PROCESSAMENTO DE DADOS e SAÍDA/ENTRADA(juntos)
   enquanto (tipoCombustivelAbastecido <> 4) faca // repete enquanto usuário não desejar sair do programa; repete enquanto valor digitado por usuário é diferente de 4

      // Estrutura de Seleção Múltipla controlando: PROCESSAMENTO DE DADOS e SAÍDA DE DADOS
      escolha (tipoCombustivelAbastecido)
         caso 1
            limpaTela()
            quantidadeAbastecimentosAlcool <- quantidadeAbastecimentosAlcool + 1
            escreval(" +1 Automóvel Abastecido com ÁLCOOL!")
            escreval()
            escreval()
         caso 2
            limpaTela()
            quantidadeAbastecimentosGasolina <- quantidadeAbastecimentosGasolina + 1
            escreval(" +1 Automóvel Abastecido com GASOLINA!")
            escreval()
            escreval()
         caso 3
            limpaTela()
            quantidadeAbastecimentosDiesel <- quantidadeAbastecimentosDiesel + 1
            escreval(" +1 Automóvel Abastecido com DIESEL!")
            escreval()
            escreval()
         outrocaso  // qualquer valor diferente de 1,2,3 (não inclui número 4 porque bloco Enquanto, onde está essa estrutura Escolha, não é executado se for 4)
            limpaTela()
            escreval(" Código do Combustível é INVÁLIDO!")
            escreval(" Não houve abastecimento!")
            escreval()
      fimEscolha

      // variávelLixo apenas para representar a digitação de enter
      leia(variavelLixo)

      // SAÍDA DE DADOS Repetida(para poder auxiliar o usuário na ENTRADA)
      limpaTela()
      escreval()
      escreval("               GABRISHELL               ")
      escreval()
      escreval("----------------------------------------")
      escreval(" COMBUSTÍVEIS PARA ABASTECIMENTO:")
      escreval()
      escreval("  1 - ÁLCOOL")
      escreval("  2 - GASOLINA")
      escreval("  3 - DIESEL")
      escreval("----------------------------------------")
      escreval(" OUTRA OPÇÃO:")
      escreval()
      escreval("  4 - PARA ENCERRAR O PROGRAMA")
      escreval("----------------------------------------")
      escreval()
      escreva(" -> ")
      // OPERAÇÃO DE ENTRADA DE DADOS (Repetida)
      leia(tipoCombustivelAbastecido)
   
   fimEnquanto


   // SAÍDA DE DADOS (mostrando os dados processados)
   limpaTela()
   escreval()
   escreval("               GABRISHELL               ")
   escreval()
   escreval("----------------------------------------")
   escreval(" QUANTIDADE DE ABASTECIMENTOS:")
   escreval()
   escreval(" ÁLCOOL   = ", quantidadeAbastecimentosAlcool)
   escreval(" GASOLINA = ", quantidadeAbastecimentosGasolina)
   escreval(" DIESEL   = ", quantidadeAbastecimentosDiesel)
   escreval("----------------------------------------")
   escreval()
   escreval(" MUITO OBRIGADO POR USAR O GABRISHELL!")

Fimalgoritmo