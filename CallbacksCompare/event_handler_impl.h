#ifndef EVENT_HANDLER_IMPL_H_
#define EVENT_HANDLER_IMPL_H_
#include "event_handler_abstract.h"

class EventHandlerImpl : public EventHandlerAbstract
{
public:
    EventHandlerImpl() : EventHandlerAbstract() {}
    virtual double sum(const double &x);
};

#endif
