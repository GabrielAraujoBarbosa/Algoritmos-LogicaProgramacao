#include <stdio.h>
#include <stdlib.h>

int main() {

    system("clear");

    int i;

    for (int i = 0; i < 100; i++)
    {
        printf("=");
    }
    printf("\n");

    char firstName[10];
    char lastName[10];
    char email[50];
    int age;

    printf("Digite seu primeiro nome: ");
    fgets(firstName, 10, stdin);

    printf("Digite seu último nome: ");
    fgets(lastName, 10, stdin);

    printf("Digite seu email: ");
    fgets(email, 50, stdin);

    FILE *arquivo = fopen("./cadastro.txt", "w");

    printf("Digite sua idade: ");
    scanf("%d", &age);

    fprintf(arquivo, "Primeiro Nome: %s", firstName);
    fprintf(arquivo, "Último Nome: %s", lastName);
    fprintf(arquivo, "Email: %s", email);
    fprintf(arquivo, "Idade: %d", age);

    fclose(arquivo);
}