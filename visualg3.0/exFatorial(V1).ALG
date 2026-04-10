Algoritmo "fatorial"

Var

   // variáveis para entrada de dados
   numeroNatural : inteiro
   variavelLixo : caractere  // apenas para indicar enter

   // variáveis para processamento de dados
   antecessor : inteiro
   resultadofatorial : inteiro


// Realiza a introdução (para mostrar no cabeçalho do programa)
Procedimento introducaoPrograma()
inicio

   escreval("     CALCULADORA DE FATORIAL    ")
   escreval(" -------------------------------")
   escreval()
fimProcedimento

   
Inicio

   // Introdução Inicial
   introducaoPrograma()

   // ENTRADA Inicial (1ª)
   escreva(" Digite um número natural (entre 0 e 15): ")
   leia(numeroNatural)

   // Laço Condicional Pré-Teste controlando: Repetição da ENTRADA (também analisando valor digitado)
   enquanto (numeroNatural < 0) OU (numeroNatural > 15) faca  // Executa enquanto número digitado é inválido (fora do intervalo de 0 a 15)
      // Dando Feedback ao Usuário sobre valor inválido
      escreval()
      escreval(" NÚMERO INVÁLIDO! DIGITE UM NÚMERO NATURAL VÁLIDO!")
      leia(variavelLixo)
      // Limpeza da tela para poder repetir a ENTRADA sem aparecer informações desnecessárias (não aparecer mais o feedback da ENTRADA anterior e também a mesma que foi inválida)
      limpaTela()

      // VOLTANDO TUDO QUE QUERIA CONTINUASSE APARECENDO NA TELA (QUE NÃO PRECISAVA APAGAR)
      // Introdução Repetida
      introducaoPrograma()

      // ENTRADA Repetida
      escreva(" Digite um número natural (entre 0 e 15): ")
      leia(numeroNatural)
   fimEnquanto
   
   // SAÍDA para separação entre: ENTRADA numeroNatural e SAÍDA mostrando resultado
   escreval("____________")
   escreval()

   // Estrutura Condicional Composta analisando número que deseja encontrar Fatorial
   SE (numeroNatural = 0) OU (numeroNatural = 1) entao
      // Quando é 0 ou 1 já sabe-se o resultado. Então, não precisa fazer cálculo

      // Fatorial de 0 e 1 já têm como resultado 1, pois não tem antecessor.
      resultadoFatorial <- 1
   SENAO
      // Já armazenando em resultadoFatorial o número natural que quero achar o Fatorial porque ele é incluido no resultado (NumeroNatural! = NumeroNatural * ...); ele faz parte do resultado
      resultadoFatorial <- numeroNatural

      // Laço Incondicional é usado para multiplicar o que já tem armazenado como resultadoFatorial por antecessor (o que já tem armazenado pode ser o próprio númeroNatural incluido ou multiplicações já feitas dos números)
       // (Laço não executa quando antecessor for 1, porque multiplicação pelo antecessor 1 é desnecessária)
      para antecessor de numeroNatural - 1 ate 2 passo -1 faca
         // Faço a multiplicação do que eu já tenho como resultadoFatorial pelo antecessor
         resultadoFatorial <- resultadoFatorial * antecessor
      fimPara
   FIMSE

   // SAÍDA para amostragem do resultadoFatorial do número de ENTRADA
   escreval(" O fatorial de ", numeroNatural, " é ", resultadoFatorial)
   escreval(" ", numeroNatural, "! = ", resultadoFatorial)

   // SAÍDA para separação entre: a SAÍDA que faz a amostragem do resultado e Fim do Programa
   escreval("____________")
   escreval()

Fimalgoritmo