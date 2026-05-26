#include <stdio.h>

float calcularMedia(float notas[], int quantidadeNotas)
{
    float somaNotas;

    for (int i = 0; i < quantidadeNotas; i++)
    {
        somaNotas += notas[i];
    }

    return somaNotas / quantidadeNotas;
}

int main()
{
    int quantidadeNotas = 4;
    float notas[quantidadeNotas];

    for (int i = 0; i < quantidadeNotas; i++)
    {
        printf("Digite a nota %d: ", i + 1);
        scanf("%f", &notas[i]);
    }

    float media = calcularMedia(notas, quantidadeNotas);

    printf("\n\nMédia do Aluno: %.2f\n", media);
    printf("Situação do Aluno: %s\n\n", media >= 7.0 ? "Aprovado!" : "Reprovado!");
}