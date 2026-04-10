Algoritmo "DESAFIO-imposto"

Var
// Seção de Declarações das variáveis 
   rendaSalarialAnual, rendaPrestacaoServicosAnual, rendaGanhoCapitalAnual : real
   gastoMedicoAnual, gastoEducacionalAnual : real
   
   // processamento de dados
   rendaSalarialMensal : real
   valorImpostoSalarial, valorImpostoPrestacaoServicos, valorImpostoGanhoCapital : real
   valorImpostoRendaBruto, valorImpostoRendaDevido : real
   gastosDedutiveis, maximoDedutivel, valorAbatimentoImpostoRenda : real

Inicio

   // REGRAS DO IMPOSTO:
    // Imposto Salarial - Porcentagem depende de quanto a pessoa ganha:
     // . Menor que 3000 - Isento | .A partir de 3000 e menor que 5000 - 10% | .De 5000 ou acima - 20%
    //
    // Imposto sobre Renda com Prestação de Serviços - 15%
    // Imposto sobre Renda com Ganho de Capital - 20%
    //
    // Regras Abatimento do Imposto:
     // A pessoa pode diminuir até 30% do imposto, devido gastos médicos ou educacionais
     // Gastos médicos ou Educacionais = Gastos Dedutíveis
     // Imposto é diminuido de acordo com os Gastos Dedutíveis:
      // se Gastos Dedutíveis são maiores do que Valor 30% do imposto, 30% do imposto é o máximo abatido
      // se Gastos Dedutíveis são menores do que Valor 30% do imposto, apenas o valor dos Gastos Dedutiveis será abatido
      
   ////////////////////////////////////////////////////////////////////////

   // ENTRADA DE DADOS
    // Estrutura de Repetição Controlando: 1ª parte da ENTRADA
   repita

      escreval("------------------------------")
      escreval("       IMPOSTO DE RENDA       ")
      escreval("------------------------------")
      escreval()

      escreval(" VALORES DE RENDA ANUAL")
      escreval()
      escreva("  Renda com Salário: R$ ")
      leia(rendaSalarialAnual)
      escreva("  Renda com Prestação de Serviços: R$ ")
      leia(rendaPrestacaoServicosAnual)
      escreva("  Renda com Ganho de Capital: R$ ")
      leia(rendaGanhoCapitalAnual)
      
      // Estrutura Condicional Decidindo Executar Bloco Quando ENTRADAS forem Inesperadas
      se (rendaSalarialAnual < 0) OU (rendaPrestacaoServicosAnual < 0) OU (rendaGanhoCapitalAnual < 0) entao
         limpaTela()
      fimSe
      
   fimRepita (rendaSalarialAnual >= 0) E (rendaPrestacaoServicosAnual >= 0) E (rendaGanhoCapitalAnual >= 0)
   
    // Estrutura de Repetição Controlando: 2ª parte da ENTRADA
   repita
      escreval("------------------------------")
      escreval()
      escreval(" VALORES DE DESPESA ANUAL")
      escreval()
      escreva("  Gastos Médicos: R$ ")
      leia(gastoMedicoAnual)
      escreva("  Gastos Educacionais: R$ ")
      leia(gastoEducacionalAnual)
      escreval("------------------------------")
      escreval()
      
      // Estrutura Condicional Decidindo Executar Bloco Quando ENTRADAS forem Inesperadas
      se (gastoMedicoAnual < 0) OU (gastoEducacionalAnual < 0) entao
         limpaTela()
         escreval("------------------------------")
         escreval("       IMPOSTO DE RENDA       ")
         escreval("------------------------------")
         escreval()

         escreval(" VALORES DE RENDA ANUAL")
         escreval()
         escreval("  Renda com Salário: R$ ", rendaSalarialAnual:4:2)
         escreval("  Renda com Prestação de Serviços: R$ ", rendaPrestacaoServicosAnual:4:2)
         escreval("  Renda com Ganho de Capital: R$ ", rendaGanhoCapitalAnual:4:2)
      fimSe

   fimRepita ( (gastoMedicoAnual >= 0) E (gastoEducacionalAnual >= 0) )
   
   // PROCESSAMENTO DE DADOS
    // Cálculos Baseados na Entrada
   rendaSalarialMensal <- rendaSalarialAnual / 12
   gastosDedutiveis <- gastoMedicoAnual + gastoEducacionalAnual

    // Análise Renda Salarial
   se (rendaSalarialMensal >= 5000) entao
      // 20% da da renda é cobrada
      valorImpostoSalarial <- (20 / 100) * rendaSalarialAnual
   senao
      se (rendaSalarialMensal >= 3000) entao
         // 10% da renda é cobrada
         valorImpostoSalarial <- (10 / 100) * rendaSalarialAnual
      fimSe
   fimSe // menor que 3000 = isento
   
    // Análise Renda Prestação Serviços
   se (rendaPrestacaoServicosAnual > 0) entao // se houve ganho
      // 15% da renda é cobrada
      valorImpostoPrestacaoServicos <- (15 / 100) * rendaPrestacaoServicosAnual
   fimSe

    // Análise Renda Ganho Capital
   se (rendaGanhoCapitalAnual > 0) entao // se houve ganho
      // 20% da renda é cobrada
      valorImpostoGanhoCapital <- (20 / 100) * rendaGanhoCapitalAnual
   fimSe
   
    // Cálculo Valor Total Imposto Renda (sem abatimentos)
   valorImpostoRendaBruto <- valorImpostoSalarial + valorImpostoPrestacaoServicos + valorImpostoGanhoCapital

   // Cálculo para obter 30% do Imposto Bruto (valor máximo que pode ser abatido caso tenha gastos dedutiveis)
   maximoDedutivel <- (30 / 100) * valorImpostoRendaBruto

   // Análise do valor Máximo que pode ser abatido com os gastos dedutiveis
   se (gastosDedutiveis < maximoDedutivel) entao
      // Se Gastos Dedutiveis foram menores do que 30% do imposto, somente o valor gasto será abatido
      valorAbatimentoImpostoRenda <- gastosDedutiveis
   senao
      // Se Gastos Dedutiveis foram maiores do que 30% do imposto, ou igual a 30%, o valor máximo de 30% será abatido
      valorAbatimentoImpostoRenda <- maximoDedutivel
   fimSe
   
   // Cálculo Valor Imposto Renda Com Abatimento (conforme Regras de Abatimento)
   valorImpostoRendaDevido <- valorImpostoRendaBruto - valorAbatimentoImpostoRenda
   
   // SAÍDA DE DADOS (mostrando dados processados)
   escreval("||||||||||||||||||||||||||||||")
   escreval()
   escreval("------------------------------")
   escreval("          RELATÓRIO           ")
   escreval("------------------------------")

   escreval()
    // 1ª Parte
   escreval(" CONSOLIDADO DE RENDA")
   escreval()
   escreval("  Imposto sobre o Salário: R$ ", valorImpostoSalarial:4:2)
   escreval("  Imposto sobre a Prestação de Serviços: R$ ", valorImpostoPrestacaoServicos:4:2)
   escreval("  Imposto sobre o Ganho de Capital: R$ ", valorImpostoGanhoCapital:4:2)
   escreval("------------------------------")
   
   escreval()
    // 2ª Parte
   escreval(" DEDUÇÕES")
   escreval()
   escreval("  Máximo Dedutível: R$ ", maximoDedutivel:4:2)
   escreval("  Gastos Dedutíveis: R$ ", gastosDedutiveis:4:2)
   escreval("------------------------------")
   
   escreval()
    // 3ª Parte
   escreval(" RESUMO")
   escreval()
   escreval("  Imposto de Renda Bruto: R$ ", valorImpostoRendaBruto:4:2)
   escreval("  Abatimento do Imposto: R$ ", valorAbatimentoImpostoRenda:4:2)
   escreval("  Imposto de Renda Devido: R$ ", valorImpostoRendaDevido:4:2)
   escreval("------------------------------")
   
Fimalgoritmo