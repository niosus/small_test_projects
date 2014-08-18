#ifndef JAVA_STYLE_CALLBACK
#define JAVA_STYLE_CALLBACK

#include "event_handler_abstract.h"

class JavaStyleCallbackTester
{
public:
    JavaStyleCallbackTester(EventHandlerAbstract* eventHandler)
    {
        _x = 5;
        _eventHandler = eventHandler;
    }
    double sum(const double &x);
    inline double x()
    {
        return _x;
    }

private:
    EventHandlerAbstract* _eventHandler;
    double _x;
};

#endif
