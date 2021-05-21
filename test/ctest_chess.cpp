#define CTEST_CHESS
#include "ctest.h"
#include <ChessDv.cpp>
#include <ChessDvHelper.h>
#include <iostream>
#include <stdio.h>
#include <stdlib.h>
#include <string>

using namespace std;

CTEST(Run_Figur, Run_Peshek)
{
    // Given1
    char dio = '0';
    char pio = '0';
    const int o = 2;
    const int p = 2;
    const int d = 2;
    const int f = 3;
    // When
    main();
    Swap(d, o, f, p);
    main();
    const char* result1 = dio + "0";
    const char* result2 = pio + "0";
    // Then
    const char* expected1 = " ";
    const char* expected2 = "p";

    // Test
    ASSERT_STR(expected1, result1);
    ASSERT_STR(expected2, result2);
    return;
}
