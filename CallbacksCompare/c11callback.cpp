#include "c11callback.h"

C11CallbackTester::C11CallbackTester()
{
    _x = 5;
}

double C11CallbackTester::Callback(const double &x)
{
    // Does not need an explicit `instance` argument,
    // as `this` is set up properly
    return _x+=x;
}

void EventHandler::addHandler(std::function<double(const double&)> callback)
{
    std::cout << "Handler added..." << std::endl;
    _func = callback;
}
