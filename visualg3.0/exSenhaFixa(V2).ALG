Algoritmo "senha_fixa"

Var

   // Variável para entrada de dados
   senhaDigitadaTentativa : inteiro

   // Variável para processamento de dados
   senhaCofre : inteiro

Inicio

   // Gerando a senha do cofre de dinheiro (Senha Aleatória de 1.000 até 2.000)
   senhaCofre <- randi(1001) + 1000

   // Introdução
   escreval("      BANK OF AMERICA     ")
   escreval(" -------------------------")
   escreval("     PASSWORD 4 DIGITS    ")
   escreval()
   escreval()
   
   // Operação de ENTRADA DE DADOS (junto com SAÍDA)
   escreva(" Enter Password: ")
   // 1ª Leitura (Leitura Padrão)
   leia(senhaDigitadaTentativa)
   
   // Estrutura de Repetição controlando: ENTRADA DE DADOS (operando a mesma leitura acima)
   enquanto (senhaDigitadaTentativa <> senhaCofre) faca // repete enquanto a senha for incorreta
      // Este bloco é executado se a Leitura Padrão ou Leitura Repetida foi de uma senha incorreta
      
      escreval()
      escreval(" Incorrect Password! Try again.")
      escreval()

      escreva(" Enter Password: ")
      // Leitura Repetida
      leia(senhaDigitadaTentativa)
   fimEnquanto


   // SAÍDA DE DADOS (Operação executada quando senha estiver correta)
   escreval()
   escreval("-------------------------")
   escreval()
   escreval(" Access Granted!")
   
Fimalgoritmo