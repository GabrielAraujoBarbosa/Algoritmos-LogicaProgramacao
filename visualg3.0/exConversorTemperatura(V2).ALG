Algoritmo "conversor_celsius_e_Fahrenheit"

Var

   // variáveis para entrada de dados
   temperaturaOrigem : real
   escalaTermometricaEscolhida, escolhaUsuarioRepeteOuNao : caractere

   // variável para processamento de dados
   temperaturaDestino : real
   
Inicio

   // Laço Condicional Pós-Teste controlando: Execução deste Programa de Conversão
   repita // executa pelo menos 1 vez
   
      limpaTela()
      
      // Introdução
      escreval("     Conversor de Temperatura (Celsius e Fahrenheit)    ")
      escreval(" -------------------------------------------------------")
      escreval()
      
      // Laço Condicional Pós-Teste controlando: Solicitação da escala termométrica de origem
      repita // executa pelo menos 1 vez
         escreva(" Qual escala termométrica deseja usar (C ou F)? ")
         leia(escalaTermometricaEscolhida)
         escalaTermometricaEscolhida <- maiusc(escalaTermometricaEscolhida)
         escreval()
      ate ( (escalaTermometricaEscolhida = "C") OU (escalaTermometricaEscolhida = "F") ) // Se necessário, repete da mesma forma até que valor seja C ou F (celsius ou fahrenheit)

      // Solicitação do valor da temperatura de origem
      escreva(" Digite a temperatura em º", escalaTermometricaEscolhida, ": ")
      leia(temperaturaOrigem)

      // Estrutura de Seleção Múltipla controlando: PROCESSAMENTO DE DADOS e SAÍDA DE DADOS
      escolha (escalaTermometricaEscolhida)
         // Caso escala inicial digitada seja Celsius ou Fahrenheit
         caso "C"
            temperaturaDestino <- temperaturaOrigem / 5 * 9 + 32    // conversão
            escreval(" Temperatura equivalente em ºF: ", temperaturaDestino:4:2) // amostra
         caso "F"
            temperaturaDestino <- (temperaturaOrigem - 32) / 9 * 5  // conversão
            escreval(" Temperatura equivalente em ºC: ", temperaturaDestino:4:2) // amostra
         outrocaso
            escreval(" Erro Inesperado. Tente Novamente!")
            // Caso dê algum erro inesperado
      fimEscolha

      // SAÍDA para separação entre conversão e última solicitação
      escreval("___________________________________________")
      escreval()

      // Laço Condicional Pós-Teste controlando: Solicitação para escolha de repetição ou finalização deste Programa de Conversão
      repita // executa pelo menos 1 vez
         escreva(" Deseja digitar uma nova temperatura (s/n)? ")
         leia(escolhaUsuarioRepeteOuNao)
         escolhaUsuarioRepeteOuNao <- minusc(escolhaUsuarioRepeteOuNao)
      ate ( (escolhaUsuarioRepeteOuNao = "s") OU (escolhaUsuarioRepeteOuNao = "n") ) // Se necessário, o mesmo processo é repetido até que valor seja "s" ou "n"

      
   ate (escolhaUsuarioRepeteOuNao = "n") // Este Programa de Conversão repete até que o valor de 'escolhaUsuarioRepeteOuNao' seja igual a "n", ou seja, repete até que usuário não deseje mais repetir


Fimalgoritmo