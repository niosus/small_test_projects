#ifndef C11CALLBACK_H_
#define C11CALLBACK_H_

#include <functional>
#include <iostream>

class EventHandler
{
private:
    std::function<double(const double &)> _func;

public:
    inline void process(const double &i) const
    {
        // event occurred
        _func(i);
    }
    void addHandler(std::function<double(const double &)> callback);
};

class C11CallbackTester
{
public:
    C11CallbackTester();
    double Callback(const double &x);
    inline double x()
    {
        return _x;
    }
private:
    double _x;
};

#endif
