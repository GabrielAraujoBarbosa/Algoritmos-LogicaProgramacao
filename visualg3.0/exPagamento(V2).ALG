Algoritmo "pagamento"

Var

   // dados obtidos do funcionário (para entrada de dados)
   nomeCompleto : caractere
   valorHora : real
   horasTrabalhoDia : inteiro
   
   // dados calculado do funcionário (para processamento de dados)
   valorDia, pagamentoMensal : real

Inicio

   // sequência de entrada de dados
   // (usando a saída para o usuário informar o dado desejado)
   escreva("Digite seu nome completo: ")
   leia(nomeCompleto)
   escreva("Digite o valor que recebe por hora: R$")
   leia(valorHora)
   escreva("Digite a quantidade de horas que trabalha por dia: ")
   leia(horasTrabalhoDia)
   
   // sequência de processamento de dados
   valorDia <- valorHora * horasTrabalhoDia
   pagamentoMensal <- valorDia * (30 - 9) // 30 dias - 9 dias de finais de semana

   // sequência de saída de dados
   // (usando as variáveis para a amostragem)
   escreval()
   escreval()
   
   escreval("Olá, ", nomeCompleto, ".")
   escreval("O seu pagamento mensal é de R$", pagamentoMensal:4:2)
   escreval("(Tratando-se de uma média)")

   // (sequência de saída que explica como foi feito o processamento de dados)
   escreval()
   escreval("Trata-se de uma média porque o salário bruto tem variáveis:")
   escreval("Os meses do ano possuem a média de 30 dias. Usamos-a como base.")
   escreval("Também usamos como base que você trabalhou 5 dias por semana.")
   escreval("O seu salário também pode conter benefícios. Isso não é parametrizado.")
   
   escreval()
   escreval("Cálculo:")
   escreval("Quanto recebe por dia = valor da hora x horas trabalhadas por dia")
   escreval("Pagamento mensal = valor do dia x quantidade dias trabalhados no mês")
   

Fimalgoritmo