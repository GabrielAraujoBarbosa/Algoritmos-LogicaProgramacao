Algoritmo "desafioBar"

Var

   // variáveis para regras de negócio
   precoIngressoHomens, precoIngressoMulheres : real
   precoSalgado, precoBebida, precoDoce : real
   taxaCouvertArtistico : real

   // Variáveis para entrada de dados
   generoCliente : caractere
   quantidadeSalgadosCliente, quantidadeBebidasCliente, quantidadeDocesCliente : inteiro
   variavelLixo : caractere

   // Variáveis para processamento de dados
   valorIngressoEntrada, valorConsumoAlimentos, custoTotal : real
   mensagemCasoCouvertIsento : caractere

Inicio

   // iniciação de valores nas variáveis de negócio
   precoIngressoHomens <- 10.00
   precoIngressoMulheres <- 8.00
   precoSalgado <- 7.00
   precoBebida <- 5.00
   precoDoce <- 3.00
   taxaCouvertArtistico <- 4.00
   
   // SAÍDA DE DADOS Inicial (para introduzir as regras de negócio ao usuário)
   escreval("    RESTAURANTE DO LANCHE    ")
   escreval("-----------------------------")
   escreval()
   escreval(" Tabela de Preços:")
   escreval()
   escreval(" Ingresso de Entrada: R$ ", precoIngressoHomens:4:2, " - Homens | R$ ", precoIngressoMulheres:4:2, " - Mulheres")
   escreval()
   escreval(" Couvert Artístico: R$", taxaCouvertArtistico:4:2, " (taxa zerada se consumo maior R$ 30.00)")
   escreval()
   escreval(" Salgados: R$ ", precoSalgado:4:2)
   escreval()
   escreval(" Bebidas: R$ ", precoBebida:4:2)
   escreval()
   escreval(" Doçes: R$ ", precoDoce:4:2)
   escreval()
   leia(variavelLixo)
   limpaTela()

   // 2 Estruturas de Repetição controlando a: ENTRADA DE DADOS
    // 1ª ER
   enquanto( (generoCliente <> "M") E (generoCliente <> "F") faca
      escreval("    RESTAURANTE DO LANCHE    ")
      escreval("-----------------------------")
      escreval()
      
      escreva(" Seu Gênero (Masculino - M ou Feminino - F): ")
      leia(generoCliente)
      generoCliente <- maiusc(generoCliente)
      escreval()
      
      se (generoCliente <> "M") E (generoCliente <> "F") entao
         limpaTela()
      fimSe
   fimEnquanto
   
    // 2ª ER
   repita
      escreva(" Quantidade de Salgados consumidos: ")
      leia(quantidadeSalgadosCliente)
      escreva(" Quantidade de Bebidas consumidas: ")
      leia(quantidadeBebidasCliente)
      escreva(" Quantidade de Doçes consumidos: ")
      leia(quantidadeDocesCliente)

      se ( (quantidadeSalgadosCliente < 0) OU (quantidadeBebidasCliente < 0) OU (quantidadeDocesCliente < 0) ) entao
         limpaTela()
         escreval("    RESTAURANTE DO LANCHE    ")
         escreval("-----------------------------")
         escreval(" Seu Gênero (Masculino - M ou Feminino - F): ", generoCliente)
         escreval()
      fimSe
   fimRepita(( (quantidadeSalgadosCliente >= 0) E (quantidadeBebidasCliente >= 0) E (quantidadeDocesCliente >= 0)) )
   
   
   // PROCESSAMENTO DE DADOS
    // Cálculo do Consumo de Alimentos
   valorConsumoAlimentos <- (precoSalgado * quantidadeSalgadosCliente) + (precoBebida * quantidadeBebidasCliente) + (precoDoce * quantidadeDocesCliente)

    // Estrutura Condicional para decidir se taxa Couvert Artistico se alterará ou não
   se valorConsumoAlimentos > 30 entao
      taxaCouvertArtistico <- 0
      mensagemCasoCouvertIsento <- "(Isento de Couvert)"
   fimSe

    // Estrutura Condicional para decidir qual valor Ingresso de Entrada a ser pago
   se (generoCliente = "M") entao
      valorIngressoEntrada <- precoIngressoHomens
   senao
      valorIngressoEntrada <- precoIngressoMulheres
   fimSe

    // Cálculo do Preço Integral, soma de tudo que deverá ser pago
   custoTotal <- valorConsumoAlimentos + taxaCouvertArtistico + valorIngressoEntrada

   // SAÍDA DE DADOS (mostrando os dados processados)
   escreval()
   escreval("-----------------------------")
   escreval()
   escreval("")
   escreval()
   escreval(" Valor do Ingresso de Entrada: R$ ", valorIngressoEntrada:4:2)
   escreval(" Valor do Couvert Artístico: R$ ", taxaCouvertArtistico:4:2, " ", mensagemCasoCouvertIsento)
   escreval(" Valor da Alimentação Consumida: R$ ", valorConsumoAlimentos:4:2)
   escreval()
   escreval(" Valor TOTAL a Pagar: R$ ", custoTotal:4:2)
   
   

Fimalgoritmo