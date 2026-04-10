Algoritmo "tempo_de_jogo"

Var

   // variáveis para entrada de dados
   horaInicioJogo, horaTerminoJogo : inteiro
   variavelLixo : caractere

   // variável para processamento de dados
   duracaoTempoJogo : inteiro

Inicio

   // REGRA PARA DADOS DE ENTRADA:
   // Hora pontual sem os caracteres ':00'
   // . Exemplo: '16:00' É incorreto. '16' está correto!

   // Estrutura de repetição controlando: a entrada de dados (junto com saída)
   repita
      escreval(" DURAÇÃO DO DESAFIO DE PROGRAMAÇÃO")
      escreval()
      escreval(" Mínimo de 1 Hora e Máximo de 24 Horas")
      escreval()
      escreval("-------------------------------------")
      escreva(" Hora em que o desafio inicia: ")
      leia(horaInicioJogo)
      escreva(" Hora em que o desafio termina: ")
      leia(horaTerminoJogo)
      
      se (horaInicioJogo < 0) OU (horaInicioJogo > 23) OU (horaTerminoJogo < 0) OU (horaTerminoJogo > 23) entao
         escreval()
         escreval(" DIGITE UMA HORA VÁLIDA NOS DOIS CAMPOS! (DE 00 A 23)")
         leia(variavelLixo)
         limpaTela()
      fimSe
      
   fimRepita (horaInicioJogo >= 0) E (horaInicioJogo <= 23) E (horaTerminoJogo >= 0) E (horaTerminoJogo <= 23)

   // REGRAS PARA PROCESSAMENTO DE DADOS:
   // . Jogos podem iniciar e terminar em qualquer horário
   // . Jogos tem a duração mínima de 1 hora e máxima de 24 horas

   // Estrutura condicional composta (com outras mesmas encadeadas) controlando: o processamento de dados
   se (horaInicioJogo < horaTerminoJogo) entao
      // jogo precisou de uma parte de tempo de um único dia para terminar:
      duracaoTempoJogo <- horaTerminoJogo - horaInicioJogo
   senao
      se (horaInicioJogo > horaTerminoJogo) entao
         // jogo acabou às meia-noite do 2º dia ou precisou de uma parte de tempo de 2 dias (virando a madrugada):
         //                     duracaoTempoDia1º  +   duracaoTempoDia2º
         duracaoTempoJogo <- (24 - horaInicioJogo) + (horaTerminoJogo - 0)
      senao
         // duração de 24 horas para terminar, podendo ter sido usado 1 dia inteiro ou partes de 2 dias (usando obrigatoriamente a madrugada nos 2 casos):
         duracaoTempoJogo <- 24 // horas são iguais, mas equivalem a dias diferentes (então são 24 horas)
   fimSe
   
   // Estrutura condicional composta controlando: a saída de dados (mostrando o dado processado)
   escreval()
   escreval("-------------------------------------")

   se (duracaoTempoJogo = 1) entao
      escreval(" O Desafio Durou Por ", duracaoTempoJogo, " Hora!")
   senao
      escreval(" O Desafio Durou Por ", duracaoTempoJogo, " Horas!")
   fimSe
   
Fimalgoritmo