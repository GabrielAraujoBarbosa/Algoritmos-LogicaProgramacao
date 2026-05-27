#include <stdio.h>
#include <stdlib.h>

void imprimirRetangulo () {

    int quantidadeEspacos = 15;

    for (int linha = 1; linha <= 10; linha++)
    {   
        for (int i = 1; i < quantidadeEspacos; i++)
        {
            printf(" ");
        }
        quantidadeEspacos--;
        
        for (int coluna = 1; coluna <= linha * 2; coluna++)
        {
            printf("#");
        }
        printf("\n");
    }
}

int main() {
    imprimirRetangulo();

    return 0;
}