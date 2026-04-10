Algoritmo "glicose"

Var

   // variável para entrada de dados
   quantidadeGlicosePaciente : real
   
   // variáveis para processamento de dados
   classificacaoGlicemia : caractere
   necessidadeEspecial : caractere

Inicio

   escreval("-------------------- GLICOSÍMETRO --------------------")
   escreval("(Antes de usar é necessário Jejum de 8 até 11 horas)")
   escreval("(Classificação não é aplicável para Gestantes)")
   escreval("------------------------------------------------------")
   
   escreval()
   escreval()
   
   escreva("Informe a quantidade de Glicose (mg/dL): ")
   leia(quantidadeGlicosePaciente)
   
   escreval()
   escreval()
   
   // Glicemia extremamente baixa (Hipoglicemia Extremamente grave) - 13 até 29
   // Glicemia muito baixa (Hipoglicemia Grave) - 30 até 50
   // Glicemia baixa (Hipoglicemia) -  51 até 70
   // Glicemia normal - 71 até 99
   // Glicemia alterada (Pré-diabetes) - 100 até 125
   // Glicemia alta (Diabetes) - 126 até 249
   // Glicemia muito elevada - acima de 249
   
   se (quantidadeGlicosePaciente <= 13) entao
      classificacaoGlicemia <- "Glicemia incompatível com a vida (Morte)"
      necessidadeEspecial <- "Impossível de sobrevivência!"
   senao
      se (quantidadeGlicosePaciente <= 29) entao
         classificacaoGlicemia <- "Glicemia extremamente baixa (Hipoglicemia extremamente grave)"
         necessidadeEspecial <- "Risco de morte fatal, procure intervenção médica urgentemente!"
      senao
         se (quantidadeGlicosePaciente <= 50) entao
            classificacaoGlicemia <- "Glicemia muito baixa (Hipoglicemia grave)"
            necessidadeEspecial <- "Risco de morte, procure intervenção médica urgentemente!"
         senao
            se (quantidadeGlicosePaciente <= 70) entao
               classificacaoGlicemia <- "Baixa Glicema (Hipoglicemia)"
               necessidadeEspecial <- "Busque atendimento médico."
            senao
                 se (quantidadeGlicosePaciente <= 99) entao
                    classificacaoGlicemia <- "Glicemia Normal"
                 senao
                      se (quantidadeGlicosePaciente <= 126) entao
                         classificacaoGlicemia <- "Glicemia Alterada (Pré-diabetes)
                      senao
                         se (quantidadeGlicosePaciente <= 239) entao
                            classificacaoGlicemia <- "Glicemia alta (Diabetes)"
                            necessidadeEspecial <- "Busque atendimento médico."
                         senao
                            classificacaoGlicemia <- "Glicemia muito elevada (Hiper Diabetes)"
                            necessidadeEspecial <- "Risco de morte, procure intervenção médica urgentemente!"
                         fimSe
                      fimSe
                 fimSe
            fimSe
         fimSe
      fimSe
   fimSe
   
   escreval("Classificação da Glicemia: ", classificacaoGlicemia)
   escreval(necessidadeEspecial)
   
   escreval()
   escreval()
   
   escreval("------------------------------------------------------")
   escreval("OBSERVAÇÃO: Glicemia é igual a 'Quantidade de Glicose'")
   
Fimalgoritmo