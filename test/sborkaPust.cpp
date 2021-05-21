#include <ctest.h>
#include <libChessDv/sborkaPust1.h>
#include <stdlib.h>

CTEST(ChessPust1, ChessPust2)
{
    char Desk[9][9];
    sborkaPust(Desk);
    int i, j;
    for (i = 2; i < 6; i++) {
        for (j = 1; j < 9; j++) {
            ASSERT_EQUAL(' ', Desk[i][j]);
        }
    }
    ASSERT_EQUAL(' ', Desk[8][0]);
}
