#include "sborkaPust1.h"
#include <stdio.h>
#include <stdlib.h>
#include <string>

void sborkaPust(char Desk[9][9])
{
    int i, j;
    for (i = 2; i < 6; i++) {
        for (j = 1; j < 9; j++) {
            Desk[i][j] = ' ';
        }
    }
    Desk[8][0] = ' ';
}