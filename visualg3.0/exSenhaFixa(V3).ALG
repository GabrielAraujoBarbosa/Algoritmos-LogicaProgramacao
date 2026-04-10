Algoritmo "senha_fixa"

Var

   // variável armazenando dado de segurança
   senhaCorreta : inteiro

   // variável para entrada de dados
   senhaDigitada : inteiro
   
   // variável para processamento de dados
   tentativas : inteiro

Inicio

   // Iniciação de variáveis
   tentativas <- 0
   senhaCorreta <- 2002

   // Introdução
   escreval("   USUÁRIO ADMINISTRADOR   ")
   escreval(" --------------------------")
   escreval()
   escreval()

   // Estrutura de Repetição controlando: ENTRADA DE DADOS e PROCESSAMENTO DE DADOS
    // (Ela sempre executa, intencionalmente, pelo menos 1 vez por causa da diferença entre os 2 valores)
   enquanto (senhaDigitada <> senhaCorreta) faca // repete enquanto senha for incorreta
      // Estrutura Condicional Simples para analisar se já houve tentiva de acertar a senha
      se (tentativas <> 0) entao // se já ocorreu alguma tentativa; se ocorreu leitura
         escreval(" Senha inválida!")
         escreval()
      fimSe
      
      escreva(" Digite a senha: ")
      leia(senhaDigitada)
      escreval()
      
      // Realização da contagem de leituras feitas (tentativas) - sempre somando 1 ao ocorrer leitura
      tentativas <- tentativas + 1
   fimEnquanto

   // SAÍDA DE DADOS (Operação executada só depois que senha estiver correta; quando pular a Estrutura de Repetição)
   escreval(" Acesso Permitido!")

Fimalgoritmo