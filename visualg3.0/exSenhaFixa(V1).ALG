Algoritmo "senha_fixa"

Var

   // variável armazenando dado de segurança
   senhaCorreta : inteiro

   // variável para entrada de dados
   senhaDigitada : inteiro

Inicio

   // Iniciação de variável
   senhaCorreta <- 2002

   // Introdução
   escreval("   USUÁRIO ADMINISTRADOR   ")
   escreval(" --------------------------")
   escreval()
   escreval()

   // Operação de ENTRADA DE DADOS (junto com SAÍDA)
   escreva(" Digite a senha: ")
   // 1ª Leitura (Leitura Padrão)
   leia(senhaDigitada)
   escreval()

   // Estrutura de Repetição controlando: ENTRADA DE DADOS
   enquanto (senhaDigitada <> senhaCorreta) faca // repete enquanto senha for incorreta
      // Este bloco é executado se Leitura Padrão ou Leitura Repetida for senha incorreta
      escreval(" Senha inválida!")
      escreval()
      
      escreva(" Digite a senha: ")
      // Leitura Repetida
      leia(senhaDigitada)
      escreval()
   fimEnquanto

   // SAÍDA DE DADOS (Operação executada só depois que senha estiver correta; quando pular a Estrutura de Repetição)
   escreval("--------------------------")
   escreval()
   escreval(" Acesso Permitido!")

Fimalgoritmo