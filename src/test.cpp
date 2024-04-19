#include "test.h"

static constexpr int SIZE = 16732728; // no fail
// static constexpr int SIZE = 16732729; // fail
volatile char dummy[SIZE] = {'a'};

void func(void)
{
    return;
}
