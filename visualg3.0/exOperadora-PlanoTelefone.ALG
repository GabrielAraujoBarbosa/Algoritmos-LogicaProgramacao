Algoritmo "operadora"

Var

   // variável valorFixo
   valorPlano : inteiro

   // variável para entrada de dados
   quantidadeMinutosUsadosTelefone : inteiro
   variavelLixo : caractere

   // variavéis para processamento de dados
   minutosExcedidosTelefone : inteiro
   valorPagamento : inteiro
   resumoValorCliente : caractere
Inicio

      // R$50 = Plano Basico -> 100 min telefone
      // se houver +100 min - cada minuto a mais x R$2,00
      // se +100 min -> pagamento = R$50,00 + (quantidadeDeMinutosUltrapasado x R$2,00)

     valorPlano <- 50

      escreval("Operadora de Telefonia GabFibraNet")
      escreval()
      
      escreval("Olá, Você adquiriu o Plano Básico de Telefone!")
      escreval("O Valor Mensal a ser Pago: R$", valorPlano, ",00")
      escreval("Você tem Direito a 100 minutos de Telefone! (mensalmente)")
      
      escreval()
      escreva("(aperte ENTER para prosseguir para a próxima página)")
      leia(variavelLixo)
      
      limpaTela()

      repita
         escreva("Digite a quantidade de minutos de telefone consumida: ")
         leia(quantidadeMinutosUsadosTelefone)

         se (quantidadeMinutosUsadosTelefone <= 0) entao
            limpaTela()
         fimSe
      fimRepita (quantidadeMinutosUsadosTelefone > 0)
      
      se (quantidadeMinutosUsadosTelefone > 100) entao
         minutosExcedidosTelefone <- quantidadeMinutosUsadosTelefone - 100

         valorPagamento <- valorPlano + minutosExcedidosTelefone * 2
         resumoValorCliente <- "(valor do plano + R$2,00 por cada minuto excedido)"
      senao
         valorPagamento <- valorPlano
         resumoValorCliente <- "(valor do plano)"
      fimSe
      
      // operação de saída de dados (mostrando dado processado)
      escreval("O valor a ser pago será de R$", valorPagamento, ",00")
      escreval(resumoValorCliente)

Fimalgoritmo