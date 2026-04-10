Algoritmo "pagamento"

Var

   // variavéis para armazenar o dado obtido (entrada)
   nome : caractere
   valorHora : real
   horasTrabalhadas : inteiro
   
   // dado calculado (processamento)
   valorPagamento : real

Inicio

   // saída de dados
   escreva("Informe o nome do funcionário: ")

   // entrada de dados
   leia(nome)

   // saída de dados
   escreva("Informe o valor que recebe por hora: ")

   // entrada de dados
   leia(valorHora)
   
   // saída de dados
   escreva("Informe a quantidade de horas trabalhadas: ")

   // entrada de dados
   leia(horasTrabalhadas)
   
   // processamento de dados
   valorPagamento <- horasTrabalhadas * valorHora
   
   // sequência de saída de dados
   escreval()
   escreval("O pagamento do funcionário ", nome, " é de R$", valorPagamento:4:2)
   
   
   

Fimalgoritmo