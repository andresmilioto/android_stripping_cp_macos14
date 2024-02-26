#include "test.h"

static constexpr int SIZE = 100000000;
volatile char dummy[SIZE] = {'a'};

void func(void)
{
    return;
}
