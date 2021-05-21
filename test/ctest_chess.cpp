#define CTEST_CHESS
#include <stdio.h>
#include <stdlib.h>
#include <iostream>
#include <string>
#include "ctest.h"
#include <ChessDv.cpp>
#include <ChessDvHelper.h>

using namespace std;


int main1(int argc, const char** argv)
{
	cout << "falied";
    return main1(argc, argv);
}

CTEST_SKIP(const, test_skip)
{
    ASSERT_FAIL();
}

CTEST(Run_Figur, Run_Peshek)
{
	// Given
	char dio = '0';
	char pio = '0';
	const int o = 2;
    const int p = 2;   
    const int d = 2;
    const int f = 3;    
    // When
    main();
    Swap(d,o,f,p);
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
