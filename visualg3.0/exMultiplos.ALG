Algoritmo "multiplos"

Var

   // variáveis para entrada de dados
   numero1, numero2 : inteiro
   variavelLixo : caractere

   // variáveis para processamento de dados
   variavelParaAjusteOrdemNumeros : inteiro
   analiseMultiploPorRestoDivisao : inteiro

   
Inicio

   // entrada de dados através da estrura de repetição (para análise dos numeros da entrada)
   repita
      escreval(" -----------------------")
      escreval("        MULTIPLOS       ")
      escreval(" -----------------------")
      escreval()
      escreval(" ATENÇÃO: DIGITE NÚMEROS MAIORES QUE 1")
      escreval()
      escreval(" (0 é múltiplo de todos os números)")
      escreval(" (Qualquer número é múltiplo de 1)")
      escreval()

      escreval(" -----------------------")
      escreva(" Digite o 1º número: ")
      leia(numero1)
      escreva(" Digite o 2º número: ")
      leia(numero2)
      
      se (numero1 <= 1) OU (numero2 <= 1) entao
         escreval()
         escreval(" DIGITE VALORES VÁLIDOS!")
         leia(variavelLixo)
         limpaTela()
      fimSe
   fimRepita (numero1 > 1) E (numero2 > 1)
   
   // processamento de dados (usando estrutura condicional simples para auxílio na organização dos dados de entrada)
   se numero1 < numero2 entao
      variavelParaAjusteOrdemNumeros <- numero1
      numero1 <- numero2
      numero2 <- variavelParaAjusteOrdemNumeros
   fimSe
   analiseMultiploPorRestoDivisao <- numero1 % numero2

   // saída de dados (usando estrutura condicional composta para mostrar dados processados)
   limpaTela()
   escreval("       RESULTADO        ")
   escreval(" -----------------------")
   escreval()

   se analiseMultiploPorRestoDivisao = 0 entao
      escreval(" ", numero1, " é multiplo de ", numero2)
      analiseMultiploPorRestoDivisao <- int(numero1 / numero2)
      escreval()
      escreval(" ", numero2, " x ", analiseMultiploPorRestoDivisao, " = ", numero1)
   senao
      escreval(" ", numero1, " não é multiplo de ", numero2)
   fimSe
   
Fimalgoritmo