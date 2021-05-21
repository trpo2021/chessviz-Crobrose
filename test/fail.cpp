#define FAIL
#include "ctest.h"
#include <iostream>
#include <stdio.h>
#include <stdlib.h>
#include <string>

CTEST_SKIP(const, test_skip)
{
    ASSERT_FAIL();
}
