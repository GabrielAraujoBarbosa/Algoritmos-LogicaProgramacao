Algoritmo "notas"

Var

   nota1, nota2, notaFinal : real

Inicio

   repita
      escreva("Digite a primeira nota (0 até 50): ")
      leia(nota1)
   fimRepita((nota1 >= 0) E (nota1 <= 50))
   
   repita
      escreva("Digite a segunda nota (0 até 50): ")
      leia(nota2)
   fimRepita ((nota2 >= 0) E (nota2 <= 50))

   notaFinal <- nota1 + nota2
   
   escreval("Sua nota final: ", notaFinal:3:1)
   
   se notaFinal < 60 entao
      escreval("Infelizmente você está REPROVADO!")
   senao
      escreval("Ótimo! Felizmente você foi APROVADO!")
   fimse


Fimalgoritmo