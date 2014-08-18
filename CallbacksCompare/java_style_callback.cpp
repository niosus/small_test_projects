#include "java_style_callback.h"

double JavaStyleCallbackTester::sum(const double &x)
{
    return _x+=_eventHandler->sum(x);
}
