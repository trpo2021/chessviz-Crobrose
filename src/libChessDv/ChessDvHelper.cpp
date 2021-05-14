#include "ChessDvHelper.h"
#include <stdio.h>
#include <stdlib.h>
#include <string>
void Sborka_Tabl(char Desk[9][9])
{
    int i, j;
    for (i = 0; i < 9; i++) {
        for (j = 0; j < 9; j++) {
            printf("%c ", Desk[i][j]);
        }
        printf("\n");
    }
}
